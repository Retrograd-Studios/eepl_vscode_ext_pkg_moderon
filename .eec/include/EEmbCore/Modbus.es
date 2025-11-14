
enum  {
	MB_SLAVE_ID = 0,
	MB_MASTER_ID,
	MB_ROLE_COUNT
}


enum  {
	MB_L_HOLDING = 0,
	MB_L_INPUT,
	MB_L_DO,
	MB_L_DI,
	MB_REM_HOLDING, //4
	MB_REM_INPUT, //5
	MB_REM_DO, //6
	MB_REM_DI, //7
	MB_REG_TYPE_COUNT
}

enum {
	MB_ERROR_NO = 0,
	MB_ERROR_FUNC_NOTFOUND,
	MB_ERROR_ILLEGAL_ADDR,
	MB_ERROR_ILLEGAL_DATA,
	MB_ERROR_END_STANDART_ERROR,
	MB_ERROR_TIMEOUT = 0x0B,
	MB_ERROR_CRC
}

enum {
	MB_BIG_ENDIAN_WORDS = 0,
	MB_LITTLE_ENDIAN,
	MB_BIG_ENDIAN,
	MB_BE_SEQ_LE_WORDS
}



struct ModbusCRegGroup_t {
	regs: pointer
	startAddr: uint16
	count: uint16
	isLast: uint8
}


struct ModbusIRegGroup_t {
	regs: pointer
	startAddr: uint16
	count: uint16
	valSize: uint8
	endianTp: uint8
	isSigned: uint8
}

struct ModbusHRegGroup_t {
	regs: pointer
	ranges: &uint16
	startAddr: uint16
	count: uint16
	valSize: uint8
	endianTp: uint8
	isSigned: uint8
}

struct ModbusRemoteGrpReg_t {
	regs: pointer
	startAddr: uint16
	count: uint16
	regTp: uint8
	valSize: uint8
	endianTp: uint8
	isSigned: uint8
}

struct ModbusRemoteRegTable_t {
	regs: &ModbusRemoteGrpReg_t
	count: uint32
}






struct ModbusRemModuleBase_t {
	connectionRestoreCallback: func { (mut &ModbusRemModuleBase_t) }
	errorCallback: func { (mut &ModbusRemModuleBase_t, uint32, uint16) }
	changedRegValueCallback: func { (&EEmb_modbus_remote_reg_t) -> uint8 }
	regsMemPtr: mut &uint16
	modbusRegsGrps: &ModbusRemoteGrpReg_t 
	modbusRegsGrpsSize: uint32
	comPort: uint32
	interval: uint32 = 1000
	interval2: uint32 = 10000
	timeout: uint32 = 100
	ticks: uint32
	errors: uint32
	devAddr: uint16 = 1
	reqTryCount: uint8 = 3
	isEnabled: uint8 = 1
	packSize: uint8
	isHoldingsRead: uint8 = 1
	isAutoRead: uint8 = 1
	isShowMessages: uint8 = 1
	isMultipleWrite: uint8 = 1
	isAbortWriteWhileNoChanges: uint8
	isAbortWriteWhileReadErr: uint8
}

// struct EEmb_modbus_remote_regs_template_t {
// 	reg: EEmb_modbus_remote_reg_t
// }


// func GetRemRegAtIndex(devPtr: pointer, index: uint32) -> &EEmb_modbus_remote_reg_t {

// 	let devBasePtr: mut &ModbusRemModuleBase_t = devPtr
// 	//let firstReg: &EEmb_modbus_remote_reg_t = devBasePtr.regs
// 	//let reg: &EEmb_modbus_remote_reg_t = #firstReg + index*SizeOf($EEmb_modbus_remote_reg_t$)
	
// 	let table: &EEmb_modbus_remote_regs_template_t = devBasePtr.regs
	
// 	//let reg: &EEmb_modbus_remote_reg_t = #table.reg + index*SizeOf($EEmb_modbus_remote_reg_t$)
// 	//return reg
	
// 	let reg = #table.reg + index*SizeOf($EEmb_modbus_remote_reg_t$)
	

// 	return reg
// }


// func GetRemRegAtAddr(devPtr: pointer, addr: uint32) -> &EEmb_modbus_remote_reg_t {

// 	let devBasePtr: mut &ModbusRemModuleBase_t = devPtr
// 	let table: &EEmb_modbus_remote_regs_template_t = devBasePtr.regs
	
// 	let endReg = #table.reg + 255*SizeOf($EEmb_modbus_remote_reg_t$)
// 	var reg = #table.reg 
	
// 	while reg < endReg {
	
// 		let reg0: &EEmb_modbus_remote_reg_t = reg
		
// 		if reg0.regAddr == addr {
// 			return reg
// 		}
		
// 		reg += SizeOf($EEmb_modbus_remote_reg_t$)
	
// 	}
	
// 	return reg


// }


// func GetNextRemReg(reg: EEmb_modbus_remote_reg_t) -> &EEmb_modbus_remote_reg_t {
// 	let nextReg = #reg + SizeOf($EEmb_modbus_remote_reg_t$)
// 	return nextReg
// }


struct EEmb_modbus_reg_t {

	ptr: pointer
	valSize: uint8
	isSigned: uint8


	func OperatorMake(self: &EEmb_modbus_local_h_t) -> EEmb_modbus_reg_t {
		let regGrp = MB_GET_HOLDING_REG_GRP_FROM_PTR(self.ptr)
		// let pData = MB_GET_ACTUAL_DATA_PTR(self.ptr)
		return { ptr: self.ptr, valSize: regGrp.valSize, isSigned: regGrp.isSigned }
	}

	func OperatorMake(self: &EEmb_modbus_local_i_t) -> EEmb_modbus_reg_t {
		let regGrp = MB_GET_INPUT_REG_GRP_FROM_PTR(self.ptr)
		// let pData = MB_GET_ACTUAL_DATA_PTR(self.ptr)
		return { ptr: self.ptr, valSize: regGrp.valSize, isSigned: regGrp.isSigned }
	}


	func OperatorMake(self: &EEmb_modbus_remote_reg_t) -> EEmb_modbus_reg_t {
		// let regGrp = MB_GET_INPUT_REG_GRP_FROM_PTR(self.ptr)
		// let pData = MB_GET_ACTUAL_DATA_PTR(self.ptr)
		return { ptr: self.ptr, valSize: self.regGrp.valSize, isSigned: self.regGrp.isSigned }
	}

}

