
ENTRY(__entryPoint__)

DrawText = 0x8004ff3;
DrawImg = 0x8004cad;
_DrawRect = 0x8004c31;
AO_OUTPUT = 0x800d083;
UI_READ_DI = 0x800e22b;
UI_READ_AI = 0x800d095;
UI_READ_ALL_DI = 0x800d4df;
UI_CFG = 0x800d519;
UI_CFG_SET_RANGE = 0x800d66d;
UI_CFG_SET_B = 0x800d69b;
RELAY_SET = 0x800e1ab;
RELAY_TOGGLE = 0x800e1c5;
RELAYS_TOGGLE = 0x800e1d9;
RELAYS_SET = 0x800e1fb;
RELAYS_SET = 0x800e1fb;
MB_READ_LOCAL_REG = 0x80099f1;
MB_WRITE_LOCAL_REG = 0x8009a0d;
MB_GET_ERROR = 0x80099e1;
MB_WRITE_REMOTE_REG = 0x80097c9;
MODBUS_CFG = 0x8009a23;
UART_CFG = 0x800d6b5;
SET_BUTTON_HANDLER = 0x800cdaf;
DelayMs = 0x8005b6f;
Print = 0x800cf0d;
Println = 0x800cf59;
GetGlobalTicks = 0x800cf05;
FONT_DEFAULT = 0x8013150;
img_default_switchOn = 0x8013194;
img_default_switchOff = 0x8013188;
img_default_car = 0x801317c;
img_default_ctrl = 0x8013170;
__eg_set_color = 0x8002237;
__eg_set_font = 0x8002279;
__eg_row_begin = 0x8002909;
__eg_row_draw = 0x8002ac9;
__eg_layout_begin = 0x8002b1b;
__eg_list_begin = 0x8002fad;
__eg_layout_draw = 0x8003383;
__eg_flow_layout_begin = 0x8002da5;
__eg_flow_layout_draw = 0x80033a9;
__eg_label_draw = 0x80034d9;
__eg_list_draw = 0x8003349;
__eg_img_draw = 0x800369d;
__eg_switcher_draw = 0x8004029;
__eg_input_int_draw = 0x8004121;
__eg_input_float_draw = 0x8004635;
__eg_fill_draw = 0x8003923;
__eg_button_draw = 0x8003969;
__eg_combo_box_draw = 0x8003c0f;
__eg_ghostStepInParent = 0x80027cd;
__eg_set_borders = 0x8002131;
__eg_set_unit = 0x800213d;
EEMB_GUI_CONTEXT_PTR = 0x20001344;
EEMB_GUI_PARENT_CONTEXT_PTR = 0x20001348;
GUI_buttonHandler = 0x8002421;
GUI_buttonsHandler = 0x800259b;
GUI_setDraw = 0x8002145;
GUI_clearContext = 0x80022ad;
GUI_rowStartStep = 0x80028c1;
DrawImgWithSize = 0x8004def;
GetTextSize = 0x8004f73;
GetCharHeight = 0x8004f5d;
MB_WRITE_H_REG_WITH_ADDR = 0x8009a4d;
MB_READ_H_REG_FROM_ADDR = 0x8009a49;
rtc_setYears = 0x800f483;
rtc_setMonths = 0x800f469;
rtc_setDays = 0x800f44f;
rtc_setDay = 0x800f449;
rtc_setHours = 0x800f413;
rtc_setMins = 0x800f3f9;
rtc_setSeconds = 0x800f3df;
RTC_SET_DATE = 0x800f2c5;
RTC_SET_DATE_2 = 0x800f49d;
RTC_GET_DATE = 0x800f047;
rtc_getYears = 0x800f58f;
rtc_getMonths = 0x800f571;
rtc_getDays = 0x800f553;
rtc_getDay = 0x800f54d;
rtc_getHours = 0x800f51b;
rtc_getMins = 0x800f4fd;
rtc_getSeconds = 0x800f4df;
MB_REMOTE_MODULE_ADD_INSTANCE = 0x8008bdd;
MB_WRITE_REMOTE_REG_WITH_INST = 0x8009591;
xTimerGenericCommand = 0x80084c1;
xTimerCreate = 0x8008443;
xTimerIsTimerActive = 0x8008855;
xTimerGetPeriod = 0x8008523;
pcTimerGetName = 0x8008553;
pcTimerSetName = 0x800856b;
xTimerGetExpiryTime = 0x800853b;
xTaskGetTickCount = 0x8005e31;
vTimerSetTimerID = 0x80088a7;
pvTimerGetTimerID = 0x8008883;
EEmb_MemAlloc = 0x80131b9;
EEmb_MemFree = 0x80131bd;
EEmb_Panic = 0x8008b69;
MemGetFreeHeapSize = 0x8007179;
MemGetMinimumEverFreeHeapSize = 0x800717f;
uxTaskGetStackHighWaterMark = 0x80061ab;
EEmb_getSerialNumber = 0x8007299;
EEmb_getDeviceVerInfo = 0x80072b5;
DEV_reboot = 0x800d739;
IWDG_setTimeout = 0x8012e8d;
IWDG_reload = 0x8012eb1;
DisplaySetBrights = 0x800e0ad;
DisplaySetAutoBrights = 0x800e0cb;
MSG_pushMessage = 0x8005321;
MB_FORCE_READ_REMOTE_REGS = 0x800926b;
MB_FORCE_WRITE_REMOTE_REGS = 0x800939f;
LED_SET = 0x8013059;
LEDS_SET = 0x8013061;
LED_TOGGLE = 0x8013055;
LEDS_TOGGLE = 0x801305d;
__eg_canvas_draw = 0x80033cf;
__eg_fixed_layout_begin = 0x8002d17;
__eg_fixed_flow_layout_begin = 0x8002f69;
__eg_canvas_begin = 0x8002f99;
UART_SET_FRAME_CFG = 0x800d6d5;
EEmb_buttonHandler = 0x800da25;
FSR_setPowerLevel = 0x8013065;
FSR_changeState = 0x8013069;
FSR_getResetErrorCode = 0x801306d;
FSR_setupParams = 0x8013071;
BTN_GET_STATUS = 0x800e2ad;
MB_GET_REMOTE_REG_GRP_FROM_PTR = 0x8009859;
MB_GET_INPUT_REG_GRP_FROM_PTR = 0x80098ab;
MB_GET_HOLDING_REG_GRP_FROM_PTR = 0x800990d;
MB_STORE_DATA_TO_REG = 0x80099b9;
MB_GET_ACTUAL_DATA_PTR = 0x8009855;
DEV_EEmbFrameworkCfg = 0x20003790;
__eg_dyn_label_draw = 0x8003479;
__eg_animation_draw = 0x8003781;
MODBUS_SET_LOCAL_CHANGED_CALLBACK = 0x8009c57;
MODBUS_CHECK_LOCAL_CHANGED = 0x8009c5f;
UART_SET_PROTOCOL = 0x800a489;
UART_SET_TIMEOUT = 0x800a4a5;
UART_RX_SIZE = 0x800a4b7;
UART_FLUSH_RX = 0x800a4cf;
UART_RX_BUF = 0x800a563;
UART_WRITE_DATA = 0x800a573;
UART_READ_DATA = 0x800a591;


