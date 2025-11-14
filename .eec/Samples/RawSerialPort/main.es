import * from EEmbCore

import EEmbTimers as Timer

let baudrates = [
	9600,
	19200,
	38400,
	115200,
	921600
]

let txMsgs = [
	"MSG 1",
	"MSG 2",
	"MSG 3",
	"MSG 4",
	"MSG 5",
	"MSG 6"
]


let MAX_MESSAGES = 50

var messages: string[MAX_MESSAGES]
var msgCount = 0

var msgId = 0


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
		combo_box(msgId, COLOR_WHITE, txMsgs, true) $$
		button("send", COLOR_WHITE, 25, $(isButtonClick) {
			if !isButtonClick {
				UART_WRITE(UART_COM_0, txMsgs[msgId])
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

	UART_SET_TIMEOUT(UART_COM_0, 300)

	Timer::CreateTimer(0, 500, $(timer) {
		
		// get received bytes count
		let rxSize = UART_RX_SIZE(UART_COM_0)
		if !rxSize {
			return
		}

		let msg = UART_READ_LINE(UART_COM_0)
		if MB_GET_ERROR(UART_COM_0) == MB_ERROR_NO {
			addMessageToList(msg)
		}

	}).runDetach()

	GUI_setDraw(DrawGUI)
}


func loop() {
	DelayMs(100)
}