let MB_REG_END_IT = mk EEmb_modbus_local_h_iter_t { ptr: 4, regGrp: null }
// let MB_INPUT_REG_END_IT = mk EEmb_modbus_local_i_iter_t { ptr: 4, regGrp: null }





struct EEmb_modbus_local_h_iter_t {

	ptr: pointer
	regGrp: &ModbusHRegGroup_t

	func OperatorGetValue(self: &EEmb_modbus_local_h_iter_t) -> EEmbBindVal_t {
		return { ptrVal: self, valSize: 0, subTp: EEMB_BIND_SUB_TP_MB_L_H_ITER }
	}

	func GetPtr(self: &EEmb_modbus_local_h_iter_t ) -> &EEmb_modbus_local_h_iter_t {
		return self
	}

	func Next() {

		let nextPtr: pointer = self.ptr + self.regGrp.valSize + (self.regGrp.valSize & 1)
		if nextPtr < (self.regGrp.regs + self.regGrp.count*2) {
			self.ptr = nextPtr
			return
		}

		let nextRegGrp: &ModbusHRegGroup_t = #self.regGrp + SizeOf($ModbusHRegGroup_t$)
		// Println(`count = ${DEV_EEmbFrameworkCfg.holdingGrpCount}`)
		let endRegGrp: pointer = DEV_EEmbFrameworkCfg.holdingsGrps + DEV_EEmbFrameworkCfg.holdingGrpCount * SizeOf($ModbusHRegGroup_t$)
		if #nextRegGrp == endRegGrp {
			self.ptr = 4
			return 
		}
		
		self.ptr = nextRegGrp.regs
		self.regGrp <- nextRegGrp

	}

	func GetNext(self: &EEmb_modbus_local_h_iter_t) -> EEmb_modbus_local_h_iter_t {

		let nextPtr: pointer = self.ptr + self.regGrp.valSize + (self.regGrp.valSize & 1)
		if nextPtr < (self.regGrp.regs + self.regGrp.count*2) {
			return { ptr: nextPtr, regGrp: self.regGrp }
		}

		// bkpt()
		let nextRegGrp: &ModbusHRegGroup_t = #self.regGrp + SizeOf($ModbusHRegGroup_t$)
		let endRegGrp: pointer = DEV_EEmbFrameworkCfg.holdingsGrps + DEV_EEmbFrameworkCfg.holdingGrpCount * SizeOf($ModbusHRegGroup_t$)
		if #nextRegGrp == endRegGrp {
			return { ptr: 4, regGrp: null }
		}
		return { ptr: nextRegGrp.regs, regGrp: nextRegGrp }

	}


	func GetReg(self: &EEmb_modbus_local_h_iter_t) -> EEmb_modbus_local_h_t {
		return { ptr: self.ptr }
	}

}

struct EEmb_modbus_local_c_t {

	ptr: pointer
	regGrp: &ModbusCRegGroup_t
	offset: uint32

	func OperatorGetValue(self: &EEmb_modbus_local_c_t) -> bool {
		
		let pData: &uint8 = MB_GET_ACTUAL_DATA_PTR(self.ptr)
		return (pData >> self.offset) & 0x01

	}

	func OperatorCopy(self: &EEmb_modbus_local_c_t, rval: bool) {

		let pData: &uint16 = MB_GET_ACTUAL_DATA_PTR(self.ptr)
		
		var tmp: uint16 = pData

		if rval {
			tmp |= (1 << self.offset)
		} else {
			tmp &= ~(1 << self.offset)
		}

		MB_WRITE_H_REG_WITH_ADDR(self.ptr, tmp)
		MODBUS_CHECK_LOCAL_CHANGED(self.ptr)
	}

	func OperatorStaticCopy(self: &EEmb_modbus_local_c_t, rval: bool) {
		self.OperatorCopy(rval)
	}

	func GetNextReg(self: &EEmb_modbus_local_c_t) -> EEmb_modbus_local_c_t {

		var nextOffset = self.offset + 1 
		var lastByte = self.regGrp.regs + ((self.regGrp.count-1)/8)
		var lastBit = (self.regGrp.count-1) & 7

		// Println(`lastByte = ${lastByte}; lastBit = ${lastBit} <=> sAddr = ${self.regGrp.regs} count = ${self.regGrp.count}`)

		if lastByte != self.ptr && nextOffset < 8 {
			return { ptr: self.ptr, regGrp: self.regGrp, offset: nextOffset }
		} 

		if nextOffset <= lastBit {
			return { ptr: self.ptr, regGrp: self.regGrp, offset: nextOffset }
		}

			let nextPtr: pointer = self.ptr + 1
			if nextPtr <= lastByte {
				return { ptr: nextPtr, regGrp: self.regGrp, offset: 0 }
			}

			if self.regGrp.isLast {
				return { ptr: 4, regGrp: null }
			}

			let nextRegGrp: &ModbusCRegGroup_t = #self.regGrp + SizeOf($ModbusCRegGroup_t$)

			return { ptr: nextRegGrp.regs, regGrp: nextRegGrp, offset: 0 }
	}
	
	func GetPtr(self: &EEmb_modbus_local_c_t ) -> &EEmb_modbus_local_c_t {
		return self
	}

}



struct EEmb_modbus_local_h_t {
	
	ptr: pointer

	func OperatorGetMainValue(self: &EEmb_modbus_local_h_t) -> int32 {
		let regGrp = MB_GET_HOLDING_REG_GRP_FROM_PTR(self.ptr)
		let pData = MB_GET_ACTUAL_DATA_PTR(self.ptr)
		return MemGetInt32(pData, regGrp.valSize, regGrp.isSigned)
	}

	func GetSigned(self: &EEmb_modbus_local_h_t) -> int32 {
		let regGrp = MB_GET_HOLDING_REG_GRP_FROM_PTR(self.ptr)
		let pData = MB_GET_ACTUAL_DATA_PTR(self.ptr)
		return MemGetInt32(pData, regGrp.valSize, regGrp.isSigned)
	}



	func OperatorGetValue(self: &EEmb_modbus_local_h_t) -> int8 {
		let regGrp = MB_GET_HOLDING_REG_GRP_FROM_PTR(self.ptr)
		let pData = MB_GET_ACTUAL_DATA_PTR(self.ptr)
		return MemGetInt32(pData, regGrp.valSize, regGrp.isSigned)
	}

