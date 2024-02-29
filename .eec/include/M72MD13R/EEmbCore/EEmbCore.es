enum {
	UI_1 = 0,
	UI_2, UI_3, UI_4, UI_5,
	UI_6, UI_7,
	UI_INPUT_COUNT
}

enum {
	RELAY_1 = 0,
	RELAY_2, RELAY_3, RELAY_4,
	RELAYS_COUNT
}

enum {
	AO_1 = 0,
	AO_2,
	AO_COUNT
}




enum {
	UI_MODE_DI = 0,
	UI_MODE_AI,
	UI_MODE_TEMP
}

enum {
	EEMB_DISPLAY_WIDTH = 160,
	EEMB_DISPLAY_HEIGHT = 128
}


enum {
	BUTTON_LEFT = 0,
	BUTTON_RIGHT,
	BUTTON_DOWN,
	BUTTON_UP,
	BUTTON_ESC,
	BUTTON_ENTER
}

enum  {
	UART_COM_0 = 0,
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


extern demangle func GetGlobalTicks() -> uint32


