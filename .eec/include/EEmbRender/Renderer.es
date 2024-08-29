import IMG_dat_t, FNT_font_t from EEmbCore

import EG_context_t, EEMB_GUI_CONTEXT_PTR, EEMB_GUI_PARENT_CONTEXT_PTR from EEmbCore


func DrawRect(x: int16, y: int16, w: uint16, h: uint16, size: uint16, color: uint16) {

	let sx = x
	let sx2 = sx + size

	let sx4 = sx + w
	let sx3 = sx4 - size

	let sy = y
	let sy2 = sy + size
	
	let sy4 = sy + h
	let sy3 = sy4 - size

	DrawFillRect(sx, sy, size, h, color)
	DrawFillRect(sx3, sy, size, h, color)
	DrawFillRect(sx, sy, w, size, color)
	DrawFillRect(sx, sy3, w, size, color)

}

func DrawFillRect(x: int16, y: int16, w: uint16, h: uint16, color: uint16) {
	
	var sx = x + EEMB_GUI_CONTEXT_PTR.cX
	var width: int16 = w

	if sx < EEMB_GUI_CONTEXT_PTR.cX {
		sx = EEMB_GUI_CONTEXT_PTR.cX
		width -= EEMB_GUI_CONTEXT_PTR.cX - x
	}

	var sy = y + EEMB_GUI_CONTEXT_PTR.minY
	var height: int16 = h
	if sy < EEMB_GUI_CONTEXT_PTR.minY {
		sy = EEMB_GUI_CONTEXT_PTR.minY
		height -= EEMB_GUI_CONTEXT_PTR.minY - y
	}

	if width < 0 || height < 0 || sx >= EEMB_GUI_CONTEXT_PTR.maxX || sy >= EEMB_GUI_CONTEXT_PTR.cY {
		return
	}

	if (sx + width) > EEMB_GUI_CONTEXT_PTR.maxX {
		width = EEMB_GUI_CONTEXT_PTR.maxX - sx
	}

	if (sy + height) > EEMB_GUI_CONTEXT_PTR.cY {
		height = EEMB_GUI_CONTEXT_PTR.cY - sy
	}

	_DrawRect(sx, sy, width, height, color)

}

func DrawCircle(x: uint16, y: uint16, r: uint16, color: uint16) {
	
}

func DrawFillCircle(x: uint16, y: uint16, r: uint16, color: uint16) {
	
}

func DrawPixel(x: uint16, y: uint16, color: uint16) {
	DrawFillRect(x, y, 1, 1, color)
}


extern demangle func _DrawRect(uint16, uint16, uint16, uint16, uint16) -> void
extern demangle func DrawImg(&IMG_dat_t, uint8, uint8, uint16) -> void
extern demangle func DrawImgWithSize(&IMG_dat_t, uint8, uint8, uint8, uint8, uint8, uint16)
extern demangle func DrawText(&FNT_font_t, pointer, uint8, uint8, uint8, uint8, 
int16, int16, uint16, uint16) -> void

extern demangle func GetTextSize(&FNT_font_t, pointer) -> uint32
extern demangle func GetNextLine(pointer) -> pointer
extern demangle func GetCharHeight(&FNT_font_t, char) -> uint32