	func OperatorGetValue(self: &EEmb_modbus_local_h_t) -> int16 {
		let regGrp = MB_GET_HOLDING_REG_GRP_FROM_PTR(self.ptr)
		let pData = MB_GET_ACTUAL_DATA_PTR(self.ptr)
		return MemGetInt32(pData, regGrp.valSize, regGrp.isSigned)
	}

	func OperatorGetValue(self: &EEmb_modbus_local_h_t) -> int32 {
		let regGrp = MB_GET_HOLDING_REG_GRP_FROM_PTR(self.ptr)
		let pData = MB_GET_ACTUAL_DATA_PTR(self.ptr)
		return MemGetInt32(pData, regGrp.valSize, regGrp.isSigned)
	}

	func OperatorGetValue(self: &EEmb_modbus_local_h_t) -> int64 {
		let regGrp = MB_GET_HOLDING_REG_GRP_FROM_PTR(self.ptr)
		let pData = MB_GET_ACTUAL_DATA_PTR(self.ptr)
		return MemGetInt64(pData, regGrp.valSize, regGrp.isSigned)
	}

	func OperatorGetValue(self: &EEmb_modbus_local_h_t) -> fp32 {
		let regGrp = MB_GET_HOLDING_REG_GRP_FROM_PTR(self.ptr)
		let pData = MB_GET_ACTUAL_DATA_PTR(self.ptr)
		return MemGetFp32(pData, regGrp.valSize, regGrp.isSigned)
	}

	func OperatorGetValue(self: &EEmb_modbus_local_h_t) -> fp64 {
		let regGrp = MB_GET_HOLDING_REG_GRP_FROM_PTR(self.ptr)
		let pData = MB_GET_ACTUAL_DATA_PTR(self.ptr)
		return MemGetFp64(pData, regGrp.valSize, regGrp.isSigned)
	}

	func OperatorGetValue(self: &EEmb_modbus_local_h_t) -> pointer {
		let pData = MB_GET_ACTUAL_DATA_PTR(self.ptr)
		return pData
	}

	func OperatorGetValue(self: &EEmb_modbus_local_h_t) -> EEmb_modbus_reg_t {
		let regGrp = MB_GET_HOLDING_REG_GRP_FROM_PTR(self.ptr)
		// let pData = MB_GET_ACTUAL_DATA_PTR(self.ptr)
		return { ptr: self.ptr, valSize: regGrp.valSize, isSigned: regGrp.isSigned }
	}




	func OperatorStaticCopy(self: &EEmb_modbus_local_h_t, rval: int8) {
		MB_WRITE_H_REG_WITH_ADDR(self.ptr, rval)
		MODBUS_CHECK_LOCAL_CHANGED(self.ptr)
	}

	func OperatorStaticCopy(self: &EEmb_modbus_local_h_t, rval: int16) {
		MB_WRITE_H_REG_WITH_ADDR(self.ptr, rval)
		MODBUS_CHECK_LOCAL_CHANGED(self.ptr)
	}

	func OperatorStaticCopy(self: &EEmb_modbus_local_h_t, rval: int32) {
		MB_WRITE_H_REG_WITH_ADDR(self.ptr, rval&0xFFFF)
		MB_WRITE_H_REG_WITH_ADDR(self.ptr+2, (rval >> 16))
		MODBUS_CHECK_LOCAL_CHANGED(self.ptr)
	}

	func OperatorStaticCopy(self: &EEmb_modbus_local_h_t, rval: int64) {
		MB_WRITE_H_REG_WITH_ADDR(self.ptr, rval&0xFFFF)
		MB_WRITE_H_REG_WITH_ADDR(self.ptr+2, (rval >> 16)&0xFFFF)
		MB_WRITE_H_REG_WITH_ADDR(self.ptr+4, (rval >> 32)&0xFFFF)
		MB_WRITE_H_REG_WITH_ADDR(self.ptr+6, (rval >> 48)&0xFFFF)
		MODBUS_CHECK_LOCAL_CHANGED(self.ptr)
	}

	func OperatorStaticCopy(self: &EEmb_modbus_local_h_t, rval: fp32) {
		var pRval = rval
		let pRdata: &int32 = #pRval
		MB_WRITE_H_REG_WITH_ADDR(self.ptr, pRdata & 0xFFFF)
		MB_WRITE_H_REG_WITH_ADDR(self.ptr+2, (pRdata >> 16))
		MODBUS_CHECK_LOCAL_CHANGED(self.ptr)
	}

	func OperatorStaticCopy(self: &EEmb_modbus_local_h_t, rval: fp64) {
		var pRval = rval
		let pRdata: &int64 = #pRval
		MB_WRITE_H_REG_WITH_ADDR(self.ptr, pRdata & 0xFFFF)
		MB_WRITE_H_REG_WITH_ADDR(self.ptr+2, (pRdata >> 16)&0xFFFF)
		MB_WRITE_H_REG_WITH_ADDR(self.ptr+4, (pRdata >> 32)&0xFFFF)
		MB_WRITE_H_REG_WITH_ADDR(self.ptr+6, (pRdata >> 48)&0xFFFF)
		MODBUS_CHECK_LOCAL_CHANGED(self.ptr)
	}


	func storeDataToStorage(self: &EEmb_modbus_local_h_t, buf: pointer, size: uint32) {

		let wordsCount = size/2

		for i in 0 ..< wordsCount {
			let pRdata: &int16 = buf + i*2
			MB_WRITE_H_REG_WITH_ADDR(self.ptr+i*2, pRdata)
		}

		if size & 1 {
			let pRdata: &int8 = buf + wordsCount*2
			MB_WRITE_H_REG_WITH_ADDR(self.ptr+wordsCount*2, pRdata)
		}

		MODBUS_CHECK_LOCAL_CHANGED(self.ptr)

	}


	func OperatorStaticCopy(self: &EEmb_modbus_local_h_t, rval: pointer, size: uint32) {

		self.storeDataToStorage(rval, size)
		
	}


	


	func OperatorCopy(self: &EEmb_modbus_local_h_t, rval: int8) {
		let regGrp = MB_GET_HOLDING_REG_GRP_FROM_PTR(self.ptr)
		var buf: uint8[8]
		MemSetFromInt32(buf, rval, regGrp.valSize, regGrp.isSigned)
		self.storeDataToStorage(buf, regGrp.valSize)
	}

