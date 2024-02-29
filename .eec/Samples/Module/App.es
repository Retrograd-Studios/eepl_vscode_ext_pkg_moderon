
import * from EEmbCore

import GUI

import M72E12RA as RM


var remModule: RM::M72E12RA_SubModule = {_}




func init() {

	
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


	GUI_setDraw(GUI::DrawMainScreen)

}





func loop() {
	DelayMs(10)
}
