
enum  {
	MB_SLAVE_ID = 0,
	MB_MASTER_ID,
	MB_ROLE_COUNT
}


enum  {
	MB_L_INPUT = 0,
	MB_L_HOLDING,
	MB_REM_INPUT,
	MB_REM_HOLDING,
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




struct ModbusIRegGroup_t {
	regs: &uint16
	startAddr: uint16
	count: uint16
}

struct ModbusHRegGroup_t {
	regs: &uint16
	ranges: &uint16
	startAddr: uint16
	count: uint16
}

struct ModbusRemoteGrpReg_t {
	regs: &uint16
	startAddr: uint16
	count: uint16
	regTp: uint16
}

struct ModbusRemoteRegTable_t {
	regs: &ModbusRemoteGrpReg_t
	count: uint32
}






struct ModbusRemModuleBase_t {
	connectionRestoreCallback: func { (mut &ModbusRemModuleBase_t) }
	errorCallback: func { (mut &ModbusRemModuleBase_t, uint32, uint8, uint8, uint16) }
	changedRegValueCallback: func { (mut &ModbusRemModuleBase_t, &EEmb_modbus_remote_reg_t) }
	modbusRegsGrps: &ModbusRemoteGrpReg_t 
	modbusRegsGrpsSize: uint32
	comPort: uint32
	interval: uint32
	interval2: uint32
	timeout: uint32
	ticks: uint32
	errors: uint32
	devAddr: uint16
	reqTryCount: uint8
	isEnabled: uint8
	packSize: uint8
	isHoldingsRead: uint8
	isAutoRead: uint8
	isShowMessages: uint8
	regs: pointer
}

struct EEmb_modbus_remote_regs_template_t {
	reg: EEmb_modbus_remote_reg_t
}


func GetRemRegAtIndex(devPtr: pointer, index: uint32) -> &EEmb_modbus_remote_reg_t {

	let devBasePtr: mut &ModbusRemModuleBase_t = devPtr
	//let firstReg: &EEmb_modbus_remote_reg_t = devBasePtr.regs
	//let reg: &EEmb_modbus_remote_reg_t = #firstReg + index*SizeOf($EEmb_modbus_remote_reg_t$)
	
	let table: &EEmb_modbus_remote_regs_template_t = devBasePtr.regs
	
	//let reg: &EEmb_modbus_remote_reg_t = #table.reg + index*SizeOf($EEmb_modbus_remote_reg_t$)
	//return reg
	
	let reg = #table.reg + index*SizeOf($EEmb_modbus_remote_reg_t$)
	

	return reg
}


func GetRemRegAtAddr(devPtr: pointer, addr: uint32) -> &EEmb_modbus_remote_reg_t {

	let devBasePtr: mut &ModbusRemModuleBase_t = devPtr
	let table: &EEmb_modbus_remote_regs_template_t = devBasePtr.regs
	
	let endReg = #table.reg + 255*SizeOf($EEmb_modbus_remote_reg_t$)
	var reg = #table.reg 
	
	while reg < endReg {
	
		let reg0: &EEmb_modbus_remote_reg_t = reg
		
		if reg0.regAddr == addr {
			return reg
		}
		
		reg += SizeOf($EEmb_modbus_remote_reg_t$)
	
	}
	
	return reg


}


func GetNextRemReg(reg: EEmb_modbus_remote_reg_t) -> &EEmb_modbus_remote_reg_t {
	let nextReg = #reg + SizeOf($EEmb_modbus_remote_reg_t$)
	return nextReg
}




struct EEmb_modbus_local_h_t {
	
	ptr: &uint16

	func OperatorGetValue() -> uint16 {
		return MB_READ_H_REG_FROM_ADDR(self.ptr)
	}

	func OperatorGetValue(self: &EEmb_modbus_local_h_t) -> uint16 {
		return MB_READ_H_REG_FROM_ADDR(self.ptr)
	}

	func GetSigned() -> int16 {
		return self.ptr
	}