	func OperatorCopy(self: &EEmb_modbus_local_h_t, rval: int16) {
		let regGrp = MB_GET_HOLDING_REG_GRP_FROM_PTR(self.ptr)
		var buf: uint8[8]
		MemSetFromInt32(buf, rval, regGrp.valSize, regGrp.isSigned)
		self.storeDataToStorage(buf, regGrp.valSize)
	}

	func OperatorCopy(self: &EEmb_modbus_local_h_t, rval: int32) {
		let regGrp = MB_GET_HOLDING_REG_GRP_FROM_PTR(self.ptr)
		var buf: uint8[8]
		MemSetFromInt32(buf, rval, regGrp.valSize, regGrp.isSigned)
		self.storeDataToStorage(buf, regGrp.valSize)
	}

	func OperatorCopy(self: &EEmb_modbus_local_h_t, rval: int64) {
		let regGrp = MB_GET_HOLDING_REG_GRP_FROM_PTR(self.ptr)
		var buf: uint8[8]
		MemSetFromInt64(buf, rval, regGrp.valSize, regGrp.isSigned)
		self.storeDataToStorage(buf, regGrp.valSize)
	}

	func OperatorCopy(self: &EEmb_modbus_local_h_t, rval: fp32) {
		let regGrp = MB_GET_HOLDING_REG_GRP_FROM_PTR(self.ptr)
		var buf: uint8[8]
		MemSetFromFp32(buf, rval, regGrp.valSize, regGrp.isSigned)
		self.storeDataToStorage(buf, regGrp.valSize)
	}

	func OperatorCopy(self: &EEmb_modbus_local_h_t, rval: fp64) {
		let regGrp = MB_GET_HOLDING_REG_GRP_FROM_PTR(self.ptr)
		var buf: uint8[8]
		MemSetFromFp64(buf, rval, regGrp.valSize, regGrp.isSigned)
		self.storeDataToStorage(buf, regGrp.valSize)
	}

	func OperatorCopy(self: &EEmb_modbus_local_h_t, rval: pointer) {
		let regGrp = MB_GET_HOLDING_REG_GRP_FROM_PTR(self.ptr)
		var buf: uint8[8]
		MemCopy(buf, rval, regGrp.valSize)
		self.storeDataToStorage(buf, regGrp.valSize)
	}

	func OperatorCopy(self: &EEmb_modbus_local_h_t, rval: EEmb_modbus_reg_t) {
		
		let regGrp = MB_GET_HOLDING_REG_GRP_FROM_PTR(self.ptr)

		let rValPtr = MB_GET_ACTUAL_DATA_PTR(rval.ptr)

		var buf: uint8[8]

		if rval.isSigned == 2 {

			if rval.valSize < 8 {
				let val = MemGetFp32(rValPtr, rval.valSize, rval.isSigned)
				MemSetFromFp32(buf, val, regGrp.valSize, regGrp.isSigned)
			} else {
				let val = MemGetFp64(rValPtr, rval.valSize, rval.isSigned)
				MemSetFromFp64(buf, val, regGrp.valSize, regGrp.isSigned)
			}

		} else if rval.isSigned == 3 {

			ASSERT( regGrp.valSize == rval.valSize, "Error: Can't execute assignment expression with different types." )
			self.storeDataToStorage(rval.ptr, regGrp.valSize)
			return

		} else {

			if rval.valSize < 8 {
				let val = MemGetInt32(rValPtr, rval.valSize, rval.isSigned)
				MemSetFromInt32(buf, val, regGrp.valSize, regGrp.isSigned)
			} else {
				let val = MemGetInt64(rValPtr, rval.valSize, rval.isSigned)
				MemSetFromInt32(buf, val, regGrp.valSize, regGrp.isSigned)
			}

		}

		self.storeDataToStorage(buf, regGrp.valSize)

	}


	func GetIter(self: &EEmb_modbus_local_h_t) -> EEmb_modbus_local_h_iter_t {
		let regGrp = MB_GET_HOLDING_REG_GRP_FROM_PTR(self.ptr)
		return { ptr: self.ptr, regGrp: regGrp }
	}

	
	func GetNextReg(self: &EEmb_modbus_local_h_t) -> EEmb_modbus_local_h_t {

		let regGrp = MB_GET_HOLDING_REG_GRP_FROM_PTR(self.ptr)
		let nextPtr: pointer = self.ptr + regGrp.valSize + (regGrp.valSize & 1)
		if nextPtr < (regGrp.regs + regGrp.count*2) {
			return { ptr: nextPtr }
		}

		let nextRegGrp: &ModbusHRegGroup_t = #regGrp + SizeOf($ModbusHRegGroup_t$)
		let endRegGrp: pointer = DEV_EEmbFrameworkCfg.holdingsGrps + DEV_EEmbFrameworkCfg.holdingGrpCount * SizeOf($ModbusHRegGroup_t$)
		if #nextRegGrp == endRegGrp {
			return { ptr: 4 }
		}
		return { ptr: nextRegGrp.regs }
		
	}
	
	func GetPtr(self: &EEmb_modbus_local_h_t ) -> &EEmb_modbus_local_h_t {
		return self
	}

}

struct EEmb_modbus_local_i_iter_t {

	ptr: pointer
	regGrp: &ModbusIRegGroup_t

	func GetPtr(self: &EEmb_modbus_local_i_iter_t ) -> &EEmb_modbus_local_i_iter_t {
		return self
	}

	func OperatorGetValue(self: &EEmb_modbus_local_i_iter_t) -> EEmbBindVal_t {
		return { ptrVal: self, valSize: 0, subTp: EEMB_BIND_SUB_TP_MB_L_I_ITER }
	}

	func Next() {

		let nextPtr: pointer = self.ptr + self.regGrp.valSize + (self.regGrp.valSize & 1)
		if nextPtr < (self.regGrp.regs + self.regGrp.count*2) {
			self.ptr = nextPtr
			return
		}

		let nextRegGrp: &ModbusIRegGroup_t = #self.regGrp + SizeOf($ModbusIRegGroup_t$)
		let endRegGrp: pointer = DEV_EEmbFrameworkCfg.inputsGrps + DEV_EEmbFrameworkCfg.inputGrpCount * SizeOf($ModbusIRegGroup_t$)
		if #nextRegGrp == endRegGrp {
			self.ptr = 4
			return 
		}

