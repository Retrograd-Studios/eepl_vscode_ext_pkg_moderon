
import * from EEmbCore

import GUI

import M72E12RA as RM


var remModule: RM::M72E12RA_SubModule = {_}




func init() {

	
	remModule.var1 = 10

	//bkpt()
	remModule.module01_ra.regs.relays = 0x55

	let val = #remModule.module01_ra.regs
	Println("rm2: " + val)

	remModule.module01_ra.init(0, 1)

	Println("start init")



	Println("rm: " + remModule.module01_ra.regs.relays)
	

	for i in 0 to 6 {
		
		//bkpt()
		GUI::prevUIs[i] = GUI::UIs[i]
		
		Println("ui 1")
		UI_CFG(i, GUI::UIs[i])
		if GUI::UIs[i] == 0 {
			UI_CFG_SET_RANGE(i, 0, 1, 0)
		} else if GUI::UIs[i] == 1 {
			UI_CFG_SET_RANGE(i, 40, 200, 0)
		} else if GUI::UIs[i] == 2 {
			UI_CFG_SET_RANGE(i, -600, 800, 0)
			UI_CFG_SET_B(i, 1050)
		}
	}

	Println("after ui")

	GUI_setDraw(GUI::DrawMainScreen)

	Println("end init")
}





func loop() {
	DelayMs(10)
}
