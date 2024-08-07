

import EEmb_MemAlloc, EEmb_MemFree from EEmbCore

import string from EEmbCore

import Println from EEmbCore

import EEmb_Panic from EEmbCore


let EMPTY_TIMER_HANDLE = mk SharedResource{ ptr: null }



struct Timer {

	tmrHandle: mut &SharedResource

	func start(self: &Timer) {
		ASSERT(self.tmrHandle.ptr, "Error: Using deleted timer")
		xTimerStart(self.tmrHandle.ptr)
	}

	func runDetach(self: &Timer) {
		self.start()
		self.tmrHandle.linksCount++
	}

	func pause(self: &Timer) {
		ASSERT(self.tmrHandle.ptr, "Error: Using deleted timer")
		xTimerStop(self.tmrHandle.ptr)
		DelayMs(10)
	}

	func stop(self: &Timer) {
		self.pause()
		self.reset()
	}

	func isActive(self: &Timer) -> bool {
		ASSERT(self.tmrHandle.ptr, "Error: Using deleted timer")
		return xTimerIsTimerActive(self.tmrHandle.ptr)
	}

	func changePeriod(self: &Timer, newPeriod_ms: uint32) {

		let isActive = self.isActive()

		xTimerChangePeriod(self.tmrHandle.ptr, newPeriod_ms)

		if (!isActive) {
			self.pause()
		}

	}

	func delete(self: &Timer) {

		ASSERT(self.tmrHandle.ptr, "Error: Using deleted timer")
		
		xTimerDelete(self.tmrHandle.ptr)

		self.tmrHandle.ptr = null

	}

	func reset(self: &Timer) {
		
		let isActive = self.isActive()

		xTimerReset(self.tmrHandle.ptr)

		if (!isActive) {
			//Println("pause")
			self.pause()
		}

	}

	// func getUserData(self: &Timer) -> pointer {
	// 	ASSERT(self.tmrHandle.ptr, "Error: Using deleted timer")
	// 	return pvTimerGetTimerID(self.tmrHandle.ptr)
	// }


	// func setUserData(self: &Timer, userData: pointer) {
	// 	ASSERT(self.tmrHandle.ptr, "Error: Using deleted timer")
	// 	vTimerSetTimerID(self.tmrHandle.ptr, userData)
	// }

	func getUserData(self: &Timer) -> pointer {
		ASSERT(self.tmrHandle.ptr, "Error: Using deleted timer")
		return pcTimerGetName( self.tmrHandle.ptr )
	}


	func setUserData(self: &Timer, userData: pointer) {
		ASSERT(self.tmrHandle.ptr, "Error: Using deleted timer")
		pcTimerSetName(self.tmrHandle.ptr, userData)
	}

	// func enableAutoReload(self: &Timer) {
	// 	ASSERT(self.tmrHandle.ptr, "Error: Using deleted timer")
	// 	vTimerSetReloadMode( self.tmrHandle.ptr, true )
	// }

	// func disableAutoReload(self: &Timer) {
	// 	ASSERT(self.tmrHandle.ptr, "Error: Using deleted timer")
	// 	vTimerSetReloadMode( self.tmrHandle.ptr, false )
	// }

	//func isAutoReload(self: &Timer) -> bool {
	//	ASSERT(self.tmrHandle.ptr, "Error: Using deleted timer")
	//	return xTimerGetReloadMode( self.tmrHandle.ptr )
	//}

	func getPeriod(self: &Timer) -> uint32 {
		ASSERT(self.tmrHandle.ptr, "Error: Using deleted timer")
		return xTimerGetPeriod( self.tmrHandle.ptr )
	}

	func getExpiryTime(self: &Timer) -> uint32 {
		ASSERT(self.tmrHandle.ptr, "Error: Using deleted timer")
		return xTimerGetExpiryTime( self.tmrHandle.ptr )
	}

	func getId(self: &Timer) -> int32 {
		return self.tmrHandle.id
	}

	func setId(self: &Timer, id: int32) {
		self.tmrHandle.id = id
	}

	func invokeCallback(self: &Timer) {
		if self.tmrHandle.callback == null {
			return
		}
		self.tmrHandle.callback(self)
	}

	func setCallback(self: &Timer, callback: func {(&Timer)}) {
		self.tmrHandle.callback = callback
	}


	func OperatorDestroy(self: &Timer) {

		if (#self.tmrHandle == #EMPTY_TIMER_HANDLE) {
			//Println("Skip Destroy")
			return
		}

		//let ptrAddr: uint32 = #(self.tmrHandle)
		//Println("Timer destroyed: " + ptrAddr)
		
		self.tmrHandle.linksCount--

		//Println("Links: " + self.tmrHandle.linksCount)
		
		if !self.tmrHandle.linksCount {
			if self.tmrHandle.ptr != null {
				self.delete()
			}
			//Println("Timer shared resource is destroyed: " + ptrAddr)
			MemFree(self.tmrHandle)
			//self.tmrHandle <- null
		}

	}

	func OperatorCopy(rval: &Timer) {

		self.OperatorDestroy()

		self.tmrHandle <- rval.tmrHandle
		self.tmrHandle.linksCount++
	}

	func OperatorClone(self: &Timer) -> Timer {


		let tmr = mk Timer{tmrHandle: self.tmrHandle}

		if (#self.tmrHandle == #EMPTY_TIMER_HANDLE) {
			tmr.tmrHandle.linksCount++
		}

		return tmr
	}


}

struct Timer_t {
	tmrHandle: mut &SharedResource
}


