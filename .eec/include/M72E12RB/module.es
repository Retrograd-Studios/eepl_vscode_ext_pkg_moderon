

import * from EEmbCore



struct M72E12RB_Module {


	//-- Begin (Must be call before start add Modbus regs)
	MODBUS_MODULE_DECLARE_BEGIN()

	//-- name, type (MB_REM_HOLDING/MB_REM_INPUT), address
	MODBUS_ADD_REMOTE_REG(resetAlarm, MB_REM_HOLDING, 0)
	MODBUS_ADD_REMOTE_REG(resetSettings, MB_REM_HOLDING, auto)

	MODBUS_ADD_REMOTE_REG(modbusAddr, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(uartBaudrate, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(uartParity, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(uartStopBits, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(modbusTimeout, MB_REM_HOLDING, auto)

	MODBUS_ADD_REMOTE_REG(relays, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(relaysDefault, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(relaysIsKeepValue, MB_REM_HOLDING, auto)

	MODBUS_ADD_REMOTE_REG(ui1_mode, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(ui2_mode, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(ui3_mode, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(ui4_mode, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(ui5_mode, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(ui6_mode, MB_REM_HOLDING, auto)

	MODBUS_ADD_REMOTE_REG(ui1_offset, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(ui2_offset, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(ui3_offset, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(ui4_offset, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(ui5_offset, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(ui6_offset, MB_REM_HOLDING, auto)

	MODBUS_ADD_REMOTE_REG(ui1_min, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(ui2_min, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(ui3_min, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(ui4_min, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(ui5_min, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(ui6_min, MB_REM_HOLDING, auto)

	MODBUS_ADD_REMOTE_REG(ui1_max, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(ui2_max, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(ui3_max, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(ui4_max, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(ui5_max, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(ui6_max, MB_REM_HOLDING, auto)

	MODBUS_ADD_REMOTE_REG(ao1_out, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(ao2_out, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(ao1_default_out, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(ao2_default_out, MB_REM_HOLDING, auto)


	MODBUS_ADD_REMOTE_REG(status, MB_REM_INPUT, 0)
	MODBUS_ADD_REMOTE_REG(inputs, MB_REM_INPUT, auto)
	MODBUS_ADD_REMOTE_REG(ui1_val, MB_REM_INPUT, auto)
	MODBUS_ADD_REMOTE_REG(ui2_val, MB_REM_INPUT, auto)
	MODBUS_ADD_REMOTE_REG(ui3_val, MB_REM_INPUT, auto)
	MODBUS_ADD_REMOTE_REG(ui4_val, MB_REM_INPUT, auto)
	MODBUS_ADD_REMOTE_REG(ui5_val, MB_REM_INPUT, auto)
	MODBUS_ADD_REMOTE_REG(ui6_val, MB_REM_INPUT, auto)
	MODBUS_ADD_REMOTE_REG(version, MB_REM_INPUT, auto)
	MODBUS_ADD_REMOTE_REG(serial_number, MB_REM_INPUT, auto)
	MODBUS_ADD_REMOTE_REG(pdate, MB_REM_INPUT, auto)


	//-- end (Must be call after All Modbus regs was added)
	MODBUS_MODULE_DECLARE_END()

	func init(portNum: uint32, devAddr: uint32, interval: uint32) {

		self.comPort = portNum
		self.devAddr = devAddr
		self.timeout = 300
		self.interval = interval
		self.interval2 = 10000
		self.isEnabled = 1
		self.errors = 0
		self.reqTryCount = 3
		self.isAutoRead = 1
		self.isHoldingsRead = 1
		self.isShowMessages = 1
		self.packSize = 0

		self.connectionRestoreCallback = connectionRestoreCB

		//-- Init Modbus Table for instance (Must be call after init instance)
		MODBUS_MODULE_INIT(self)

	}

	func GetError() -> uint32 {
		let error = self.errors
		self.errors = 0
		return error
	}

}

func connectionRestoreCB(inst: mut &ModbusRemModuleBase_t) {

	inst.errors = 0

}


// struct M72E12RA_SubModule {
// 	var1: uint32
// 	module01_ra: M72E12RA_Module
// 	var2: uint32
// }
