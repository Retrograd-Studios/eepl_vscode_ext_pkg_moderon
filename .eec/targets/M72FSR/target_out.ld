
ENTRY(__entryPoint__)

DrawText = 0x80086f9;
DrawImg = 0x80086fb;
_DrawRect = 0x80086fd;
AO_OUTPUT = 0x80071ad;
UI_READ_DI = 0x8006d51;
UI_READ_AI = 0x80071b9;
UI_READ_ALL_DI = 0x800762d;
UI_CFG = 0x8007661;
UI_CFG_SET_RANGE = 0x80077b1;
UI_CFG_SET_B = 0x80077df;
RELAY_SET = 0x8006ccd;
RELAY_TOGGLE = 0x8006ce9;
RELAYS_TOGGLE = 0x8006cfd;
RELAYS_SET = 0x8006d21;
RELAYS_SET = 0x8006d21;
MB_READ_LOCAL_REG = 0x8005079;
MB_WRITE_LOCAL_REG = 0x8005095;
MB_GET_ERROR = 0x8005069;
MB_WRITE_REMOTE_REG = 0x8004e51;
MODBUS_CFG = 0x80050ab;
UART_CFG = 0x80077f9;
SET_BUTTON_HANDLER = 0x8006f33;
DelayMs = 0x8005957;
Print = 0x8007057;
Println = 0x80070a3;
GetGlobalTicks = 0x800704f;
FONT_DEFAULT = 0x20000688;
img_default_switchOn = 0x20000694;
img_default_switchOff = 0x20000698;
img_default_car = 0x2000069c;
img_default_ctrl = 0x200006a0;
__eg_set_color = 0x80086ff;
__eg_set_font = 0x8008701;
__eg_row_begin = 0x8008703;
__eg_row_draw = 0x8008705;
__eg_layout_begin = 0x8008707;
__eg_list_begin = 0x800870b;
__eg_layout_draw = 0x800870d;
__eg_flow_layout_begin = 0x8008709;
__eg_flow_layout_draw = 0x800870f;
__eg_label_draw = 0x8008711;
__eg_list_draw = 0x8008713;
__eg_img_draw = 0x8008715;
__eg_switcher_draw = 0x8008717;
__eg_input_int_draw = 0x8008719;
__eg_input_float_draw = 0x800871b;
__eg_fill_draw = 0x800871d;
__eg_button_draw = 0x800871f;
__eg_combo_box_draw = 0x8008721;
__eg_ghostStepInParent = 0x8008723;
__eg_set_borders = 0x8008725;
__eg_set_unit = 0x8008727;
EEMB_GUI_CONTEXT_PTR = 0x2000068c;
EEMB_GUI_PARENT_CONTEXT_PTR = 0x20000690;
GUI_buttonHandler = 0x8008729;
GUI_buttonsHandler = 0x800872b;
GUI_setDraw = 0x800872d;
GUI_clearContext = 0x800872f;
GUI_rowStartStep = 0x8008731;
DrawImgWithSize = 0x8008733;
GetTextSize = 0x8008735;
GetCharHeight = 0x8008737;
MB_WRITE_H_REG_WITH_ADDR = 0x80050d5;
MB_READ_H_REG_FROM_ADDR = 0x80050d1;
rtc_setYears = 0x800875d;
rtc_setMonths = 0x8008761;
rtc_setDays = 0x8008765;
rtc_setDay = 0x8008769;
rtc_setHours = 0x800876d;
rtc_setMins = 0x8008771;
rtc_setSeconds = 0x8008775;
RTC_SET_DATE = 0x8008779;
RTC_SET_DATE_2 = 0x800877d;
RTC_GET_DATE = 0x8008781;
rtc_getYears = 0x8008785;
rtc_getMonths = 0x8008789;
rtc_getDays = 0x800878d;
rtc_getDay = 0x8008791;
rtc_getHours = 0x8008795;
rtc_getMins = 0x8008799;
rtc_getSeconds = 0x800879d;
MB_REMOTE_MODULE_ADD_INSTANCE = 0x8004265;
MB_WRITE_REMOTE_REG_WITH_INST = 0x8004c19;
xTimerGenericCommand = 0x8006859;
xTimerCreate = 0x80067db;
xTimerIsTimerActive = 0x8006bed;
xTimerGetPeriod = 0x80068bb;
pcTimerGetName = 0x80068eb;
pcTimerSetName = 0x8006903;
xTimerGetExpiryTime = 0x80068d3;
xTaskGetTickCount = 0x8005c19;
vTimerSetTimerID = 0x8006c3f;
pvTimerGetTimerID = 0x8006c1b;
EEmb_MemAlloc = 0x800cba9;
EEmb_MemFree = 0x800cbad;
EEmb_Panic = 0x8006e3d;
MemGetFreeHeapSize = 0x800557d;
MemGetMinimumEverFreeHeapSize = 0x8005583;
uxTaskGetStackHighWaterMark = 0x8005f93;
EEmb_getSerialNumber = 0x800ca69;
EEmb_getDeviceVerInfo = 0x800ca85;
DEV_reboot = 0x800784b;
IWDG_setTimeout = 0x800c911;
IWDG_reload = 0x800c935;
DisplaySetBrights = 0x8008739;
DisplaySetAutoBrights = 0x800873b;
MSG_pushMessage = 0x80063cd;
MB_FORCE_READ_REMOTE_REGS = 0x80048f3;
MB_FORCE_WRITE_REMOTE_REGS = 0x8004a27;
LED_SET = 0x8008751;
LEDS_SET = 0x8008759;
LED_TOGGLE = 0x800874d;
LEDS_TOGGLE = 0x8008755;
__eg_canvas_draw = 0x800873f;
__eg_fixed_layout_begin = 0x8008741;
__eg_fixed_flow_layout_begin = 0x8008743;
__eg_canvas_begin = 0x8008745;
UART_SET_FRAME_CFG = 0x8007819;
EEmb_buttonHandler = 0x8007ad1;
FSR_setPowerLevel = 0x800913f;
FSR_changeState = 0x800917d;
FSR_getResetErrorCode = 0x80091b3;
FSR_setupParams = 0x80091c1;
BTN_GET_STATUS = 0x8006dcb;
MB_GET_REMOTE_REG_GRP_FROM_PTR = 0x8004ee1;
MB_GET_INPUT_REG_GRP_FROM_PTR = 0x8004f33;
MB_GET_HOLDING_REG_GRP_FROM_PTR = 0x8004f95;
MB_STORE_DATA_TO_REG = 0x8005041;
MB_GET_ACTUAL_DATA_PTR = 0x8004edd;
DEV_EEmbFrameworkCfg = 0x20002628;
__eg_dyn_label_draw = 0x8008747;
__eg_animation_draw = 0x8008749;
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
  FLASH (rx)   : ORIGIN = 0x8013800, LENGTH = 0x2c600
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


