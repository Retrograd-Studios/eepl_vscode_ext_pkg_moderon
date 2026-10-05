
ENTRY(__entryPoint__)

DrawText = 0x8004ff3;
DrawImg = 0x8004cad;
_DrawRect = 0x8004c31;
AO_OUTPUT = 0x800d1bf;
UI_READ_DI = 0x800e3bf;
UI_READ_AI = 0x800d1d1;
UI_READ_ALL_DI = 0x800d61b;
UI_CFG = 0x800d655;
UI_CFG_SET_RANGE = 0x800d7a9;
UI_CFG_SET_B = 0x800d7d7;
RELAY_SET = 0x800e33f;
RELAY_TOGGLE = 0x800e359;
RELAYS_TOGGLE = 0x800e36d;
RELAYS_SET = 0x800e38f;
RELAYS_SET = 0x800e38f;
MB_READ_LOCAL_REG = 0x8009b09;
MB_WRITE_LOCAL_REG = 0x8009b25;
MB_GET_ERROR = 0x8009af9;
MB_WRITE_REMOTE_REG = 0x80098e1;
MODBUS_CFG = 0x8009b3b;
UART_CFG = 0x800d7f1;
SET_BUTTON_HANDLER = 0x800ceeb;
DelayMs = 0x8005b6f;
Print = 0x800d049;
Println = 0x800d095;
GetGlobalTicks = 0x800d041;
FONT_DEFAULT = 0x8013478;
img_default_switchOn = 0x80134c8;
img_default_switchOff = 0x80134bc;
img_default_car = 0x80134b0;
img_default_ctrl = 0x80134a4;
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
MB_WRITE_H_REG_WITH_ADDR = 0x8009b65;
MB_READ_H_REG_FROM_ADDR = 0x8009b61;
rtc_setYears = 0x800f61f;
rtc_setMonths = 0x800f605;
rtc_setDays = 0x800f5eb;
rtc_setDay = 0x800f5e5;
rtc_setHours = 0x800f5af;
rtc_setMins = 0x800f595;
rtc_setSeconds = 0x800f57b;
RTC_SET_DATE = 0x800f461;
RTC_SET_DATE_2 = 0x800f639;
RTC_GET_DATE = 0x800f1e3;
rtc_getYears = 0x800f72b;
rtc_getMonths = 0x800f70d;
rtc_getDays = 0x800f6ef;
rtc_getDay = 0x800f6e9;
rtc_getHours = 0x800f6b7;
rtc_getMins = 0x800f699;
rtc_getSeconds = 0x800f67b;
MB_REMOTE_MODULE_ADD_INSTANCE = 0x8008cf5;
MB_WRITE_REMOTE_REG_WITH_INST = 0x80096a9;
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
EEmb_MemAlloc = 0x80134ed;
EEmb_MemFree = 0x80134f1;
EEmb_Panic = 0x8008ba5;
MemGetFreeHeapSize = 0x8007179;
MemGetMinimumEverFreeHeapSize = 0x800717f;
uxTaskGetStackHighWaterMark = 0x80061ab;
EEmb_getSerialNumber = 0x8007299;
EEmb_getDeviceVerInfo = 0x80072b5;
DEV_reboot = 0x800d875;
IWDG_setTimeout = 0x801316d;
IWDG_reload = 0x8013191;
DisplaySetBrights = 0x800e241;
DisplaySetAutoBrights = 0x800e25f;
MSG_pushMessage = 0x8005321;
MB_FORCE_READ_REMOTE_REGS = 0x8009383;
MB_FORCE_WRITE_REMOTE_REGS = 0x80094b7;
LED_SET = 0x8013339;
LEDS_SET = 0x8013341;
LED_TOGGLE = 0x8013335;
LEDS_TOGGLE = 0x801333d;
__eg_canvas_draw = 0x80033cf;
__eg_fixed_layout_begin = 0x8002d17;
__eg_fixed_flow_layout_begin = 0x8002f69;
__eg_canvas_begin = 0x8002f99;
UART_SET_FRAME_CFG = 0x800d811;
EEmb_buttonHandler = 0x800dbcd;
FSR_setPowerLevel = 0x8013345;
FSR_changeState = 0x8013349;
FSR_getResetErrorCode = 0x801334d;
FSR_setupParams = 0x8013351;
BTN_GET_STATUS = 0x800e441;
MB_GET_REMOTE_REG_GRP_FROM_PTR = 0x8009971;
MB_GET_INPUT_REG_GRP_FROM_PTR = 0x80099c3;
MB_GET_HOLDING_REG_GRP_FROM_PTR = 0x8009a25;
MB_STORE_DATA_TO_REG = 0x8009ad1;
MB_GET_ACTUAL_DATA_PTR = 0x800996d;
DEV_EEmbFrameworkCfg = 0x20003790;
__eg_dyn_label_draw = 0x8003479;
__eg_animation_draw = 0x8003781;
MODBUS_SET_LOCAL_CHANGED_CALLBACK = 0x8009d6f;
MODBUS_CHECK_LOCAL_CHANGED = 0x8009d77;
UART_SET_PROTOCOL = 0x800a5a1;
UART_SET_TIMEOUT = 0x800a5bd;
UART_RX_SIZE = 0x800a5cf;
UART_FLUSH_RX = 0x800a5e7;
UART_RX_BUF = 0x800a67b;
UART_WRITE_DATA = 0x800a68b;
UART_READ_DATA = 0x800a6a9;


MEMORY
{
  RAM (xrw)    : ORIGIN = 0x200037f8, LENGTH = 0xc808 
  FLASH (rx)   : ORIGIN = 0x8013900, LENGTH = 0x2c500
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


