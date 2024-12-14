enum {
	UI_1 = 0,
	UI_2, UI_3, UI_4,
	UI_INPUT_COUNT
}

enum {
	RELAY_1 = 0,
	RELAY_2 = 1,
	LED_WORK = 2,	
	LED_ERROR = 3
}


enum {
	AO_1 = 0,
	AO_COUNT
}




enum {
	UI_MODE_DI = 0,
	UI_MODE_AI,
	UI_MODE_TEMP,
	UI_MODE_TEMP2,
	UI_MODE_FSR
}

enum {
	EEMB_DISPLAY_WIDTH = 160,
	EEMB_DISPLAY_HEIGHT = 128
}


enum {
	SW_MODE1 = 0,
	SW_MODE2,
	SW_CUR2,
	SW_CUR1,
	RS_RST,
	SW_FIRE
}

enum  {
	UART_COM_0 = 0,
	UART_COM_1,
	UART_COM_COUNT
}


enum  {
	UART_PARITY_NO = 0,
	UART_PARITY_EVEN,
	UART_PARITY_ODD,
	UART_PARITY_COUNT
}

enum  {
	UART_ONE_STOPBIT = 0,
	UART_TWO_STOPBIT,
	UART_STOPBITS_COUNT
}





enum {
	COLOR_BLACK = 0,
	COLOR_WHITE = 0xFFFF
} 



let DEV_deviceName = "M72FSR"
let DEV_manufacturerName = "Moderon"




extern demangle func SET_BUTTON_HANDLER( func {(uint32, uint32) -> void}  )
extern demangle func DelayMs( uint32 ) -> void

extern demangle func RELAY_SET(uint32, uint8)
extern demangle func RELAY_TOGGLE(uint32)
extern demangle func RELAYS_TOGGLE(uint32)
extern demangle func RELAYS_SET(uint32, uint8)
extern demangle func AO_OUTPUT(uint32, uint32)
extern demangle func UI_READ_DI(uint32) -> uint32
extern demangle func UI_READ_AI(uint32) -> int32
extern demangle func UI_READ_ALL_DI(uint32) -> uint32
extern demangle func UI_CFG(uint32, uint32)
extern demangle func UI_CFG_SET_RANGE(uint32, int32, int32, int32)
extern demangle func UI_CFG_SET_B(uint32, uint32)

// Get pin value
// args: uint8 - pin num from enum e.g. SW_MODE1
//extern demangle func BTN_GET_STATUS(uint8) -> uint8

func BTN_GET_STATUS(level: uint8)-> uint8{
	return level
}

// set power level
// args: uint32 - range 0-1000 (0-100%)
// extern demangle func FSR_setPowerLevel(uint32)

func FSR_setPowerLevel(level: uint32){
	var a = 5
	var b = 1
}

// Turn on/off
// args: uint8 - [0, 1]
// extern demangle func FSR_changeState(uint8)

func FSR_changeState(level: uint8){
	var a = 5
	var b = 1
}

// Get error code or resets it
// args: uint8 - [0, 255] - IS a flag to reset var (if arg: doReset())
// extern demangle func FSR_getResetErrorCode(uint8) -> uint8

func FSR_getResetErrorCode(code: uint8) -> uint8{
	return code
}

// setup parameters
// args: uint32 (overCurrentMask) 0 for 1A, 1 for 1.5A and so on.
// 		 uint8  (isFire)	[0, 1]
// Settings will act after FSR_changeState(1) is called.
// extern demangle func FSR_setupParams(uint32, uint8)

func FSR_setupParams(smth: uint32, level: uint8){
	var a = 5
	var b = 1
}
extern demangle func GetGlobalTicks() -> uint32



func LED_SET(mask: uint32, level: uint8){
	RELAY_SET(mask, level)
}

func LED_TOGGLE(mask: uint32){
	RELAY_TOGGLE(mask)
}

func LEDS_TOGGLE(mask: uint32){
	RELAYS_TOGGLE(mask)
}

func LEDS_SET(mask: uint32, level: uint8){
	RELAYS_SET(mask, level)
}



func __GetStringLength0(str: pointer) -> uint32 {

	var len = 0
	
	let arr = [1, 2]// CastTo($&uint8[0xFFFFFFFF]$ str)
	
	for i, v in arr {
		if v == '\0' {
			return i
		}
	}
	
	return 0
}