		self.ptr = nextRegGrp.regs
		self.regGrp <- nextRegGrp

	}

	func GetNext(self: &EEmb_modbus_local_i_iter_t) -> EEmb_modbus_local_i_iter_t {

		let nextPtr: pointer = self.ptr + self.regGrp.valSize + (self.regGrp.valSize & 1)
		if nextPtr < (self.regGrp.regs + self.regGrp.count*2) {
			return { ptr: nextPtr, regGrp: self.regGrp }
		}

		let nextRegGrp: &ModbusIRegGroup_t = #self.regGrp + SizeOf($ModbusIRegGroup_t$)
		let endRegGrp: pointer = DEV_EEmbFrameworkCfg.inputsGrps + DEV_EEmbFrameworkCfg.inputGrpCount * SizeOf($ModbusIRegGroup_t$)
		if #nextRegGrp == endRegGrp {
			return { ptr: 4, regGrp: null }
		}
		return { ptr: nextRegGrp.regs, regGrp: nextRegGrp }

	}

	func GetReg(self: &EEmb_modbus_local_i_iter_t) -> EEmb_modbus_local_i_t {
		return { ptr: self.ptr }
	}

}

struct EEmb_modbus_local_i_t {

	ptr: pointer

	func OperatorGetMainValue(self: &EEmb_modbus_local_i_t) -> int32 {
		let regGrp = MB_GET_INPUT_REG_GRP_FROM_PTR(self.ptr)
		return MemGetInt32(self.ptr, regGrp.valSize, regGrp.isSigned)
	}

	func GetSigned(self: &EEmb_modbus_local_i_t) -> int32 {
		let regGrp = MB_GET_INPUT_REG_GRP_FROM_PTR(self.ptr)
		return MemGetInt32(self.ptr, regGrp.valSize, regGrp.isSigned)
	}

	func OperatorGetValue(self: &EEmb_modbus_local_i_t) -> int8 {
		let regGrp = MB_GET_INPUT_REG_GRP_FROM_PTR(self.ptr)
		return MemGetInt32(self.ptr, regGrp.valSize, regGrp.isSigned)
	}

	func OperatorGetValue(self: &EEmb_modbus_local_i_t) -> int16 {
		let regGrp = MB_GET_INPUT_REG_GRP_FROM_PTR(self.ptr)
		return MemGetInt32(self.ptr, regGrp.valSize, regGrp.isSigned)
	}

	func OperatorGetValue(self: &EEmb_modbus_local_i_t) -> int32 {
		let regGrp = MB_GET_INPUT_REG_GRP_FROM_PTR(self.ptr)
		return MemGetInt32(self.ptr, regGrp.valSize, regGrp.isSigned)
	}

	func OperatorGetValue(self: &EEmb_modbus_local_i_t) -> int64 {
		let regGrp = MB_GET_INPUT_REG_GRP_FROM_PTR(self.ptr)
		return MemGetInt64(self.ptr, regGrp.valSize, regGrp.isSigned)
	}

	func OperatorGetValue(self: &EEmb_modbus_local_i_t) -> fp32 {
		let regGrp = MB_GET_INPUT_REG_GRP_FROM_PTR(self.ptr)
		return MemGetFp32(self.ptr, regGrp.valSize, regGrp.isSigned)
	}

	func OperatorGetValue(self: &EEmb_modbus_local_i_t) -> fp64 {
		let regGrp = MB_GET_INPUT_REG_GRP_FROM_PTR(self.ptr)
		return MemGetFp64(self.ptr, regGrp.valSize, regGrp.isSigned)
	}

	func OperatorGetValue(self: &EEmb_modbus_local_i_t) -> pointer {
		return self.ptr
	}

	func OperatorGetValue(self: &EEmb_modbus_local_i_t) -> EEmb_modbus_reg_t {
		let regGrp = MB_GET_INPUT_REG_GRP_FROM_PTR(self.ptr)
		return { ptr: self.ptr, valSize: regGrp.valSize, isSigned: regGrp.isSigned }
	}




	func OperatorStaticCopy(self: &EEmb_modbus_local_i_t, rval: int8) {
		let origPtr: mut &int8 =  self.ptr
		origPtr = rval
	}

	func OperatorStaticCopy(self: &EEmb_modbus_local_i_t, rval: int16) {
		let origPtr: mut &int16 =  self.ptr
		origPtr = rval
	}

	func OperatorStaticCopy(self: &EEmb_modbus_local_i_t, rval: int32) {
		let origPtr: mut &int32 =  self.ptr
		origPtr = rval
	}

	func OperatorStaticCopy(self: &EEmb_modbus_local_i_t, rval: int64) {
		let origPtr: mut &int64 =  self.ptr
		origPtr = rval
	}

	func OperatorStaticCopy(self: &EEmb_modbus_local_i_t, rval: fp32) {
		let origPtr: mut &fp32 =  self.ptr
		origPtr = rval
	}

	func OperatorStaticCopy(self: &EEmb_modbus_local_i_t, rval: fp64) {
		let origPtr: mut &fp64 =  self.ptr
		origPtr = rval
	}

	func OperatorStaticCopy(self: &EEmb_modbus_local_i_t, rval: pointer, size: uint32) {
		MemCopy(self.ptr, rval, size)
	}




	func OperatorCopy(self: &EEmb_modbus_local_i_t, rval: int8) {
		let regGrp = MB_GET_INPUT_REG_GRP_FROM_PTR(self.ptr)
		MemSetFromInt32(self.ptr, rval, regGrp.valSize, regGrp.isSigned)
	}

	func OperatorCopy(self: &EEmb_modbus_local_i_t, rval: int16) {
		let regGrp = MB_GET_INPUT_REG_GRP_FROM_PTR(self.ptr)
		MemSetFromInt32(self.ptr, rval, regGrp.valSize, regGrp.isSigned)
	}

	func OperatorCopy(self: &EEmb_modbus_local_i_t, rval: int32) {
		let regGrp = MB_GET_INPUT_REG_GRP_FROM_PTR(self.ptr)
		MemSetFromInt32(self.ptr, rval, regGrp.valSize, regGrp.isSigned)
	}

	func OperatorCopy(self: &EEmb_modbus_local_i_t, rval: int64) {
		let regGrp = MB_GET_INPUT_REG_GRP_FROM_PTR(self.ptr)
		MemSetFromInt64(self.ptr, rval, regGrp.valSize, regGrp.isSigned)
	}

	func OperatorCopy(self: &EEmb_modbus_local_i_t, rval: fp32) {
		let regGrp = MB_GET_INPUT_REG_GRP_FROM_PTR(self.ptr)
		MemSetFromFp32(self.ptr, rval, regGrp.valSize, regGrp.isSigned)
	}

