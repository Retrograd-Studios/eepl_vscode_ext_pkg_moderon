
import * from EEmbCore


import EEmbDisplay as Display
import EEmbWatchdogs  as IWDG
import EEmbMessages as MSG

import EEmbTimers as Timer

CreateFont(new_font12, "./res/font_narrow.ttf", 14)


var timers = [
	/*
		Create empty struct Time (mk Timer{_}) is forbidden. 
		Use 'CreateTimer()' instead of it.
	*/ 
	Timer::CreateTimer(),
	Timer::CreateTimer(),
	Timer::CreateTimer(),
	Timer::CreateTimer()
]

struct TimerUserData {
	name: c_string
	ticks: uint32
}

var timersData = [
	mk TimerUserData{ name: "Timer(1)" },
	mk TimerUserData{ name: "Timer(2)" },
	mk TimerUserData{ name: "Timer(3)" },
	mk TimerUserData{ name: "Timer(4)" }
]





func init() {	

	GUI_setDraw(MainScreen)

	Display::DisplaySetAutoBrights(99, 15, 5)

	IWDG::IWDG_setTimeout(100) 

	/*
		Create timers and save to array
	*/
	for i, timer in timers {
		
		/*
			args: id, period_ms, isAutoReload, userData, callback)
		*/
		timer = Timer::CreateTimer(i, (i+1)*10000, true, timersData[i], $(timerPtr) {
			
			let userData: mut &TimerUserData = timerPtr.getUserData()
			userData.ticks++

			//Println(userData.name + ": "+userData.ticks)

			//-- args: message, duration_ms
			MSG::ShowNote(userData.name + ": "+userData.ticks, 2000)
		})
		timer.start()
	}

}




func loop() {


	DelayMs(250)

	IWDG::IWDG_reload()

}




var newTimersCount = 0




var massTimersCount = 100 


func MainScreen(ctx: &EG_userContext_t) {



	GUI_createContext() $$


	set_font(new_font12) $$

	

	layout(80, 1) $ 
	{
		list(20, true) $
		{

			row(false, 1) $
			{
				/* 

					The Timer is alive while there is at least one reference to it.
					It call method 'runDetach()' to prevent Destroy the Timer.
				
				*/
				button("Create Infinite timer", COLOR_WHITE, 0, $(e) {
					if e {
						newTimersCount++
						Timer::CreateTimer(newTimersCount, 3000, $(timer) {

							Println("Infinite Timer(" + timer.getId() + ") Callback")
							//MSG::ShowNote("Infinite Timer(" + timer.getId() + ") Callback", 300)

						}).runDetach()
					}
				}) $$
			}

			row(false, 1) $
			{

				button("Deferred Invoke", COLOR_WHITE, 0, $(e) {
					
					if e {
						//-- It's called once and die
						Timer::DeferredInvoke(5000, "[Some User Data]", $(userData) {
							let str: c_string = userData
							Println("DeferredInvoke Callback: " + str)
							//MSG::ShowNote("DeferredInvoke Callback: " + str, 300)
						})
					}
					
				}) $$
			}

			row(false, 1) $
			{

				button("Stop Global Timers", COLOR_WHITE, 0, $(e) {
					
					if e {
						for timer in timers {
							timer.stop()
						}
					}
					
				}) $$
			}

			row(false, 1) $
			{

				button("Start Global Timers", COLOR_WHITE, 0, $(e) {
					
					if e {
						for timer in timers {
							timer.start()
						}
					}
					
				}) $$
			}


			row(false, 2) $
			{
				input_int(massTimersCount, 1, 1000, GUI_ALIGN_CENTER, true) $$
				button("Add Timers", COLOR_WHITE, 0, $(e) {

					if e {

						for i in 1 to massTimersCount {

							Timer::CreateTimer(i, i*1000, $(timer) {
							
								var sum = 0
								for i in 1 to 100 {
									sum += i
								}

								Println("Still one Infinite Timer(" + timer.getId() + ") Callback")
								
								if timer.getId() == 100 {
									//-- args: title, message, button callback
									MSG::ShowAlert("Info: ", "100", $(e) {
									})
								}
	
							}).runDetach()

						}

					}
					
				}) $$
			}
			
		}
	}

	layout(20, [50, 50]) $
	{
		label("Free Heap: ", GUI_ALIGN_CENTER) $$
		var freeHeap = MemGetFreeHeapSize() / 1024.f
		set_unit(" KB") $$
		input_float(freeHeap, 0, 10000, 3, GUI_ALIGN_CENTER, false) $$
	}


}