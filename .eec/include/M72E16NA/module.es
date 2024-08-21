

import * from EEmbCore


struct M72E16NA_Module {

	//-- Begin (Must be call before start add Modbus regs)
	MODBUS_MODULE_DECLARE_BEGIN()

	//-- name, type (MB_REM_HOLDING/MB_REM_INPUT), address
	MODBUS_ADD_REMOTE_REG(resetAlarm, MB_REM_HOLDING, 0)
	MODBUS_ADD_REMOTE_REG(resetSettings, MB_REM_HOLDING, auto) // если регистры идут по порядку, то можно вместо адреса указывать "auto"

	MODBUS_ADD_REMOTE_REG(modbusAddr, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(uartBaudrate, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(uartParity, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(uartStopBits, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(modbusTimeout, MB_REM_HOLDING, auto)

	MODBUS_ADD_REMOTE_REG(ui1_mode, MB_REM_HOLDING, 10)
	MODBUS_ADD_REMOTE_REG(ui2_mode, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(ui3_mode, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(ui4_mode, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(ui5_mode, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(ui6_mode, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(ui7_mode, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(ui8_mode, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(ui9_mode, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(ui10_mode, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(ui11_mode, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(ui12_mode, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(ui13_mode, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(ui14_mode, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(ui15_mode, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(ui16_mode, MB_REM_HOLDING, auto)

	MODBUS_ADD_REMOTE_REG(ui1_offset, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(ui2_offset, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(ui3_offset, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(ui4_offset, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(ui5_offset, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(ui6_offset, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(ui7_offset, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(ui8_offset, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(ui9_offset, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(ui10_offset, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(ui11_offset, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(ui12_offset, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(ui13_offset, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(ui14_offset, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(ui15_offset, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(ui16_offset, MB_REM_HOLDING, auto)

	MODBUS_ADD_REMOTE_REG(ui1_min, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(ui2_min, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(ui3_min, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(ui4_min, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(ui5_min, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(ui6_min, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(ui7_min, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(ui8_min, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(ui9_min, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(ui10_min, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(ui11_min, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(ui12_min, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(ui13_min, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(ui14_min, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(ui15_min, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(ui16_min, MB_REM_HOLDING, auto)

	MODBUS_ADD_REMOTE_REG(ui1_max, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(ui2_max, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(ui3_max, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(ui4_max, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(ui5_max, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(ui6_max, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(ui7_max, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(ui8_max, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(ui9_max, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(ui10_max, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(ui11_max, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(ui12_max, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(ui13_max, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(ui14_max, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(ui15_max, MB_REM_HOLDING, auto)
	MODBUS_ADD_REMOTE_REG(ui16_max, MB_REM_HOLDING, auto)

	MODBUS_ADD_REMOTE_REG(status, MB_REM_INPUT, 0)
	MODBUS_ADD_REMOTE_REG(inputs, MB_REM_INPUT, auto)

	MODBUS_ADD_REMOTE_REG(ui1_val, MB_REM_INPUT, auto)
	MODBUS_ADD_REMOTE_REG(ui2_val, MB_REM_INPUT, auto)
	MODBUS_ADD_REMOTE_REG(ui3_val, MB_REM_INPUT, auto)
	MODBUS_ADD_REMOTE_REG(ui4_val, MB_REM_INPUT, auto)
	MODBUS_ADD_REMOTE_REG(ui5_val, MB_REM_INPUT, auto)
	MODBUS_ADD_REMOTE_REG(ui6_val, MB_REM_INPUT, auto)
	MODBUS_ADD_REMOTE_REG(ui7_val, MB_REM_INPUT, auto)
	MODBUS_ADD_REMOTE_REG(ui8_val, MB_REM_INPUT, auto)
	MODBUS_ADD_REMOTE_REG(ui9_val, MB_REM_INPUT, auto)
	MODBUS_ADD_REMOTE_REG(ui10_val, MB_REM_INPUT, auto)
	MODBUS_ADD_REMOTE_REG(ui11_val, MB_REM_INPUT, auto)
	MODBUS_ADD_REMOTE_REG(ui12_val, MB_REM_INPUT, auto)
	MODBUS_ADD_REMOTE_REG(ui13_val, MB_REM_INPUT, auto)
	MODBUS_ADD_REMOTE_REG(ui14_val, MB_REM_INPUT, auto)
	MODBUS_ADD_REMOTE_REG(ui15_val, MB_REM_INPUT, auto)
	MODBUS_ADD_REMOTE_REG(ui16_val, MB_REM_INPUT, auto)


	//-- end (Must be call after All Modbus regs was added)
	MODBUS_MODULE_DECLARE_END()

	func init(portNum: uint32, devAddr: uint32, interval: uint32) {

		self.comPort = portNum // номер порта контроллера к которому подключаем slave устройство
		self.devAddr = devAddr // адрес slave устройства
		self.timeout = 300 // ожидание ответа
		self.interval = interval // частота опроса модуля (необходимо учитывать сколько времени занимает опрос остальных модулей)
		self.interval2 = 10000 // частота опроса модуля, если обнаружена ошибка связи (если после указанного кол-ва попыток не удалось связаться)
		self.isEnabled = 1 // активация опроса устройства
		self.errors = 0 /* хранит статус любого последнего запроса и никогда его сама не сбрасыват (для автосброса вызывайте функцию func GetError()):
		                   - EEMB_ERROR_NO = 0,
                           - EEMB_ERROR_MB_FUNC_NOTFOUND = 1,
                           - EEMB_ERROR_MB_ILLEGAL_ADDR = 2,
                           - EEMB_ERROR_MB_ILLEGAL_DATA = 3,
                           - EEMB_ERROR_MB_END_STANDART_ERROR = 4,
                           - EEMB_ERROR_MB_TIMEOUT = 0x0B,
                           - EEMB_ERROR_MB_CRC = 0x0C */
		self.reqTryCount = 3 // кол-во попыток связаться с модулем
		self.isAutoRead = 1 // 1 = автоматический опрос устройства с указанным периодом (данные будут храниться в буфере и браться из буфера), 0 = опрос устройства по запросу (обрашение к устройству только тогда, когда в исполняемом коде будут запрошены данные его регистров)
		self.isHoldingsRead = 1 // 1 = включает чтение холдинг регистров в автоматическом опросе (когда isAutoRead = 1). Если устройво не поддерживает чтение holding или вам это не требуется, тогда установите значение = 0.
		self.isShowMessages = 1 // вывод системного сообщения на экран, об ошибке связи с устройством
		self.packSize = 0 // Максимальный размер пакета (кол-во регистров) в одном запросе. 0 = без ограничений
		
		self.connectionRestoreCallback = connectionRestoreCB

		//-- Init Modbus Table for instance (Must be call after init instance)
		MODBUS_MODULE_INIT(self)

	}

	func GetError() -> uint32 {  // функция проверки наличия ошибки связи. Функция вернет статус последнего запроса и обнулит ошибку. В следующем цикле, если ошибок связи не было, то функция вернет 0.
		let error = self.errors
		self.errors = 0
		return error
	}
	/* например:
	   if !module.GetError() {  // прежде, чем записать данные в устройство мы проверяем, нет ли ошибки связи вызвав функцию "module.GetError()" из основного кода.
           module.regs.relays = 0x01
       }
	*/
}


func connectionRestoreCB(inst: mut &ModbusRemModuleBase_t) {

	inst.errors = 0

}
