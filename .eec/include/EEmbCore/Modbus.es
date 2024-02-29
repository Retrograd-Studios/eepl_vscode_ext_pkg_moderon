
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




struct ModbusIRegGroup_t {
	regs: &uint16
	defaults: &uint16
	startAddr: uint16
	count: uint16
}

struct ModbusHRegGroup_t {
	regs: &uint16
	defaults: &uint16
	ranges: &uint16
	startAddr: uint16
	count: uint16
}

struct ModbusRemoteGrpReg_t {
	regs: &uint16
	startAddr: uint32
	count: uint16
	regTp: uint16
}

struct ModbusRemoteRegTable_t {
	regs: &ModbusRemoteGrpReg_t
	count: uint32
}






struct ModbusRemModuleBase_t {
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
	regs: pointer
}





struct EEmb_modbus_local_h_t {
	
	ptr: &uint16

	func OperatorGetValue() -> uint16 {
		return MB_READ_H_REG_FROM_ADDR(self.ptr)
	}

	func OperatorGetValue(self: &EEmb_modbus_local_h_t) -> uint16 {
		return MB_READ_H_REG_FROM_ADDR(self.ptr)
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

}

struct EEmb_modbus_local_i_t {

	ptr: mut &uint16

	func OperatorGetValue() -> uint16 {
		return self.ptr
	}

	func OperatorGetValue(self: &EEmb_modbus_local_i_t) -> uint16 {
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

	// func OperatorGetRef() -> &uint16 {
	// 	return self.ptr
	// }

	// func OperatorGetRef(self: &EEmb_modbus_remote_reg_t) -> &uint16 {
	// 	return self.ptr
	// }

	func OperatorCopy(instance: &ModbusRemModuleBase_t, rval: uint16) {
		MB_WRITE_REMOTE_REG_WITH_INST(instance, self, rval)
	}

	func OperatorCopy(self: &EEmb_modbus_remote_reg_t, instance: &ModbusRemModuleBase_t, rval: uint16) {
		MB_WRITE_REMOTE_REG_WITH_INST(instance, self, rval)
	}
}





extern demangle func MB_READ_LOCAL_REG(uint32, uint16) -> uint16
extern demangle func MB_WRITE_LOCAL_REG(uint32, uint16, uint16)

extern demangle func MB_WRITE_H_REG_WITH_ADDR(pointer, uint16)
extern demangle func MB_READ_H_REG_FROM_ADDR(&uint16) -> uint16

extern demangle func MB_GET_ERROR(uint32) -> uint32
extern demangle func MB_READ_REMOTE_REG(uint32, uint32, uint32, uint8, uint16) -> uint16
extern demangle func MB_WRITE_REMOTE_REG_WITH_INST(&ModbusRemModuleBase_t, &EEmb_modbus_remote_reg_t, uint16)
extern demangle func MB_WRITE_REMOTE_REG(uint32, uint32, uint32, uint8, uint16, uint16)
extern demangle func MODBUS_CFG(uint32, uint32, uint32, uint16)
extern demangle func UART_CFG(uint32, uint32, uint32, uint32)

extern demangle func MB_REMOTE_MODULE_ADD_INSTANCE(pointer)