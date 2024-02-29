import ALL from EEmbCore

import remModule as rem from main






func DrawMainScreen(ctx: &EG_userContext_t) {

	let remoteRegs: &EEmbBindVal_t [3] = [
		rem.module01_ra.regs.relays,
		rem.module01_ra.regs.ui1_mode,
		rem.module01_ra.regs.ui2_mode
	]


	GUI_createContext() $$

	//Println("Start draw")

	//let bgColor = GET_COLOR(60, 69, 67)
	//set_color(COLOR_BLACK, bgColor) $$

	set_font(FONT_DEFAULT) $$

	GUI_buttonHandler(BUTTON_ESC, $(isClick) {
	
			if isClick {
				Println("Click")
				GUI_setDraw(DrawMenuScreen)
			} else {
			
			}

	})

	layout(20, 1) $
	{
		set_borders(0x00) $$
		button("Abuse Mem", COLOR_WHITE, 0, $(e) {
			if e {
				let ptr = MemAlloc(256)
			}
		}) $$
	}

	layout(60, 1) $ 
	{
		list(20, true) $
		{
			for i in 0 to Length(remoteRegs)-1 {
				row(false, 2) $
				{
					let label = "Param [" + (i+1) + "]: "
					label(label, GUI_ALIGN_CENTER) $$
					input_int(remoteRegs[i], 0, 10000, GUI_ALIGN_CENTER, true) $$
				}
			}

			row(false, 2) $
				{
					let label = "Relays: "
					label(label, GUI_ALIGN_CENTER) $$
					input_int(rem.module01_ra.regs.relays, 0, 10000, GUI_ALIGN_CENTER, true) $$
				}
		}
	}


	bkpt()
	layout(20, [50, 50]) $
	{
		label("Free Heap: ", GUI_ALIGN_CENTER) $$
		var freeHeap = MemGetFreeHeapSize() / 1024.f
		//input_int(freeHeap, 0, 10000, GUI_ALIGN_CENTER, false) $$
		input_float(freeHeap, 0, 10000, 3, GUI_ALIGN_CENTER, false) $$
	}

// 	GUI_buttonHandler(BUTTON_ENTER, $(isClick) {
	
// 		if isClick {
// 			Println("enter")
// 			GUI_setDraw(DrawMenuScreen)
// 		} else {
		
// 		}

// })

	// layout(20, 3) $
	// {
	// 	set_borders(0x00) $$
	// 	button("btn 1", COLOR_WHITE, 0, $(e) {
			
	// 	}) $$
		
	// 	button("Menu", COLOR_WHITE, 0, $(e) {
		
	// 		if !e {
	// 			GUI_setDraw(DrawMenuScreen)
	// 		} 
			
	// 	}) $$
		
		
	// 	button("btn 2", COLOR_WHITE, 0, $(e) {
			
	// 	}) $$
	// }
}