	func OperatorCopy(self: &EEmb_modbus_local_i_t, rval: fp64) {
		let regGrp = MB_GET_INPUT_REG_GRP_FROM_PTR(self.ptr)
		MemSetFromFp64(self.ptr, rval, regGrp.valSize, regGrp.isSigned)
	}

	func OperatorCopy(self: &EEmb_modbus_local_i_t, rval: pointer) {
		let regGrp = MB_GET_INPUT_REG_GRP_FROM_PTR(self.ptr)
		MemCopy(self.ptr, rval, regGrp.valSize)
	}

	func OperatorCopy(self: &EEmb_modbus_local_i_t, rval: EEmb_modbus_reg_t) {
		
		let regGrp = MB_GET_INPUT_REG_GRP_FROM_PTR(self.ptr)

		let rValPtr = MB_GET_ACTUAL_DATA_PTR(rval.ptr)

		if rval.isSigned == 2 {

			if rval.valSize < 8 {
				let val = MemGetFp32(rValPtr, rval.valSize, rval.isSigned)
				MemSetFromFp32(self.ptr, val, regGrp.valSize, regGrp.isSigned)
			} else {
				let val = MemGetFp64(rValPtr, rval.valSize, rval.isSigned)
				MemSetFromFp64(self.ptr, val, regGrp.valSize, regGrp.isSigned)
			}

		} else if rval.isSigned == 3 {

			ASSERT( regGrp.valSize == rval.valSize, "Error: Can't execute assignment expression with different types." )
			MemCopy(self.ptr, rValPtr, regGrp.valSize)

		} else {

			if rval.valSize < 8 {
				let val = MemGetInt32(rValPtr, rval.valSize, rval.isSigned)
				MemSetFromInt32(self.ptr, val, regGrp.valSize, regGrp.isSigned)
			} else {
				let val = MemGetInt64(rValPtr, rval.valSize, rval.isSigned)
				MemSetFromInt32(self.ptr, val, regGrp.valSize, regGrp.isSigned)
			}

		}
	}


	func GetIter(self: &EEmb_modbus_local_i_t) -> EEmb_modbus_local_i_iter_t {
		let regGrp = MB_GET_INPUT_REG_GRP_FROM_PTR(self.ptr)
		return { ptr: self.ptr, regGrp: regGrp }
	}

	
	func GetNextReg(self: &EEmb_modbus_local_i_t) -> EEmb_modbus_local_i_t {

		let regGrp = MB_GET_INPUT_REG_GRP_FROM_PTR(self.ptr)

		let nextPtr: pointer = self.ptr + regGrp.valSize + (regGrp.valSize & 1)
		if nextPtr < (regGrp.regs + regGrp.count*2) {
			return { ptr: nextPtr }
		}

		let nextRegGrp: &ModbusIRegGroup_t = #regGrp + SizeOf($ModbusIRegGroup_t$)
		let endRegGrp: pointer = DEV_EEmbFrameworkCfg.inputsGrps + DEV_EEmbFrameworkCfg.inputGrpCount * SizeOf($ModbusIRegGroup_t$)
		if #nextRegGrp == endRegGrp {
			return { ptr: 4 }
		}
		return { ptr: nextRegGrp.regs }
		
	}
	
	func GetPtr(self: &EEmb_modbus_local_i_t ) -> &EEmb_modbus_local_i_t {
		return self
	}

}

struct EEmb_modbus_remote_c_reg_t {
	
	ptr: pointer
	moduleInst: mut &ModbusRemModuleBase_t
	regGrp: &ModbusRemoteGrpReg_t
	offset: uint32

	func OperatorGetValue(self: &EEmb_modbus_remote_c_reg_t) -> bool {
		let data: &uint8 = self.ptr
		return (data >> self.offset) & 0x01
	}

