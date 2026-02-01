
ENTRY(__entryPoint__)

DrawText = 0x80085bd;
DrawImg = 0x80085bf;
_DrawRect = 0x80085c1;
AO_OUTPUT = 0x8007b39;
UI_READ_DI = 0x8006d39;
UI_READ_AI = 0x8007b45;
UI_READ_ALL_DI = 0x8007fb9;
UI_CFG = 0x8007fed;
UI_CFG_SET_RANGE = 0x800813d;
UI_CFG_SET_B = 0x800816b;
RELAY_SET = 0x8006cb5;
RELAY_TOGGLE = 0x8006cd1;
RELAYS_TOGGLE = 0x8006ce5;
RELAYS_SET = 0x8006d09;
RELAYS_SET = 0x8006d09;
MB_READ_LOCAL_REG = 0x8005079;
MB_WRITE_LOCAL_REG = 0x8005095;
MB_GET_ERROR = 0x8005069;
MB_WRITE_REMOTE_REG = 0x8004e51;
MODBUS_CFG = 0x80050ab;
UART_CFG = 0x8008185;
SET_BUTTON_HANDLER = 0x80078bf;
DelayMs = 0x8005957;
Print = 0x80079e3;
Println = 0x8007a2f;
GetGlobalTicks = 0x80079db;
FONT_DEFAULT = 0x20000688;
img_default_switchOn = 0x20000694;
img_default_switchOff = 0x20000698;
img_default_car = 0x2000069c;
img_default_ctrl = 0x200006a0;
__eg_set_color = 0x80085c3;
__eg_set_font = 0x80085c5;
__eg_row_begin = 0x80085c7;
__eg_row_draw = 0x80085c9;
__eg_layout_begin = 0x80085cb;
__eg_list_begin = 0x80085cf;
__eg_layout_draw = 0x80085d1;
__eg_flow_layout_begin = 0x80085cd;
__eg_flow_layout_draw = 0x80085d3;
__eg_label_draw = 0x80085d5;
__eg_list_draw = 0x80085d7;
__eg_img_draw = 0x80085d9;
__eg_switcher_draw = 0x80085db;
__eg_input_int_draw = 0x80085dd;
__eg_input_float_draw = 0x80085df;
__eg_fill_draw = 0x80085e1;
__eg_button_draw = 0x80085e3;
__eg_combo_box_draw = 0x80085e5;
__eg_ghostStepInParent = 0x80085e7;
__eg_set_borders = 0x80085e9;
__eg_set_unit = 0x80085eb;
EEMB_GUI_CONTEXT_PTR = 0x2000068c;
EEMB_GUI_PARENT_CONTEXT_PTR = 0x20000690;
GUI_buttonHandler = 0x80085ed;
GUI_buttonsHandler = 0x80085ef;
GUI_setDraw = 0x80085f1;
GUI_clearContext = 0x80085f3;
GUI_rowStartStep = 0x80085f5;
DrawImgWithSize = 0x80085f7;
GetTextSize = 0x80085f9;
GetCharHeight = 0x80085fb;
MB_WRITE_H_REG_WITH_ADDR = 0x80050d5;
MB_READ_H_REG_FROM_ADDR = 0x80050d1;
rtc_setYears = 0x8008621;
rtc_setMonths = 0x8008625;
rtc_setDays = 0x8008629;
rtc_setDay = 0x800862d;
rtc_setHours = 0x8008631;
rtc_setMins = 0x8008635;
rtc_setSeconds = 0x8008639;
RTC_SET_DATE = 0x800863d;
RTC_SET_DATE_2 = 0x8008641;
RTC_GET_DATE = 0x8008645;
rtc_getYears = 0x8008649;
rtc_getMonths = 0x800864d;
rtc_getDays = 0x8008651;
rtc_getDay = 0x8008655;
rtc_getHours = 0x8008659;
rtc_getMins = 0x800865d;
rtc_getSeconds = 0x8008661;
MB_REMOTE_MODULE_ADD_INSTANCE = 0x8004265;
MB_WRITE_REMOTE_REG_WITH_INST = 0x8004c19;
xTimerGenericCommand = 0x800684d;
xTimerCreate = 0x80067cf;
xTimerIsTimerActive = 0x8006be1;
xTimerGetPeriod = 0x80068af;
pcTimerGetName = 0x80068df;
pcTimerSetName = 0x80068f7;
xTimerGetExpiryTime = 0x80068c7;
xTaskGetTickCount = 0x8005c19;
vTimerSetTimerID = 0x8006c33;
pvTimerGetTimerID = 0x8006c0f;
EEmb_MemAlloc = 0x800c9d1;
EEmb_MemFree = 0x800c9d5;
EEmb_Panic = 0x800c659;
MemGetFreeHeapSize = 0x800557d;
MemGetMinimumEverFreeHeapSize = 0x8005583;
uxTaskGetStackHighWaterMark = 0x8005f93;
EEmb_getSerialNumber = 0x800c891;
EEmb_getDeviceVerInfo = 0x800c8ad;
DEV_reboot = 0x80081d7;
IWDG_setTimeout = 0x800c739;
IWDG_reload = 0x800c75d;
DisplaySetBrights = 0x80085fd;
DisplaySetAutoBrights = 0x80085ff;
MSG_pushMessage = 0x80063cd;
MB_FORCE_READ_REMOTE_REGS = 0x80048f3;
MB_FORCE_WRITE_REMOTE_REGS = 0x8004a27;
LED_SET = 0x8008615;
LEDS_SET = 0x800861d;
LED_TOGGLE = 0x8008611;
LEDS_TOGGLE = 0x8008619;
__eg_canvas_draw = 0x8008603;
__eg_fixed_layout_begin = 0x8008605;
__eg_fixed_flow_layout_begin = 0x8008607;
__eg_canvas_begin = 0x8008609;
UART_SET_FRAME_CFG = 0x80081a5;
EEmb_buttonHandler = 0x8008459;
FSR_setPowerLevel = 0x8009003;
FSR_changeState = 0x8009041;
FSR_getResetErrorCode = 0x8009077;
FSR_setupParams = 0x8009085;
BTN_GET_STATUS = 0x8006db3;
MB_GET_REMOTE_REG_GRP_FROM_PTR = 0x8004ee1;
MB_GET_INPUT_REG_GRP_FROM_PTR = 0x8004f33;
MB_GET_HOLDING_REG_GRP_FROM_PTR = 0x8004f95;
MB_STORE_DATA_TO_REG = 0x8005041;
MB_GET_ACTUAL_DATA_PTR = 0x8004edd;
DEV_EEmbFrameworkCfg = 0x20002628;
__eg_dyn_label_draw = 0x800860b;
__eg_animation_draw = 0x800860d;
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