	// func OperatorGetRef() -> &uint16 {
	// 	return self.ptr
	// }

	// func OperatorGetRef(self: &EEmb_modbus_local_h_t) -> &uint16 {
	// 	return self.ptr
	// }

	func OperatorCopy(rval: uint16) {
		MB_WRITE_H_REG_WITH_ADDR(self.ptr, rval)
	}

	func OperatorCopy(self: &EEmb_modbus_local_h_t, rval: uint16) {
		MB_WRITE_H_REG_WITH_ADDR(self.ptr, rval)
	}
	
	func GetNextReg(self: &EEmb_modbus_local_h_t ) -> EEmb_modbus_local_h_t {
		let reg = mk EEmb_modbus_local_h_t { ptr: #self.ptr + 2 }
		return reg
	}
	
	func GetPtr(self: &EEmb_modbus_local_h_t ) -> &EEmb_modbus_local_h_t {
		return self
	}

}

struct EEmb_modbus_local_i_t {

	ptr: mut &uint16

	func OperatorGetValue() -> uint16 {
		return self.ptr
	}

	func OperatorGetValue(self: &EEmb_modbus_local_i_t) -> uint16 {
		return self.ptr
	}

	func GetSigned() -> int16 {
		return self.ptr
	}

	// func OperatorGetRef() -> mut &uint16 {
	// 	return self.ptr
	// }

	// func OperatorGetRef(self: &EEmb_modbus_local_i_t) -> mut &uint16 {
	// 	return self.ptr
	// }

	func OperatorCopy(rval: uint16) {
		self.ptr = rval
	}

	func OperatorCopy(self: &EEmb_modbus_local_i_t, rval: uint16) {
		self.ptr = rval
	}
	
	func GetNextReg(self: &EEmb_modbus_local_i_t ) -> EEmb_modbus_local_i_t {
		let reg = mk EEmb_modbus_local_i_t { ptr: #self.ptr + 2 }
		return reg
	}
	
	func GetPtr(self: &EEmb_modbus_local_i_t ) -> &EEmb_modbus_local_i_t {
		return self
	}

}

struct EEmb_modbus_remote_reg_t {
	
	ptr: mut &uint16
	regAddr: uint16
	regTp: uint16

	func OperatorGetValue() -> uint16 {
		return self.ptr
	}

	func OperatorGetValue(self: &EEmb_modbus_remote_reg_t) -> uint16 {
		return self.ptr
	}

	// func OperatorGetValue(instance: &ModbusRemModuleBase_t) -> uint16 {
	// 	if instance.isAutoRead {
	// 		return self.ptr
	// 	}
	// 	return MB_READ_REMOTE_REG_WITH_INST(instance, self)
	// }

	func OperatorGetValue(self: &EEmb_modbus_remote_reg_t, instance: &ModbusRemModuleBase_t) -> uint16 {
		//if instance.isAutoRead {
			return self.ptr
		//}
		//return MB_READ_REMOTE_REG_WITH_INST(instance, self)
	}

	func GetSigned(self: &EEmb_modbus_remote_reg_t) -> int16 {
		return self.ptr
	}

	func GetSigned(self: &EEmb_modbus_remote_reg_t, instance: &ModbusRemModuleBase_t) -> int16 {
		return self.ptr
		// if instance.isAutoRead {
		// 	return self.ptr
		// }
		// return MB_READ_REMOTE_REG_WITH_INST(instance, self)
	}

	// func OperatorGetRef() -> &uint16 {
	// 	return self.ptr
	// }

	// func OperatorGetRef(self: &EEmb_modbus_remote_reg_t) -> &uint16 {
	// 	return self.ptr
	// }

	func OperatorCopy(instance: &ModbusRemModuleBase_t, rval: uint16) {
		// if !instance.error && self.ptr == rval {
		// 	return
		// }
		MB_WRITE_REMOTE_REG_WITH_INST(instance, self, rval)
	}