MEMORY
{
  RAM (xrw)    : ORIGIN = 0x200037f8, LENGTH = 0xc808 
  FLASH (rx)   : ORIGIN = 0x8013500, LENGTH = 0x2c900
}

_Min_Heap_Size = 0x200;      /* required amount of heap  */
_Min_Stack_Size = 0x400; /* required amount of stack */

__aeabi_unwind_cpp_pr0 = 0x0;
__aeabi_unwind_cpp_pr1 = 0x0;


/* Define output sections */
SECTIONS
{
  /* The startup code goes first into FLASH 
  .isr_vector :
  {
    . = ALIGN(4);
    KEEP(*(.isr_vector)) 
    . = ALIGN(4);
  } >FLASH
  */

  /* The program code and other data goes into FLASH */
  .text :
  {
    . = ALIGN(4);
    *(.text)           /* .text sections (code) */
    *(.text*)          /* .text* sections (code) */
    *(.glue_7)         /* glue arm to thumb code */
    *(.glue_7t)        /* glue thumb to arm code */
    *(.eh_frame)

    KEEP (*(.init))
    KEEP (*(.fini))

    . = ALIGN(4);
    _etext = .;        /* define a global symbols at end of code */
  } >FLASH

  /* Constant data goes into FLASH */
  .rodata :
  {
    . = ALIGN(4);
    *(.rodata)         /* .rodata sections (constants, strings, etc.) */
    *(.rodata*)        /* .rodata* sections (constants, strings, etc.) */
    . = ALIGN(4);
  } >FLASH

  .ARM.extab   : { *(.ARM.extab* .gnu.linkonce.armextab.*) } >FLASH
  .ARM : {
    __exidx_start = .;
    *(.ARM.exidx*)
    __exidx_end = .;
  } >FLASH

  .preinit_array     :
  {
    PROVIDE_HIDDEN (__preinit_array_start = .);
    KEEP (*(.preinit_array*))
    PROVIDE_HIDDEN (__preinit_array_end = .);
  } >FLASH
  .init_array :
  {
    PROVIDE_HIDDEN (__init_array_start = .);
    KEEP (*(SORT(.init_array.*)))
    KEEP (*(.init_array*))
    PROVIDE_HIDDEN (__init_array_end = .);
  } >FLASH
  .fini_array :
  {
    PROVIDE_HIDDEN (__fini_array_start = .);
    KEEP (*(SORT(.fini_array.*)))
    KEEP (*(.fini_array*))
    PROVIDE_HIDDEN (__fini_array_end = .);
  } >FLASH

  /* used by the startup to initialize data */
  //_sidata = LOADADDR(.data);

  /* Initialized data sections goes into RAM, load LMA copy after code */
  .data : 
  {
    . = ALIGN(4);
    _sdata = .;        /* create a global symbol at data start */
    *(.data)           /* .data sections */
    *(.data*)          /* .data* sections */

    . = ALIGN(4);
    _edata = .;        /* define a global symbol at data end */
  } >RAM AT> FLASH

  
  /* Uninitialized data section */
  . = ALIGN(4);
  .bss :
  {
    /* This is used by the startup in order to initialize the .bss secion */
    _sbss = .;         /* define a global symbol at bss start */
    __bss_start__ = _sbss;
    *(.bss)
    *(.bss*)
    *(COMMON)

    . = ALIGN(4);
    _ebss = .;         /* define a global symbol at bss end */
    __bss_end__ = _ebss;
  } >RAM

  /* User_heap_stack section, used to check that there is enough RAM left 
  ._user_heap_stack :
  {
    . = ALIGN(8);
    PROVIDE ( end = . );
    PROVIDE ( _end = . );
    . = . + _Min_Heap_Size;
    . = . + _Min_Stack_Size;
    . = ALIGN(8);
  } >RAM
*/
  

  /* Remove information from the standard libraries */
  /DISCARD/ :
  {
    libc.a ( * )
    libm.a ( * )
    libgcc.a ( * )
  }

  .ARM.attributes 0 : { *(.ARM.attributes) }
}