	func OperatorCopy(self: &EEmb_modbus_remote_c_reg_t, rval: bool) {
		
		let pData: &uint8 = self.ptr
		
		var val: uint16 = ( rval ? 0x00FF : 0x0000 )

		MB_WRITE_REMOTE_REG_WITH_INST(#self, val)

	}

	func GetPtr(self: &EEmb_modbus_remote_c_reg_t ) -> &EEmb_modbus_remote_c_reg_t {
		return self
	}

	func ForceReadRange(self: &EEmb_modbus_remote_c_reg_t, endReg: &EEmb_modbus_remote_c_reg_t) -> uint32 {
		return MB_FORCE_READ_REMOTE_REGS(#self, #endReg)
	}

	func ForceRead(self: &EEmb_modbus_remote_c_reg_t) -> uint32 {
		return MB_FORCE_READ_REMOTE_REGS(#self, #self)
	}


	func ForceWriteRange(self: &EEmb_modbus_remote_c_reg_t, 
							endReg: &EEmb_modbus_remote_c_reg_t, val: uint32) -> uint32 {

		var vals = val
		let bytesCount: uint32 = endReg.ptr - self.ptr
		// ((self.ptr - self.regGrp.regs) 
		//	+ (endReg.ptr - endReg.regGrp.regs))
      	let bitsCount: uint32 = bytesCount * 8 - self.offset + endReg.offset + 1
		// bkpt()
		return MB_FORCE_WRITE_REMOTE_REGS(#self, #vals, bitsCount)
	}

	func GetNextReg(self: &EEmb_modbus_remote_c_reg_t) -> EEmb_modbus_remote_c_reg_t {

		var nextOffset = self.offset + 1 
		var lastByte = self.regGrp.regs + ((self.regGrp.count-1)/8)
		var lastBit = (self.regGrp.count-1) & 7

		// Println(`lastByte = ${lastByte}; lastBit = ${lastBit} <=> sAddr = ${self.regGrp.regs} count = ${self.regGrp.count}`)

		if lastByte != self.ptr && nextOffset < 8 {
			return { ptr: self.ptr, moduleInst: self.moduleInst,  regGrp: self.regGrp, offset: nextOffset }
		} 

		if nextOffset <= lastBit {
			return { ptr: self.ptr, moduleInst: self.moduleInst, regGrp: self.regGrp, offset: nextOffset }
		}

		let nextAddr = self.ptr + 1

		// let offsetInGrp: uint = self.ptr - self.regGrp.regs

		if nextAddr <= lastByte {
			return { ptr: nextAddr, moduleInst: self.moduleInst, regGrp: self.regGrp, offset: 0 }
		}
		
			let nextGrp: &ModbusRemoteGrpReg_t = #self.regGrp + SizeOf($ModbusRemoteGrpReg_t$)
			let endGrpPtr: pointer = #self.moduleInst.modbusRegsGrps + self.moduleInst.modbusRegsGrpsSize * SizeOf($ModbusRemoteGrpReg_t$)
			if #nextGrp == endGrpPtr {
				return { ptr: 4, moduleInst: null, regGrp: null }
			}
			if nextGrp.regTp < MB_REM_DI {
				return { ptr: 4, moduleInst: null, regGrp: null }
			}
			return { ptr: nextGrp.regs, moduleInst: self.moduleInst, regGrp: nextGrp, offset: 0 }
	}
	
}




struct EEmb_modbus_remote_reg_t {
	
	ptr: pointer
	moduleInst: mut &ModbusRemModuleBase_t
	regGrp: &ModbusRemoteGrpReg_t
	

	func OperatorGetMainValue(self: &EEmb_modbus_remote_reg_t) -> int32 {
		return MemGetInt32(self.ptr, self.regGrp.valSize, self.regGrp.isSigned)
	}

	func GetSigned(self: &EEmb_modbus_remote_reg_t) -> int32 {
		return MemGetInt32(self.ptr, self.regGrp.valSize, self.regGrp.isSigned)
	}


	func OperatorGetValue(self: &EEmb_modbus_remote_reg_t) -> int8 {
		return MemGetInt32(self.ptr, self.regGrp.valSize, self.regGrp.isSigned)
	}

	func OperatorGetValue(self: &EEmb_modbus_remote_reg_t) -> int16 {
		return MemGetInt32(self.ptr, self.regGrp.valSize, self.regGrp.isSigned)
	}

	func OperatorGetValue(self: &EEmb_modbus_remote_reg_t) -> int32 {
		return MemGetInt32(self.ptr, self.regGrp.valSize, self.regGrp.isSigned)
	}

	func OperatorGetValue(self: &EEmb_modbus_remote_reg_t) -> int64 {
		return MemGetInt64(self.ptr, self.regGrp.valSize, self.regGrp.isSigned)
	}

	func OperatorGetValue(self: &EEmb_modbus_remote_reg_t) -> fp32 {
		return MemGetFp32(self.ptr, self.regGrp.valSize, self.regGrp.isSigned)
	}

	func OperatorGetValue(self: &EEmb_modbus_remote_reg_t) -> fp64 {
		return MemGetFp64(self.ptr, self.regGrp.valSize, self.regGrp.isSigned)
	}

	func OperatorGetValue(self: &EEmb_modbus_remote_reg_t) -> EEmb_modbus_reg_t {
		return { ptr: self.ptr, valSize: self.regGrp.valSize, isSigned: self.regGrp.isSigned }
	}




	func OperatorStaticCopy(self: &EEmb_modbus_remote_reg_t, rval: int8) {
		var val: int16 = rval
		MB_WRITE_REMOTE_REG_WITH_INST(self, val)
	}

	func OperatorStaticCopy(self: &EEmb_modbus_remote_reg_t, rval: int16) {
		var val: int16 = rval
		MB_WRITE_REMOTE_REG_WITH_INST(self, val)
	}

	func OperatorStaticCopy(self: &EEmb_modbus_remote_reg_t, rval: int32) {
		var val: int32 = rval
		MB_WRITE_REMOTE_REG_WITH_INST(self, val)
	}

	func OperatorStaticCopy(self: &EEmb_modbus_remote_reg_t, rval: int64) {
		var val: int64 = rval
		MB_WRITE_REMOTE_REG_WITH_INST(self, val)
	}

	func OperatorStaticCopy(self: &EEmb_modbus_remote_reg_t, rval: fp32) {
		var val: fp32 = rval
		MB_WRITE_REMOTE_REG_WITH_INST(self, val)
	}

	func OperatorStaticCopy(self: &EEmb_modbus_remote_reg_t, rval: fp64) {
		var val: fp64 = rval
		MB_WRITE_REMOTE_REG_WITH_INST(self, val)
	}



	func OperatorStaticCopy(self: &EEmb_modbus_remote_reg_t, rval: pointer, size: uint32) {
		MemCopy(self.ptr, rval, size)
		MB_WRITE_REMOTE_REG_WITH_INST(self, self.ptr)
	}


	


	func OperatorCopy(self: &EEmb_modbus_remote_reg_t, rval: int8) {
		var buf: uint8[8]
		MemSetFromInt32(buf, rval, self.regGrp.valSize, self.regGrp.isSigned)
		MB_WRITE_REMOTE_REG_WITH_INST(self, buf)
	}

	func OperatorCopy(self: &EEmb_modbus_remote_reg_t, rval: int16) {
		var buf: uint8[8]
		MemSetFromInt32(buf, rval, self.regGrp.valSize, self.regGrp.isSigned)
		MB_WRITE_REMOTE_REG_WITH_INST(self, buf)
	}

	func OperatorCopy(self: &EEmb_modbus_remote_reg_t, rval: int32) {
		var buf: uint8[8]
		MemSetFromInt32(buf, rval, self.regGrp.valSize, self.regGrp.isSigned)
		MB_WRITE_REMOTE_REG_WITH_INST(self, buf)
	}

	func OperatorCopy(self: &EEmb_modbus_remote_reg_t, rval: int64) {
		var buf: uint8[8]
		MemSetFromInt64(buf, rval, self.regGrp.valSize, self.regGrp.isSigned)
		MB_WRITE_REMOTE_REG_WITH_INST(self, buf)
	}

	func OperatorCopy(self: &EEmb_modbus_remote_reg_t, rval: fp32) {
		var buf: uint8[8]
		MemSetFromFp32(buf, rval, self.regGrp.valSize, self.regGrp.isSigned)
		MB_WRITE_REMOTE_REG_WITH_INST(self, buf)
	}

	func OperatorCopy(self: &EEmb_modbus_remote_reg_t, rval: fp64) {
		var buf: uint8[8]
		MemSetFromFp64(buf, rval, self.regGrp.valSize, self.regGrp.isSigned)
		MB_WRITE_REMOTE_REG_WITH_INST(self, buf)
	}

	func OperatorCopy(self: &EEmb_modbus_remote_reg_t, rval: pointer) {
		MemCopy(self.ptr, rval, self.regGrp.valSize)
		MB_WRITE_REMOTE_REG_WITH_INST(self, self.ptr)
	}

	func OperatorCopy(self: &EEmb_modbus_remote_reg_t, rval: EEmb_modbus_reg_t) {

		let rValPtr = MB_GET_ACTUAL_DATA_PTR(rval.ptr)

		var buf: uint8[8]

		if rval.isSigned == 2 {

			if rval.valSize < 8 {
				let val = MemGetFp32(rValPtr, rval.valSize, rval.isSigned)
				MemSetFromFp32(buf, val, self.regGrp.valSize, self.regGrp.isSigned)
			} else {
				let val = MemGetFp64(rValPtr, rval.valSize, rval.isSigned)
				MemSetFromFp64(buf, val, self.regGrp.valSize, self.regGrp.isSigned)
			}

		} else if rval.isSigned == 3 {

			ASSERT( self.regGrp.valSize == rval.valSize, "Error: Can't execute assignment expression with different types." )
			MemCopy(self.ptr, rval.ptr, rval.valSize)
			MB_WRITE_REMOTE_REG_WITH_INST(self, self.ptr)
			return

		} else {

			if rval.valSize < 8 {
				let val = MemGetInt32(rValPtr, rval.valSize, rval.isSigned)
				MemSetFromInt32(buf, val, self.regGrp.valSize, self.regGrp.isSigned)
			} else {
				let val = MemGetInt64(rValPtr, rval.valSize, rval.isSigned)
				MemSetFromInt32(buf, val, self.regGrp.valSize, self.regGrp.isSigned)
			}

		}

		MB_WRITE_REMOTE_REG_WITH_INST(self, buf)

	}


	// func GetIter(self: &EEmb_modbus_remote_reg_t) -> EEmb_modbus_remote_reg_t {
	// 	return self
	// }

	
	func GetNextReg(self: &EEmb_modbus_remote_reg_t) -> EEmb_modbus_remote_reg_t {

		// let wordsCount =  self.regGrp.valSize / 2 + (self.regGrp.valSize & 1)
		// let nextAddr = self.ptr + wordsCount

		let bytesCount =  self.regGrp.valSize + (self.regGrp.valSize & 1)
		let nextAddr = self.ptr + bytesCount

		// let offsetInGrp: uint = self.ptr - self.regGrp.regs
		
		if  nextAddr >= (self.regGrp.regs + self.regGrp.count*2) {
			let nextGrp: &ModbusRemoteGrpReg_t = #self.regGrp + SizeOf($ModbusRemoteGrpReg_t$)
			let endGrpPtr: pointer = #self.moduleInst.modbusRegsGrps + self.moduleInst.modbusRegsGrpsSize * SizeOf($ModbusRemoteGrpReg_t$)
			if #nextGrp == endGrpPtr {
				return { ptr: 4, moduleInst: null, regGrp: null }
			}
			if nextGrp.regTp >= MB_REM_DI {
				return { ptr: 4, moduleInst: null, regGrp: null }
			}
			return { ptr: nextGrp.regs, moduleInst: self.moduleInst, regGrp: nextGrp }
		}

		return { ptr: nextAddr, moduleInst: self.moduleInst, regGrp: self.regGrp }
	}

	// func GetNextWordReg(self: &EEmb_modbus_remote_reg_t) -> EEmb_modbus_remote_reg_t {
		
	// }
	
	
	func GetPtr(self: &EEmb_modbus_remote_reg_t ) -> &EEmb_modbus_remote_reg_t {
		return self
	}

	func ForceReadRange(self: &EEmb_modbus_remote_reg_t, endReg: &EEmb_modbus_remote_reg_t) -> uint32 {
		return MB_FORCE_READ_REMOTE_REGS(self, endReg)
	}

	func ForceRead(self: &EEmb_modbus_remote_reg_t) -> uint32 {
		return MB_FORCE_READ_REMOTE_REGS(self, self)
	}


	func ForceWriteRange(self: &EEmb_modbus_remote_reg_t, vals: uint16[]) -> uint32 {
		return MB_FORCE_WRITE_REMOTE_REGS(self, vals, GetArgLength(vals))
	}

	// func ForceWrite(self: &EEmb_modbus_remote_reg_t, instance: &ModbusRemModuleBase_t, rval: uint16) {
	// 	MB_WRITE_REMOTE_REG_WITH_INST(instance, self, rval)
	// }
	
}





extern demangle func MB_READ_LOCAL_REG(uint32, uint16) -> uint16
extern demangle func MB_WRITE_LOCAL_REG(uint32, uint16, uint16)

extern demangle func MB_WRITE_H_REG_WITH_ADDR(pointer, uint16) -> uint8
extern demangle func MB_READ_H_REG_FROM_ADDR(&uint16) -> uint16

extern demangle func MB_GET_ERROR(uint32) -> uint32
// extern demangle func MB_READ_REMOTE_REG_WITH_INST(&EEmb_modbus_remote_reg_t) -> uint32
//extern demangle func MB_READ_REMOTE_REG(uint32, uint32, uint32, uint8, uint16) -> uint16
extern demangle func MB_WRITE_REMOTE_REG_WITH_INST(&EEmb_modbus_remote_reg_t, pointer) -> uint32

extern demangle func MB_FORCE_READ_REMOTE_REGS(&EEmb_modbus_remote_reg_t, &EEmb_modbus_remote_reg_t) -> uint32
extern demangle func MB_FORCE_WRITE_REMOTE_REGS(&EEmb_modbus_remote_reg_t, pointer, uint) -> uint32

//extern demangle func MB_WRITE_REMOTE_REG(uint32, uint32, uint32, uint8, uint16, uint16)
extern demangle func MODBUS_SET_LOCAL_CHANGED_CALLBACK( func { (&EEmb_modbus_reg_t) -> bool } ) 
extern demangle func MODBUS_CHECK_LOCAL_CHANGED( pointer )

extern demangle func MODBUS_CFG(uint32, uint32, uint32, uint8)

extern demangle func MB_REMOTE_MODULE_ADD_INSTANCE(pointer)

extern demangle func MB_GET_ACTUAL_DATA_PTR(pointer) -> pointer
extern demangle func MB_GET_INPUT_REG_GRP_FROM_PTR(pointer) -> &ModbusIRegGroup_t
extern demangle func MB_GET_HOLDING_REG_GRP_FROM_PTR(pointer) -> &ModbusHRegGroup_t