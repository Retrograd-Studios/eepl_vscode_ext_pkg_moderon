import * from EEmbCore

import Modbus as MB


/*
struct GUI_TP {
	foo: &MB::MBL_TP_01
	bar: MB::MBL_TP_02
}
*/

var  prevUIs: uint16[7]


let AOs: mut &EEmb_modbus_local_h_t[2] = [
	MB::MBL_H_PWM1_OUT,
	MB::MBL_H_PWM2_OUT
]

let  UIs: mut &EEmb_modbus_local_h_t[7] = [
	MB::MBL_H_UI1_MODE,
	MB::MBL_H_UI2_MODE,
	MB::MBL_H_UI3_MODE,
	MB::MBL_H_UI4_MODE,
	MB::MBL_H_UI5_MODE,
	MB::MBL_H_UI6_MODE,
	MB::MBL_H_UI7_MODE
]

let  UI_vals: mut &EEmb_modbus_local_i_t[7] = [
	MB::MBL_I_UI1_VAL,
	MB::MBL_I_UI2_VAL,
	MB::MBL_I_UI3_VAL,
	MB::MBL_I_UI4_VAL,
	MB::MBL_I_UI5_VAL,
	MB::MBL_I_UI6_VAL,
	MB::MBL_I_UI7_VAL
]




func DrawMenuScreen(ctx: &EG_userContext_t) {

	
	//var relays: mut &EEmb_modbus_local_h_t// = #MBL_H_RELAYS
	//var relays: uint32 = MBL_H_RELAYS

	//let a  = ctx.data.data
	//Println(""+a)
	//ctx.data.data++


	//let prevAllocs = AllocatedCount
	//let prevDestoyed = DestroyedCount

	//Println("Prev Allocs: "+prevAllocs)
	//Println("Prev Destroyed: "+prevDestoyed)


	GUI_createContext() $$

	//let bgColor = GET_COLOR(60, 69, 67)
	//set_color(COLOR_BLACK, bgColor) $$

	set_font(FONT_DEFAULT) $$

	GUI_buttonHandler(BUTTON_ESC, $(isClick) {
	
			if isClick {
				Println("click main")
				GUI_setDraw(DrawMainScreen)
			} else {
			
			}

	})

	layout(20, 1) $
	{
		set_borders(0x00) $$
		button("click Me", COLOR_WHITE, 0, $(e) {

			var isClick = false

			if e {
				isClick = 1
				//Println("Click")
			} else {
				isClick = false
				//Println("unclick")
			}

			if isClick {
				//Println("Yes, Click!")
			}
			
		}) $$
	}
	layout(80, 1) $ 
	{
		list(20, true) $
		{

			var inputs = 0

			for i in 0 to 6 {
				row(false, 3) $
				{
					let label = "AI [" + (i+1) + "]: "
					label(label, GUI_ALIGN_CENTER) $$
					input_int(UIs[i], 0, 2, GUI_ALIGN_CENTER, true) $$
						if UIs[i] == 0 {
							var di = UI_READ_DI(i) ? 1 : 0
							combo_box(di, COLOR_WHITE, ["false", "true"], 2,  false) $$
						} else if UIs[i] == 1 {
							var ai = UI_READ_AI(i)
							input_float(ai, 4.0f, 20.f, 1, GUI_ALIGN_CENTER, false) $$
						} else if UIs[i] == 2 {
							var ai = UI_READ_AI(i)
							input_float(ai, -60.0f, 80.f, 1, GUI_ALIGN_CENTER, false) $$
						}
				}

				if UIs[i] == 0 {
					var di = UI_READ_DI(i) ? 1 : 0
					inputs |= (di << i)
					UI_vals[i] = di
				} else {
					var ai = UI_READ_AI(i)
					UI_vals[i] = ai
				}

				if (prevUIs[i] != UIs[i]) {
					prevUIs[i] = UIs[i]
					UI_CFG(i, UIs[i])
					if UIs[i] == 0 {
						UI_CFG_SET_RANGE(i, 0, 1, 0)
					} else if UIs[i] == 1 {
						UI_CFG_SET_RANGE(i, 40, 200, 0)
					} else if UIs[i] == 2 {
						UI_CFG_SET_RANGE(i, -600, 800, 0)
						UI_CFG_SET_B(i, 1050)
					}
				}
			}

			MB::MBL_I_INPUTS = inputs
			

			for i in 0 to 2-1 {
				row(false, 2) $
				{
					let label = "AO [" + (i+1) + "]: "
					label(label, GUI_ALIGN_CENTER) $$
					input_int(AOs[i], 0, 10000, GUI_ALIGN_CENTER, true) $$
				}
				AO_OUTPUT(i, AOs[i])
			}

			for i in 0 to 4-1 {
				row(false, 2) $
				{
					let label = "Relay [" + (i+1) + "]: "
					label(label, GUI_ALIGN_CENTER) $$
					switcher(MB::MBL_H_RELAYS, i) $$
				}
			}
			RELAYS_SET(MB::MBL_H_RELAYS, 1)
			RELAYS_SET(~MB::MBL_H_RELAYS, 0)
			//MBL_H_RELAYS = relays
		}
	}

	//let allocs =  AllocatedCount - prevAllocs
	//let destoyed =  DestroyedCount - prevDestoyed

	//Println( "Allocs: " + allocs )
	//Println( "Destroyed: " + destoyed )

	// layout(20, 1) $ 
	// {
	// 	var tmp = 0
	// 	switcher(tmp, 0) $$
	// }
}