	func OperatorCopy(self: &EEmb_modbus_remote_reg_t, instance: &ModbusRemModuleBase_t, rval: uint16) {
		// if !instance.error && self.ptr == rval {
		// 	return
		// }
		MB_WRITE_REMOTE_REG_WITH_INST(instance, self, rval)
	}
	
	func GetNextReg(self: &EEmb_modbus_remote_reg_t ) -> &EEmb_modbus_remote_reg_t {
		let nextReg = #self + SizeOf($EEmb_modbus_remote_reg_t$)
		return nextReg
	}

	func GetNextReg(self: &EEmb_modbus_remote_reg_t, instance: &ModbusRemModuleBase_t ) -> &EEmb_modbus_remote_reg_t {
		let nextReg = #self + SizeOf($EEmb_modbus_remote_reg_t$)
		return nextReg
	}
	
	func GetPtr(self: &EEmb_modbus_remote_reg_t ) -> &EEmb_modbus_remote_reg_t {
		return self
	}

	func GetPtr(self: &EEmb_modbus_remote_reg_t, inst: &ModbusRemModuleBase_t) -> &EEmb_modbus_remote_reg_t {
		return self
	}

	func ForceReadRange(self: &EEmb_modbus_remote_reg_t, inst: &ModbusRemModuleBase_t, endReg: &EEmb_modbus_remote_reg_t) -> uint32 {
		return MB_FORCE_READ_REMOTE_REGS(inst, self, endReg)
	}

	func ForceRead(self: &EEmb_modbus_remote_reg_t, inst: &ModbusRemModuleBase_t) -> uint16 {
		return MB_READ_REMOTE_REG_WITH_INST(inst, self)
	}

	func ForceReadSigned(self: &EEmb_modbus_remote_reg_t, inst: &ModbusRemModuleBase_t) -> int16 {
		return MB_READ_REMOTE_REG_WITH_INST(inst, self)
	}

	func ForceWriteRange(self: &EEmb_modbus_remote_reg_t, inst: &ModbusRemModuleBase_t, vals: uint16[]) -> uint32 {
		return MB_FORCE_WRITE_REMOTE_REGS(inst, self, vals, GetArgLength(vals))
	}

	func ForceWrite(self: &EEmb_modbus_remote_reg_t, instance: &ModbusRemModuleBase_t, rval: uint16) {
		MB_WRITE_REMOTE_REG_WITH_INST(instance, self, rval)
	}
	
}





extern demangle func MB_READ_LOCAL_REG(uint32, uint16) -> uint16
extern demangle func MB_WRITE_LOCAL_REG(uint32, uint16, uint16)

extern demangle func MB_WRITE_H_REG_WITH_ADDR(pointer, uint16)
extern demangle func MB_READ_H_REG_FROM_ADDR(&uint16) -> uint16

extern demangle func MB_GET_ERROR(uint32) -> uint32
extern demangle func MB_READ_REMOTE_REG_WITH_INST(&ModbusRemModuleBase_t, &EEmb_modbus_remote_reg_t) -> uint16
//extern demangle func MB_READ_REMOTE_REG(uint32, uint32, uint32, uint8, uint16) -> uint16
extern demangle func MB_WRITE_REMOTE_REG_WITH_INST(&ModbusRemModuleBase_t, &EEmb_modbus_remote_reg_t, uint16)

extern demangle func MB_FORCE_READ_REMOTE_REGS(&ModbusRemModuleBase_t, &EEmb_modbus_remote_reg_t, &EEmb_modbus_remote_reg_t) -> uint32
extern demangle func MB_FORCE_WRITE_REMOTE_REGS(&ModbusRemModuleBase_t, &EEmb_modbus_remote_reg_t, &uint16, uint) -> uint32

//extern demangle func MB_WRITE_REMOTE_REG(uint32, uint32, uint32, uint8, uint16, uint16)
extern demangle func MODBUS_CFG(uint32, uint32, uint32, uint16)
extern demangle func UART_CFG(uint32, uint32, uint32, uint32)

extern demangle func MB_REMOTE_MODULE_ADD_INSTANCE(pointer)