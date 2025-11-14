
ENTRY(__entryPoint__)

DrawText = 0x8008491;
DrawImg = 0x8008493;
_DrawRect = 0x8008495;
AO_OUTPUT = 0x8007b11;
UI_READ_DI = 0x8006d35;
UI_READ_AI = 0x8007b1d;
UI_READ_ALL_DI = 0x8007ea3;
UI_CFG = 0x8007ed9;
UI_CFG_SET_RANGE = 0x8008029;
UI_CFG_SET_B = 0x8008059;
RELAY_SET = 0x8006cb1;
RELAY_TOGGLE = 0x8006ccd;
RELAYS_TOGGLE = 0x8006ce1;
RELAYS_SET = 0x8006d05;
RELAYS_SET = 0x8006d05;
MB_READ_LOCAL_REG = 0x8005079;
MB_WRITE_LOCAL_REG = 0x8005095;
MB_GET_ERROR = 0x8005069;
MB_WRITE_REMOTE_REG = 0x8004e51;
MODBUS_CFG = 0x80050ab;
UART_CFG = 0x8008073;
SET_BUTTON_HANDLER = 0x80078bb;
DelayMs = 0x8005953;
Print = 0x80079df;
Println = 0x8007a2b;
GetGlobalTicks = 0x80079d7;
FONT_DEFAULT = 0x20000680;
img_default_switchOn = 0x2000068c;
img_default_switchOff = 0x20000690;
img_default_car = 0x20000694;
img_default_ctrl = 0x20000698;
__eg_set_color = 0x8008497;
__eg_set_font = 0x8008499;
__eg_row_begin = 0x800849b;
__eg_row_draw = 0x800849d;
__eg_layout_begin = 0x800849f;
__eg_list_begin = 0x80084a3;
__eg_layout_draw = 0x80084a5;
__eg_flow_layout_begin = 0x80084a1;
__eg_flow_layout_draw = 0x80084a7;
__eg_label_draw = 0x80084a9;
__eg_list_draw = 0x80084ab;
__eg_img_draw = 0x80084ad;
__eg_switcher_draw = 0x80084af;
__eg_input_int_draw = 0x80084b1;
__eg_input_float_draw = 0x80084b3;
__eg_fill_draw = 0x80084b5;
__eg_button_draw = 0x80084b7;
__eg_combo_box_draw = 0x80084b9;
__eg_ghostStepInParent = 0x80084bb;
__eg_set_borders = 0x80084bd;
__eg_set_unit = 0x80084bf;
EEMB_GUI_CONTEXT_PTR = 0x20000684;
EEMB_GUI_PARENT_CONTEXT_PTR = 0x20000688;
GUI_buttonHandler = 0x80084c1;
GUI_buttonsHandler = 0x80084c3;
GUI_setDraw = 0x80084c5;
GUI_clearContext = 0x80084c7;
GUI_rowStartStep = 0x80084c9;
DrawImgWithSize = 0x80084cb;
GetTextSize = 0x80084cd;
GetCharHeight = 0x80084cf;
MB_WRITE_H_REG_WITH_ADDR = 0x80050d3;
MB_READ_H_REG_FROM_ADDR = 0x80050cf;
rtc_setYears = 0x80084f5;
rtc_setMonths = 0x80084f9;
rtc_setDays = 0x80084fd;
rtc_setDay = 0x8008501;
rtc_setHours = 0x8008505;
rtc_setMins = 0x8008509;
rtc_setSeconds = 0x800850d;
RTC_SET_DATE = 0x8008511;
RTC_SET_DATE_2 = 0x8008515;
RTC_GET_DATE = 0x8008519;
rtc_getYears = 0x800851d;
rtc_getMonths = 0x8008521;
rtc_getDays = 0x8008525;
rtc_getDay = 0x8008529;
rtc_getHours = 0x800852d;
rtc_getMins = 0x8008531;
rtc_getSeconds = 0x8008535;
MB_REMOTE_MODULE_ADD_INSTANCE = 0x8004265;
MB_WRITE_REMOTE_REG_WITH_INST = 0x8004c19;
xTimerGenericCommand = 0x8006849;
xTimerCreate = 0x80067cb;
xTimerIsTimerActive = 0x8006bdd;
xTimerGetPeriod = 0x80068ab;
pcTimerGetName = 0x80068db;
pcTimerSetName = 0x80068f3;
xTimerGetExpiryTime = 0x80068c3;
xTaskGetTickCount = 0x8005c15;
vTimerSetTimerID = 0x8006c2f;
pvTimerGetTimerID = 0x8006c0b;
EEmb_MemAlloc = 0x800c8a1;
EEmb_MemFree = 0x800c8a5;
EEmb_Panic = 0x800c529;
MemGetFreeHeapSize = 0x8005579;
MemGetMinimumEverFreeHeapSize = 0x800557f;
uxTaskGetStackHighWaterMark = 0x8005f8f;
EEmb_getSerialNumber = 0x800c761;
EEmb_getDeviceVerInfo = 0x800c77d;
DEV_reboot = 0x80080c5;
IWDG_setTimeout = 0x800c609;
IWDG_reload = 0x800c62d;
DisplaySetBrights = 0x80084d1;
DisplaySetAutoBrights = 0x80084d3;
MSG_pushMessage = 0x80063c9;
MB_FORCE_READ_REMOTE_REGS = 0x80048f3;
MB_FORCE_WRITE_REMOTE_REGS = 0x8004a27;
LED_SET = 0x80084e9;
LEDS_SET = 0x80084f1;
LED_TOGGLE = 0x80084e5;
LEDS_TOGGLE = 0x80084ed;
__eg_canvas_draw = 0x80084d7;
__eg_fixed_layout_begin = 0x80084d9;
__eg_fixed_flow_layout_begin = 0x80084db;
__eg_canvas_begin = 0x80084dd;
UART_SET_FRAME_CFG = 0x8008093;
EEmb_buttonHandler = 0x800832f;
FSR_setPowerLevel = 0x8008ed7;
FSR_changeState = 0x8008f15;
FSR_getResetErrorCode = 0x8008f4b;
FSR_setupParams = 0x8008f59;
BTN_GET_STATUS = 0x8006daf;
MB_GET_REMOTE_REG_GRP_FROM_PTR = 0x8004ee1;
MB_GET_INPUT_REG_GRP_FROM_PTR = 0x8004f33;
MB_GET_HOLDING_REG_GRP_FROM_PTR = 0x8004f95;
MB_STORE_DATA_TO_REG = 0x8005041;
MB_GET_ACTUAL_DATA_PTR = 0x8004edd;
DEV_EEmbFrameworkCfg = 0x20002620;
__eg_dyn_label_draw = 0x80084df;
__eg_animation_draw = 0x80084e1;
MODBUS_SET_LOCAL_CHANGED_CALLBACK = 0x80022cb;
MODBUS_CHECK_LOCAL_CHANGED = 0x80022d3;
UART_SET_PROTOCOL = 0x8002ad7;
UART_SET_TIMEOUT = 0x8002af3;
UART_RX_SIZE = 0x8002b05;
UART_FLUSH_RX = 0x8002b1d;
UART_RX_BUF = 0x8002bb1;
UART_WRITE_DATA = 0x8002bc1;
UART_READ_DATA = 0x8002bdf;


MEMORY
{
  RAM (xrw)    : ORIGIN = 0x200037f8, LENGTH = 0xc808 
  FLASH (rx)   : ORIGIN = 0x8013400, LENGTH = 0x2ca00
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