struct SharedResource {
	ptr: pointer
	callback: func {(&Timer)}
	linksCount: uint16
	id: int16
}

func CreateTimer() -> Timer {
	let tmr = mk Timer{tmrHandle: #EMPTY_TIMER_HANDLE}
	return tmr
}



func RTOS_timerCallback(tmrHandle: pointer) {
	let sr: mut &SharedResource = pvTimerGetTimerID(tmrHandle)
	if sr.callback == null {
		return
	}
	var tmr = mk Timer_t{tmrHandle: sr}
	let tmrPtr: &Timer = #tmr
	sr.callback(tmrPtr)
}

func CreateTimer(id: int32, period: uint32, callback: func {(&Timer)}) -> Timer {
	

	let sr = MemAlloc(SizeOf($SharedResource$))
	let tmr = mk Timer{tmrHandle: sr}
	tmr.tmrHandle.linksCount = 1
	tmr.tmrHandle.id = id
	tmr.tmrHandle.callback = callback

	let tmrHandle = xTimerCreate(null, period, true, sr, RTOS_timerCallback)
	tmr.tmrHandle.ptr = tmrHandle

	// let ptrAddr: uint32 = #(tmr.tmrHandle)
	// Println("Timer created at: " + ptrAddr)

	return tmr

}


func CreateTimer(id: int32, period: uint32, isAutoReload: bool, userData: pointer, callback: func {(&Timer)}) -> Timer {

	let sr = MemAlloc(SizeOf($SharedResource$))
	let tmr = mk Timer{tmrHandle: sr}
	tmr.tmrHandle.linksCount = 1
	tmr.tmrHandle.id = id
	tmr.tmrHandle.callback = callback

	let tmrHandle = xTimerCreate(userData, period, isAutoReload, sr, RTOS_timerCallback)
	tmr.tmrHandle.ptr = tmrHandle

	// let ptrAddr: uint32 = #(tmr.tmrHandle)
	// Println("Timer created at: " + ptrAddr)

	return tmr

}


func DeferredInvoke(period: uint32, userData: pointer, callback: func {(pointer)}) {
	
	let tmr = xTimerCreate(userData, period, true, callback, $(tmrHandle) {

		let deferredCall: func {(pointer)} = pvTimerGetTimerID(tmrHandle)
		let userData: pointer = pcTimerGetName(tmrHandle)

		deferredCall(userData)

		xTimerDelete(tmrHandle)

	})

	xTimerStart(tmr)

}





let X_TIMER_TICKS_TO_WAIT = 1000

enum {
	tmrCOMMAND_EXECUTE_CALLBACK_FROM_ISR 	= -2,
	tmrCOMMAND_EXECUTE_CALLBACK				= -1,
	tmrCOMMAND_START_DONT_TRACE				= 0,
	tmrCOMMAND_START					    = 1,
	tmrCOMMAND_RESET						= 2,
	tmrCOMMAND_STOP							= 3,
	tmrCOMMAND_CHANGE_PERIOD				= 4,
	tmrCOMMAND_DELETE						= 5
}


extern demangle func xTimerGenericCommand( pointer, uint32, uint32, pointer, uint32 ) -> uint32
extern demangle func xTimerCreate( c_string, uint32, bool, pointer, func { (pointer) } ) -> pointer
extern demangle func  xTimerIsTimerActive( pointer ) -> uint32
extern demangle func xTimerGetPeriod( pointer ) -> uint32
extern demangle func pcTimerGetName( pointer ) -> pointer
extern demangle func xTimerGetExpiryTime( pointer ) -> uint32
extern demangle func xTaskGetTickCount( ) -> uint32
extern demangle func pvTimerGetTimerID( pointer ) -> pointer
extern demangle func vTimerSetTimerID( pointer, pointer )
extern demangle func vTimerSetReloadMode( pointer, uint32 )
extern demangle func xTimerGetReloadMode( pointer ) -> uint32
extern demangle func pcTimerSetName( pointer, pointer )

func xTimerStart( xTimer: pointer ) { 
	let result = xTimerGenericCommand( ( xTimer ), tmrCOMMAND_START, ( xTaskGetTickCount() ), 0, ( X_TIMER_TICKS_TO_WAIT ) )
	ASSERT(result, "Error: Timer task is not responding")
}

func xTimerStop( xTimer: pointer ) {
	let result = xTimerGenericCommand( ( xTimer ), tmrCOMMAND_STOP, 0, 0, ( X_TIMER_TICKS_TO_WAIT ) )
	ASSERT(result, "Error: Timer task is not responding")
}

func xTimerChangePeriod( xTimer: pointer, xNewPeriod: uint32)  {
	let result = xTimerGenericCommand( ( xTimer ), tmrCOMMAND_CHANGE_PERIOD, ( xNewPeriod ), 0, ( X_TIMER_TICKS_TO_WAIT ) )
	ASSERT(result, "Error: Timer task is not responding")
}

func xTimerDelete( xTimer: pointer )  {
	let result = xTimerGenericCommand( ( xTimer ), tmrCOMMAND_DELETE, 0, 0, ( 0 ) )
	ASSERT(result, "Error: Timer task is not responding")
}

func xTimerReset( xTimer: pointer )  {
	let result = xTimerGenericCommand( ( xTimer ), tmrCOMMAND_RESET, ( xTaskGetTickCount() ), 0, ( X_TIMER_TICKS_TO_WAIT ) )
	ASSERT(result, "Error: Timer task is not responding")
}

