

struct EG_context_t {

	perLayout: &uint32
	font: &FNT_font_t
	color: uint16
	bgColor: uint16
	id: uint16
	pos: uint16
	x: uint16
	y: uint16
	width: uint16
	height: uint16
	cX: uint16
	cY: uint16
	maxX: uint16
	minY: uint16
	isRedraw: uint8
	isSkip: uint8
	perLayoutPos: uint8
	cols: uint8
}


struct EG_userContext_t {
    cursorPos: &uint32
	data: mut &EG_dummyData_t
}

struct EG_dummyData_t {
    cursorPos: &uint32
	data: uint8
}

enum {
	GUI_ALIGN_LEFT = 0,
	GUI_ALIGN_RIGHT,
	GUI_ALIGN_CENTER
}




extern demangle func __eg_set_color(uint16, uint16, uint16)
extern demangle func __eg_set_font(&FNT_font_t, uint16)
extern demangle func __eg_row_begin(uint8, uint16, uint16)
extern demangle func __eg_row_draw()
extern demangle func __eg_layout_begin(uint16, uint16, uint16)
extern demangle func __eg_flow_layout_begin(uint16, uint16)
extern demangle func __eg_list_begin(uint16, uint8, uint16)
extern demangle func __eg_layout_draw()
extern demangle func __eg_flow_layout_draw()
extern demangle func __eg_label_draw(c_string, uint32, uint16)
extern demangle func __eg_img_draw(&IMG_dat_t, func {(uint8)->void}, uint8, uint16)
extern demangle func __eg_list_draw()
extern demangle func __eg_switcher_draw(&EEmbBindVal_t, uint8, uint16)
extern demangle func __eg_input_int_draw(&EEmbBindVal_t, int32, int32,  uint32,  uint8, uint16)
extern demangle func __eg_input_float_draw(&EEmbBindVal_t, int32, int32,  uint8, uint32,  uint8, uint16)
extern demangle func __eg_fill_draw(uint16, uint16)
extern demangle func __eg_button_draw(c_string, uint16, int8, func {(uint8)->void}, uint16)
extern demangle func __eg_combo_box_draw(&EEmbBindVal_t, uint16, uint32, array, array, uint8, uint16)
extern demangle func __eg_ghostStepInParent()
extern demangle func __eg_set_borders(uint16, uint16)
extern demangle func __eg_set_unit(c_string, uint16)

extern demangle func GUI_buttonHandler(uint32, func {(uint8)->void}) -> uint8
extern demangle func GUI_setDraw(func {(&EG_userContext_t)})
extern demangle func GUI_clearContext()
extern demangle func GUI_rowStartStep(uint8) -> uint8


extern demangle var EEMB_GUI_CONTEXT_PTR: mut &EG_context_t
extern demangle var EEMB_GUI_PARENT_CONTEXT_PTR: mut &EG_context_t



func __eg_set_per_layout(layouts: pointer) {
	//bkpt()
	EEMB_GUI_CONTEXT_PTR.perLayout <- layouts
	//EEMB_GUI_CONTEXT_PTR.perLayoutPos = 0
}

func __eg_set_layout_height(h: uint32) -> uint16 {
	return (h*( EEMB_GUI_PARENT_CONTEXT_PTR.height ? EEMB_GUI_PARENT_CONTEXT_PTR.height : EEMB_GUI_PARENT_CONTEXT_PTR.y - EEMB_GUI_PARENT_CONTEXT_PTR.minY  )) / 100
}

func GET_COLOR(r: uint8, g: uint8, b: uint8) -> uint16 {
	return ( (((r)>>3)<<11) | (((g)>>2)<<5) | (((b)>>3)) )
}


func __fpToInt32(val: fp32, decimalNumberSize: uint8) -> int32 {
    var res = val
	for i in 1 to decimalNumberSize {
		res *= 10
	}
	return res
}

