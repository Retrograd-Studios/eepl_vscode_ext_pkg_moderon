import * from EEmbCore


let baudrates = [
	9600,
	19200,
	38400,
	115200,
	921600
]

let atCommands = [
	"AT\n",
	"AT+LED=ON\n",
	"AT+LED=OFF\n",
	"AT+GET_VALUE\n"
]


let MAX_MESSAGES = 50

var messages: string[MAX_MESSAGES]
var msgCount = 0

var currentAtCommand = 0


func addMessageToList(msg: &string) {

	messages[msgCount] = msg

	if msgCount < MAX_MESSAGES-1 {
		msgCount++
	}
}


func DrawGUI(ctx: &EG_userContext_t) {

	GUI_createContext() $$

	set_font(FONT_DEFAULT) $$

	layout(80, 1) $ 
	{
		list(20, true) $
		{

			for i in 0 ..< msgCount {
				row(false, 1) $
				{
					label(messages[i], GUI_ALIGN_LEFT) $$
				}
			}

			if !msgCount {
				row(false, 1) $
				{
					label("no messages", GUI_ALIGN_CENTER) $$
				}
			}
		}
	}

	layout(20, [80, 20]) $ 
	{
		combo_box(currentAtCommand, COLOR_WHITE, atCommands, true) $$
		button("send", COLOR_WHITE, 25, $(isButtonClick) {
			if isButtonClick {

				UART_WRITE(UART_COM_0, atCommands[currentAtCommand])

				let msg = UART_READ_LINE(UART_COM_0)
				if MB_GET_ERROR(UART_COM_0) == MB_ERROR_NO {
					addMessageToList(msg)
				} else {
					addMessageToList("ERR: rx timout")
				}
			}
		}) $$
	}
}


func init() {
	
	UART_CFG(UART_COM_0, 9600, UART_PARITY_NO, UART_ONE_STOPBIT)

	// enum  {
	// 	UART_MODE_MODBUS_RTU = 0,
	// 	UART_MODE_RAW_DATA,
	// 	UART_MODE_RAW_DATA_FLASHER // raw data with allow flasher protocol
	// }
	UART_SET_PROTOCOL(UART_COM_0, UART_MODE_RAW_DATA_FLASHER)

	UART_SET_TIMEOUT(UART_COM_0, 5000)

	GUI_setDraw(DrawGUI)
}


func loop() {
	DelayMs(100)
}
