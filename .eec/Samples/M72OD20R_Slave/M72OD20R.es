import * from EEmbCore


//------------ HOLDINGS -------------//
// reg_name, reg_addr, min_val, max_val, default_val, is_save_to_flash
MODBUS_ADD_LOCAL_H_REG(MBL_H_RESET_ALARM, 0, 0, 1, 0, 1)
MODBUS_ADD_LOCAL_H_REG(MBL_H_RESET_SETTINGS, auto, 0, 1, 0, 1)

MODBUS_ADD_LOCAL_H_REG(MBL_H_MODBUS_ADDR, auto, 1, 0xFF, 1, 1)
MODBUS_ADD_LOCAL_H_REG(MBL_H_UART_BEAT_RATE, auto, 0, 4, 0, 1)
MODBUS_ADD_LOCAL_H_REG(MBL_H_UART_PARITY, auto, 0, 1, 0, 1)
MODBUS_ADD_LOCAL_H_REG(MBL_H_UART_STOP_BITS, auto, 0, 1, 0, 1)
MODBUS_ADD_LOCAL_H_REG(MBL_H_MODBUS_TIMEOUT, auto, 0, 0xFF, 0, 1)

MODBUS_ADD_LOCAL_H_REG(MBL_H_RELAYS, auto, 0, 0b111111, 0, 1) //-- 7
MODBUS_ADD_LOCAL_H_REG(MBL_H_RELAYS_DEAFULT, auto, 0, 0x3F, 0, 1)
MODBUS_ADD_LOCAL_H_REG(MBL_H_RELAYS_KEEP_VALUE, auto, 0, 1, 0, 1)

MODBUS_ADD_LOCAL_H_REG(MBL_H_UI1_MODE, auto, 0, 3, 0, 1) //-- 10 0xa
MODBUS_ADD_LOCAL_H_REG(MBL_H_UI2_MODE, auto, 0, 3, 0, 1)
MODBUS_ADD_LOCAL_H_REG(MBL_H_UI3_MODE, auto, 0, 3, 0, 1)
MODBUS_ADD_LOCAL_H_REG(MBL_H_UI4_MODE, auto, 0, 3, 0, 1)
MODBUS_ADD_LOCAL_H_REG(MBL_H_UI5_MODE, auto, 0, 3, 0, 1)
MODBUS_ADD_LOCAL_H_REG(MBL_H_UI6_MODE, auto, 0, 3, 0, 1)
MODBUS_ADD_LOCAL_H_REG(MBL_H_UI7_MODE, auto, 0, 3, 0, 1) //-- 16 0x10

MODBUS_ADD_LOCAL_H_REG(MBL_H_UI8_MODE, auto, 0, 3, 0, 1) //-- 16 0x10
MODBUS_ADD_LOCAL_H_REG(MBL_H_UI9_MODE, auto, 0, 3, 0, 1) //-- 16 0x10
MODBUS_ADD_LOCAL_H_REG(MBL_H_UI10_MODE, auto, 0, 3, 0, 1) //-- 16 0x10
MODBUS_ADD_LOCAL_H_REG(MBL_H_UI11_MODE, auto, 0, 3, 0, 1) //-- 16 0x10

MODBUS_ADD_LOCAL_H_REG(MBL_H_UI1_OFFSET, auto, 0, 0xFFFF, 0, 1)
MODBUS_ADD_LOCAL_H_REG(MBL_H_UI2_OFFSET, auto, 0, 0xFFFF, 0, 1)
MODBUS_ADD_LOCAL_H_REG(MBL_H_UI3_OFFSET, auto, 0, 0xFFFF, 0, 1)
MODBUS_ADD_LOCAL_H_REG(MBL_H_UI4_OFFSET, auto, 0, 0xFFFF, 0, 1)
MODBUS_ADD_LOCAL_H_REG(MBL_H_UI5_OFFSET, auto, 0, 0xFFFF, 0, 1)
MODBUS_ADD_LOCAL_H_REG(MBL_H_UI6_OFFSET, auto, 0, 0xFFFF, 0, 1)
MODBUS_ADD_LOCAL_H_REG(MBL_H_UI7_OFFSET, auto, 0, 0xFFFF, 0, 1) //-- 23

MODBUS_ADD_LOCAL_H_REG(MBL_H_UI8_OFFSET, auto, 0, 0xFFFF, 0, 1) //-- 23
MODBUS_ADD_LOCAL_H_REG(MBL_H_UI9_OFFSET, auto, 0, 0xFFFF, 0, 1) //-- 23
MODBUS_ADD_LOCAL_H_REG(MBL_H_UI10_OFFSET, auto, 0, 0xFFFF, 0, 1) //-- 23
MODBUS_ADD_LOCAL_H_REG(MBL_H_UI11_OFFSET, auto, 0, 0xFFFF, 0, 1) //-- 23

