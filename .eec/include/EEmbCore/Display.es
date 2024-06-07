
extern demangle func DrawRect(uint16, uint16, uint16, uint16, uint16) -> void
extern demangle func DrawImg(&IMG_dat_t, uint8, uint8, uint16) -> void
extern demangle func DrawImgWithSize(&IMG_dat_t, uint8, uint8, uint8, uint8, uint8, uint16)
extern demangle func DrawText(&FNT_font_t, pointer, uint8, uint8, uint8, uint8, 
int16, int16, uint16, uint16) -> void

extern demangle func GetTextSize(&FNT_font_t, pointer) -> uint32
extern demangle func GetNextLine(pointer) -> pointer
extern demangle func GetCharHeight(&FNT_font_t, char) -> uint32

extern demangle func DisplaySetBrights(uint32)
extern demangle func DisplaySetAutoBrights(uint32, uint32, uint32) 