
ENTRY(__entryPoint__)

DrawText = 0x80087d5;
DrawImg = 0x80087d7;
_DrawRect = 0x80087d9;
AO_OUTPUT = 0x8007df5;
UI_READ_DI = 0x8006ddf;
UI_READ_AI = 0x8007e05;
UI_READ_ALL_DI = 0x800815d;
UI_CFG = 0x8008195;
UI_CFG_SET_RANGE = 0x80082e9;
UI_CFG_SET_B = 0x8008319;
RELAY_SET = 0x8006d5f;
RELAY_TOGGLE = 0x8006d79;
RELAYS_TOGGLE = 0x8006d8d;
RELAYS_SET = 0x8006daf;
RELAYS_SET = 0x8006daf;
MB_READ_LOCAL_REG = 0x800502d;
MB_WRITE_LOCAL_REG = 0x8005049;
MB_GET_ERROR = 0x800501d;
MB_WRITE_REMOTE_REG = 0x8004e05;
MODBUS_CFG = 0x800505f;
UART_CFG = 0x8008333;
SET_BUTTON_HANDLER = 0x8007b87;
DelayMs = 0x8005907;
Print = 0x8007cab;
Println = 0x8007cf7;
GetGlobalTicks = 0x8007ca3;
EEMB_GUI_CONTEXT_PTR = 0x200006f0;
EEMB_GUI_PARENT_CONTEXT_PTR = 0x200006f4;
GUI_buttonHandler = 0x8008805;
GUI_buttonsHandler = 0x8008807;
GUI_setDraw = 0x8008809;
GUI_clearContext = 0x800880b;
GUI_rowStartStep = 0x800880d;
DrawImgWithSize = 0x800880f;
GetTextSize = 0x8008811;
GetCharHeight = 0x8008813;
MB_WRITE_H_REG_WITH_ADDR = 0x8005087;
MB_READ_H_REG_FROM_ADDR = 0x8005083;
rtc_setYears = 0x800a107;
rtc_setMonths = 0x800a0ed;
rtc_setDays = 0x800a0d3;
rtc_setDay = 0x800a0cd;
rtc_setHours = 0x800a097;
rtc_setMins = 0x800a07d;
rtc_setSeconds = 0x800a063;
RTC_SET_DATE = 0x8009f49;
RTC_SET_DATE_2 = 0x800a121;
RTC_GET_DATE = 0x8009ccb;
rtc_getYears = 0x800a213;
rtc_getMonths = 0x800a1f5;
rtc_getDays = 0x800a1d7;
rtc_getDay = 0x800a1d1;
rtc_getHours = 0x800a19f;
rtc_getMins = 0x800a181;
rtc_getSeconds = 0x800a163;
MB_REMOTE_MODULE_ADD_INSTANCE = 0x8004219;
MB_WRITE_REMOTE_REG_WITH_INST = 0x8004bcd;
xTimerGenericCommand = 0x80068f9;
xTimerCreate = 0x800687b;
xTimerIsTimerActive = 0x8006c8d;
xTimerGetPeriod = 0x800695b;
pcTimerGetName = 0x800698b;
pcTimerSetName = 0x80069a3;
xTimerGetExpiryTime = 0x8006973;
xTaskGetTickCount = 0x8005bc9;
vTimerSetTimerID = 0x8006cdf;
pvTimerGetTimerID = 0x8006cbb;
EEmb_MemAlloc = 0x800dc0d;
EEmb_MemFree = 0x800dc11;
EEmb_Panic = 0x800d7f9;
MemGetFreeHeapSize = 0x800552d;
MemGetMinimumEverFreeHeapSize = 0x8005533;
uxTaskGetStackHighWaterMark = 0x8005f43;
EEmb_getSerialNumber = 0x800daf9;
EEmb_getDeviceVerInfo = 0x800db15;
DEV_reboot = 0x80083b7;
IWDG_setTimeout = 0x800d931;
IWDG_reload = 0x800d955;
DisplaySetBrights = 0x8008815;
DisplaySetAutoBrights = 0x8008817;
MSG_pushMessage = 0x800637d;
MB_FORCE_READ_REMOTE_REGS = 0x80048a7;
MB_FORCE_WRITE_REMOTE_REGS = 0x80049db;
LED_SET = 0x8006e61;
LEDS_SET = 0x8006eb9;
LED_TOGGLE = 0x8006e7d;
LEDS_TOGGLE = 0x8006e91;
UART_SET_FRAME_CFG = 0x8008353;
EEmb_buttonHandler = 0x800866b;
FSR_setPowerLevel = 0x800882d;
FSR_changeState = 0x8008831;
FSR_getResetErrorCode = 0x8008835;
FSR_setupParams = 0x8008839;
BTN_GET_STATUS = 0x8006eed;
MB_GET_REMOTE_REG_GRP_FROM_PTR = 0x8004e95;
MB_GET_INPUT_REG_GRP_FROM_PTR = 0x8004ee7;
MB_GET_HOLDING_REG_GRP_FROM_PTR = 0x8004f49;
MB_STORE_DATA_TO_REG = 0x8004ff5;
MB_GET_ACTUAL_DATA_PTR = 0x8004e91;
DEV_EEmbFrameworkCfg = 0x20002a10;
MODBUS_SET_LOCAL_CHANGED_CALLBACK = 0x800225b;
MODBUS_CHECK_LOCAL_CHANGED = 0x8002263;
UART_SET_PROTOCOL = 0x8002a8d;
UART_SET_TIMEOUT = 0x8002aa9;
UART_RX_SIZE = 0x8002abb;
UART_FLUSH_RX = 0x8002ad3;
UART_RX_BUF = 0x8002b67;
UART_WRITE_DATA = 0x8002b77;
UART_READ_DATA = 0x8002b95;


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