MODBUS_ADD_LOCAL_H_REG(MBL_H_UI1_MIN, auto, 0, 0xFFFF, 0, 1)
MODBUS_ADD_LOCAL_H_REG(MBL_H_UI2_MIN, auto, 0, 0xFFFF, 0, 1)
MODBUS_ADD_LOCAL_H_REG(MBL_H_UI3_MIN, auto, 0, 0xFFFF, 0, 1)
MODBUS_ADD_LOCAL_H_REG(MBL_H_UI4_MIN, auto, 0, 0xFFFF, 0, 1)
MODBUS_ADD_LOCAL_H_REG(MBL_H_UI5_MIN, auto, 0, 0xFFFF, 0, 1)
MODBUS_ADD_LOCAL_H_REG(MBL_H_UI6_MIN, auto, 0, 0xFFFF, 0, 1)
MODBUS_ADD_LOCAL_H_REG(MBL_H_UI7_MIN, auto, 0, 0xFFFF, 0, 1) //-- 30

MODBUS_ADD_LOCAL_H_REG(MBL_H_UI8_MIN, auto, 0, 0xFFFF, 0, 1) //-- 30
MODBUS_ADD_LOCAL_H_REG(MBL_H_UI9_MIN, auto, 0, 0xFFFF, 0, 1) //-- 30
MODBUS_ADD_LOCAL_H_REG(MBL_H_UI10_MIN, auto, 0, 0xFFFF, 0, 1) //-- 30
MODBUS_ADD_LOCAL_H_REG(MBL_H_UI11_MIN, auto, 0, 0xFFFF, 0, 1) //-- 30

MODBUS_ADD_LOCAL_H_REG(MBL_H_UI1_MAX, auto, 0, 0xFFFF, 1000, 1)
MODBUS_ADD_LOCAL_H_REG(MBL_H_UI2_MAX, auto, 0, 0xFFFF, 1000, 1)
MODBUS_ADD_LOCAL_H_REG(MBL_H_UI3_MAX, auto, 0, 0xFFFF, 1000, 1)
MODBUS_ADD_LOCAL_H_REG(MBL_H_UI4_MAX, auto, 0, 0xFFFF, 1000, 1)
MODBUS_ADD_LOCAL_H_REG(MBL_H_UI5_MAX, auto, 0, 0xFFFF, 1000, 1)
MODBUS_ADD_LOCAL_H_REG(MBL_H_UI6_MAX, auto, 0, 0xFFFF, 1000, 1)
MODBUS_ADD_LOCAL_H_REG(MBL_H_UI7_MAX, auto, 0, 0xFFFF, 1000, 1) //-- 37

MODBUS_ADD_LOCAL_H_REG(MBL_H_UI8_MAX, auto, 0, 0xFFFF, 1000, 1) //-- 37
MODBUS_ADD_LOCAL_H_REG(MBL_H_UI9_MAX, auto, 0, 0xFFFF, 1000, 1) //-- 37
MODBUS_ADD_LOCAL_H_REG(MBL_H_UI10_MAX, auto, 0, 0xFFFF, 1000, 1) //-- 37
MODBUS_ADD_LOCAL_H_REG(MBL_H_UI11_MAX, auto, 0, 0xFFFF, 1000, 1) //-- 37


MODBUS_ADD_LOCAL_H_REG(MBL_H_PWM1_OUT, auto, 0, 10000, 0, 1)
MODBUS_ADD_LOCAL_H_REG(MBL_H_PWM2_OUT, auto, 0, 10000, 0, 1)
MODBUS_ADD_LOCAL_H_REG(MBL_H_PWM3_OUT, auto, 0, 10000, 0, 1)
MODBUS_ADD_LOCAL_H_REG(MBL_H_PWM1_DEF_OUT, auto, 0, 10000, 0, 1)
MODBUS_ADD_LOCAL_H_REG(MBL_H_PWM2_DEF_OUT, auto, 0, 10000, 0, 1)
MODBUS_ADD_LOCAL_H_REG(MBL_H_PWM3_DEF_OUT, auto, 0, 10000, 0, 1)
//--------------------------------------//


//--------------- INPUTS -----------//
MODBUS_ADD_LOCAL_I_REG(MBL_I_STATUS, 0, 0)
MODBUS_ADD_LOCAL_I_REG(MBL_I_INPUTS, auto, 0)

