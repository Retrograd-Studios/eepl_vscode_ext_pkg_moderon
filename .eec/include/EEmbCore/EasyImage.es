

struct IMG_dat_t {
	palette: &int16
	raw: &int8
	width: uint8
	height: uint8
}


extern demangle let img_default_switchOn: IMG_dat_t 
extern demangle let img_default_switchOff: IMG_dat_t
extern demangle let img_default_car: IMG_dat_t
extern demangle let img_default_ctrl: IMG_dat_t


demangle extern let FONT_DEFAULT: FNT_font_t 

