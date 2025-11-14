
ENTRY(__entryPoint__)

DrawText = 0x80083e5;
DrawImg = 0x80083e7;
_DrawRect = 0x80083e9;
AO_OUTPUT = 0x8007a65;
UI_READ_DI = 0x8006c89;
UI_READ_AI = 0x8007a71;
UI_READ_ALL_DI = 0x8007df7;
UI_CFG = 0x8007e2d;
UI_CFG_SET_RANGE = 0x8007f7d;
UI_CFG_SET_B = 0x8007fad;
RELAY_SET = 0x8006c05;
RELAY_TOGGLE = 0x8006c21;
RELAYS_TOGGLE = 0x8006c35;
RELAYS_SET = 0x8006c59;
RELAYS_SET = 0x8006c59;
MB_READ_LOCAL_REG = 0x8004fcd;
MB_WRITE_LOCAL_REG = 0x8004fe9;
MB_GET_ERROR = 0x8004fbd;
MB_WRITE_REMOTE_REG = 0x8004da5;
MODBUS_CFG = 0x8004fff;
UART_CFG = 0x8007fc7;
SET_BUTTON_HANDLER = 0x800780f;
DelayMs = 0x80058a7;
Print = 0x8007933;
Println = 0x800797f;
GetGlobalTicks = 0x800792b;
FONT_DEFAULT = 0x20000680;
img_default_switchOn = 0x2000068c;
img_default_switchOff = 0x20000690;
img_default_car = 0x20000694;
img_default_ctrl = 0x20000698;
__eg_set_color = 0x80083eb;
__eg_set_font = 0x80083ed;
__eg_row_begin = 0x80083ef;
__eg_row_draw = 0x80083f1;
__eg_layout_begin = 0x80083f3;
__eg_list_begin = 0x80083f7;
__eg_layout_draw = 0x80083f9;
__eg_flow_layout_begin = 0x80083f5;
__eg_flow_layout_draw = 0x80083fb;
__eg_label_draw = 0x80083fd;
__eg_list_draw = 0x80083ff;
__eg_img_draw = 0x8008401;
__eg_switcher_draw = 0x8008403;
__eg_input_int_draw = 0x8008405;
__eg_input_float_draw = 0x8008407;
__eg_fill_draw = 0x8008409;
__eg_button_draw = 0x800840b;
__eg_combo_box_draw = 0x800840d;
__eg_ghostStepInParent = 0x800840f;
__eg_set_borders = 0x8008411;
__eg_set_unit = 0x8008413;
EEMB_GUI_CONTEXT_PTR = 0x20000684;
EEMB_GUI_PARENT_CONTEXT_PTR = 0x20000688;
GUI_buttonHandler = 0x8008415;
GUI_buttonsHandler = 0x8008417;
GUI_setDraw = 0x8008419;
GUI_clearContext = 0x800841b;
GUI_rowStartStep = 0x800841d;
DrawImgWithSize = 0x800841f;
GetTextSize = 0x8008421;
GetCharHeight = 0x8008423;
MB_WRITE_H_REG_WITH_ADDR = 0x8005027;
MB_READ_H_REG_FROM_ADDR = 0x8005023;
rtc_setYears = 0x8008449;
rtc_setMonths = 0x800844d;
rtc_setDays = 0x8008451;
rtc_setDay = 0x8008455;
rtc_setHours = 0x8008459;
rtc_setMins = 0x800845d;
rtc_setSeconds = 0x8008461;
RTC_SET_DATE = 0x8008465;
RTC_SET_DATE_2 = 0x8008469;
RTC_GET_DATE = 0x800846d;
rtc_getYears = 0x8008471;
rtc_getMonths = 0x8008475;
rtc_getDays = 0x8008479;
rtc_getDay = 0x800847d;
rtc_getHours = 0x8008481;
rtc_getMins = 0x8008485;
rtc_getSeconds = 0x8008489;
MB_REMOTE_MODULE_ADD_INSTANCE = 0x80041b9;
MB_WRITE_REMOTE_REG_WITH_INST = 0x8004b6d;
xTimerGenericCommand = 0x800679d;
xTimerCreate = 0x800671f;
xTimerIsTimerActive = 0x8006b31;
xTimerGetPeriod = 0x80067ff;
pcTimerGetName = 0x800682f;
pcTimerSetName = 0x8006847;
xTimerGetExpiryTime = 0x8006817;
xTaskGetTickCount = 0x8005b69;
vTimerSetTimerID = 0x8006b83;
pvTimerGetTimerID = 0x8006b5f;
EEmb_MemAlloc = 0x800c7f5;
EEmb_MemFree = 0x800c7f9;
EEmb_Panic = 0x800c47d;
MemGetFreeHeapSize = 0x80054cd;
MemGetMinimumEverFreeHeapSize = 0x80054d3;
uxTaskGetStackHighWaterMark = 0x8005ee3;
EEmb_getSerialNumber = 0x800c6b5;
EEmb_getDeviceVerInfo = 0x800c6d1;
DEV_reboot = 0x8008019;
IWDG_setTimeout = 0x800c55d;
IWDG_reload = 0x800c581;
DisplaySetBrights = 0x8008425;
DisplaySetAutoBrights = 0x8008427;
MSG_pushMessage = 0x800631d;
MB_FORCE_READ_REMOTE_REGS = 0x8004847;
MB_FORCE_WRITE_REMOTE_REGS = 0x800497b;
LED_SET = 0x800843d;
LEDS_SET = 0x8008445;
LED_TOGGLE = 0x8008439;
LEDS_TOGGLE = 0x8008441;
__eg_canvas_draw = 0x800842b;
__eg_fixed_layout_begin = 0x800842d;
__eg_fixed_flow_layout_begin = 0x800842f;
__eg_canvas_begin = 0x8008431;
UART_SET_FRAME_CFG = 0x8007fe7;
EEmb_buttonHandler = 0x8008283;
FSR_setPowerLevel = 0x8008e2b;
FSR_changeState = 0x8008e69;
FSR_getResetErrorCode = 0x8008e9f;
FSR_setupParams = 0x8008ead;
BTN_GET_STATUS = 0x8006d03;
MB_GET_REMOTE_REG_GRP_FROM_PTR = 0x8004e35;
MB_GET_INPUT_REG_GRP_FROM_PTR = 0x8004e87;
MB_GET_HOLDING_REG_GRP_FROM_PTR = 0x8004ee9;
MB_STORE_DATA_TO_REG = 0x8004f95;
MB_GET_ACTUAL_DATA_PTR = 0x8004e31;
DEV_EEmbFrameworkCfg = 0x20002620;
__eg_dyn_label_draw = 0x8008433;
__eg_animation_draw = 0x8008435;
MODBUS_SET_LOCAL_CHANGED_CALLBACK = 0x80022cb;
MODBUS_CHECK_LOCAL_CHANGED = 0x80022d3;
UART_SET_PROTOCOL = 0x8002ab1;
UART_SET_TIMEOUT = 0x8002acb;
UART_RX_SIZE = 0x8002adb;
UART_FLUSH_RX = 0x8002af1;
UART_RX_BUF = 0x8002b07;
UART_WRITE_DATA = 0x8002b17;
UART_READ_DATA = 0x8002b35;


MEMORY
{
  RAM (xrw)    : ORIGIN = 0x200037f8, LENGTH = 0xc808 
  FLASH (rx)   : ORIGIN = 0x8013200, LENGTH = 0x2cc00
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