MODBUS_ADD_LOCAL_I_REG($int16$ MBL_I_UI1_VAL, auto, 0)
MODBUS_ADD_LOCAL_I_REG($int16$ MBL_I_UI2_VAL, auto, 0)
MODBUS_ADD_LOCAL_I_REG($int16$ MBL_I_UI3_VAL, auto, 0)
MODBUS_ADD_LOCAL_I_REG($int16$ MBL_I_UI4_VAL, auto, 0)
MODBUS_ADD_LOCAL_I_REG($int16$ MBL_I_UI5_VAL, auto, 0)
MODBUS_ADD_LOCAL_I_REG($int16$ MBL_I_UI6_VAL, auto, 0)
MODBUS_ADD_LOCAL_I_REG($int16$ MBL_I_UI7_VAL, auto, 0)

MODBUS_ADD_LOCAL_I_REG($int16$ MBL_I_UI8_VAL, auto, 0)
MODBUS_ADD_LOCAL_I_REG($int16$ MBL_I_UI9_VAL, auto, 0)
MODBUS_ADD_LOCAL_I_REG($int16$ MBL_I_UI10_VAL, auto, 0)
MODBUS_ADD_LOCAL_I_REG($int16$ MBL_I_UI11_VAL, auto, 0)

MODBUS_ADD_LOCAL_I_REG(MBL_VAR_VER, auto, 0)
MODBUS_ADD_LOCAL_I_REG(MBL_VAR_SERIAL_NUMBER, auto, 0)
MODBUS_ADD_LOCAL_I_REG(MBL_VAR_PDATE, auto, 0)
//-------------------------------------//


let AOs = [
	MBL_H_PWM1_OUT.GetPtr(),
	MBL_H_PWM2_OUT,
	MBL_H_PWM3_OUT
]

let  UIs = [
	MBL_H_UI1_MODE.GetPtr(),
	MBL_H_UI2_MODE,
	MBL_H_UI3_MODE,
	MBL_H_UI4_MODE,
	MBL_H_UI5_MODE,
	MBL_H_UI6_MODE,
	MBL_H_UI7_MODE,

	MBL_H_UI8_MODE,
	MBL_H_UI9_MODE,
	MBL_H_UI10_MODE,
	MBL_H_UI11_MODE
]

let  UI_vals = [
	MBL_I_UI1_VAL.GetPtr(),
	MBL_I_UI2_VAL,
	MBL_I_UI3_VAL,
	MBL_I_UI4_VAL,
	MBL_I_UI5_VAL,
	MBL_I_UI6_VAL,
	MBL_I_UI7_VAL,

	MBL_I_UI8_VAL,
	MBL_I_UI9_VAL,
	MBL_I_UI10_VAL,
	MBL_I_UI11_VAL
]

let baudrates = [
	9600,
	19200,
	38400,
	115200,
	921600
]


func DrawGUI(ctx: &EG_userContext_t) {

	GUI_createContext() $$

	set_font(FONT_DEFAULT) $$

	layout(100, 1) $ 
	{
		list(20, true) $
		{
			var inputs = 0

			for i, reg in UIs {

				// read and save UI value to reg
				if reg == 0 {
					var di = UI_READ_DI(i) ? 1 : 0
					inputs |= (di << i)
					UI_vals[i] = di
				} else {
					var ai = UI_READ_AI(i)
					UI_vals[i] = ai
				}

				// try draw row
				row(false, 3) $
				{
					let label = "AI [" + (i+1) + "]: "
					label(label, GUI_ALIGN_CENTER) $$

					// draw mode
					input_int(reg, 0, 2, GUI_ALIGN_CENTER, true) $$
							
					// draw UI value
					if reg == 0 {
						combo_box(UI_vals[i], COLOR_WHITE, ["false", "true"], 2,  false) $$
					} else if reg == 1 {
						input_float(UI_vals[i], 4.0f, 20.f, 1, GUI_ALIGN_CENTER, false) $$
					} else if reg == 2 {
						input_float(UI_vals[i], -600.0f, 800.f, 1, GUI_ALIGN_CENTER, false) $$
					}
				}
			}

			// save bits to reg for DIs
			MBL_I_INPUTS = inputs

			for i, reg in AOs {
				row(false, 3) $
				{
					let label = "AO [" + (i+1) + "]: "
					label(label, GUI_ALIGN_CENTER) $$
					fill(COLOR_WHITE) $$
					input_int(reg, 0, 10000, GUI_ALIGN_CENTER, true) $$
				}
			}

			for i in 0 to RELAYS_COUNT-1 {
				row(false, [50, 25, 25]) $
				{
					let label = "Relay [" + (i+1) + "]: "
					label(label, GUI_ALIGN_CENTER) $$
					fill(COLOR_WHITE) $$
					switcher(MBL_H_RELAYS, i) $$
				}
			}

		}
	}
}


func init() {
	
	UART_CFG(UART_COM_0, baudrates[MBL_H_UART_BEAT_RATE], MBL_H_UART_PARITY, MBL_H_UART_STOP_BITS)
	UART_CFG(UART_COM_1, baudrates[MBL_H_UART_BEAT_RATE], MBL_H_UART_PARITY, MBL_H_UART_STOP_BITS)

	MODBUS_CFG(UART_COM_0, MB_SLAVE_ID, MBL_H_MODBUS_TIMEOUT, MBL_H_MODBUS_ADDR)
	MODBUS_CFG(UART_COM_1, MB_SLAVE_ID, MBL_H_MODBUS_TIMEOUT, MBL_H_MODBUS_ADDR)

	MODBUS_SET_LOCAL_CHANGED_CALLBACK($(changedReg) {

		if changedReg.ptr == MBL_H_RESET_ALARM.ptr {
			return true
		}
		
		if changedReg.ptr >= MBL_H_UART_BEAT_RATE.ptr 
			&& changedReg.ptr <= MBL_H_UART_BEAT_RATE.ptr {
			
			UART_CFG(UART_COM_0, baudrates[MBL_H_UART_BEAT_RATE], MBL_H_UART_PARITY, MBL_H_UART_STOP_BITS)
			UART_CFG(UART_COM_1, baudrates[MBL_H_UART_BEAT_RATE], MBL_H_UART_PARITY, MBL_H_UART_STOP_BITS)
			return true
		}

		if changedReg.ptr == MBL_H_MODBUS_ADDR.ptr 
			|| changedReg.ptr <= MBL_H_MODBUS_TIMEOUT.ptr {
		
			MODBUS_CFG(UART_COM_0, MB_SLAVE_ID, MBL_H_MODBUS_TIMEOUT, MBL_H_MODBUS_ADDR)
			MODBUS_CFG(UART_COM_1, MB_SLAVE_ID, MBL_H_MODBUS_TIMEOUT, MBL_H_MODBUS_ADDR)
			return true
		}

		if changedReg.ptr == MBL_H_RELAYS.ptr {
			RELAYS_SET(~MBL_H_RELAYS, 0)
			RELAYS_SET(MBL_H_RELAYS, 1)
			return true
		}

		if changedReg.ptr >= MBL_H_UI1_MODE.ptr 
			&& changedReg.ptr <= MBL_H_UI11_MODE.ptr {
			
			let idx = (CastTo($int32$ changedReg.ptr) - CastTo($int32$ MBL_H_UI1_MODE.ptr)) / 2
			Println(`(${changedReg.ptr} - ${MBL_H_UI1_MODE.ptr}) / ${2} = ${idx}`)
			UI_CFG(idx, UIs[idx])
			return true
		}

		if changedReg.ptr >= MBL_H_PWM1_OUT.ptr 
			&& changedReg.ptr <= MBL_H_PWM2_OUT.ptr {
			
			let idx: uint32 = (CastTo($int32$ changedReg.ptr) - CastTo($int32$ MBL_H_PWM1_OUT.ptr)) / 2
			AO_OUTPUT(idx, AOs[idx])
			return true
		}

		return false

	})

	for i, reg in UIs {
		UI_CFG(i, reg)
		if reg == 0 {
			UI_CFG_SET_RANGE(i, 0, 1, 0)
		} else if reg == 1 {
			UI_CFG_SET_RANGE(i, 40, 200, 0)
		} else if reg == 2 {
			UI_CFG_SET_RANGE(i, -6000, 8000, 0)
			UI_CFG_SET_B(i, 3950)
		}
	}

	MBL_H_PWM1_OUT = MBL_H_PWM1_DEF_OUT
	MBL_H_PWM2_OUT = MBL_H_PWM2_DEF_OUT
	MBL_H_PWM3_OUT = MBL_H_PWM3_DEF_OUT

	AO_OUTPUT(AO_1, MBL_H_PWM1_OUT)
	AO_OUTPUT(AO_2, MBL_H_PWM2_OUT)
	AO_OUTPUT(AO_3, MBL_H_PWM3_OUT)

	//reset all relays
	RELAYS_SET(0b111111, 0)

	//set relays
	if MBL_H_RELAYS_KEEP_VALUE {
		RELAYS_SET(MBL_H_RELAYS, 1)
	} else {
		RELAYS_SET(MBL_H_RELAYS_DEAFULT, 1)
	}

	GUI_setDraw(DrawGUI)
}


func loop() {
	DelayMs(100)
}
