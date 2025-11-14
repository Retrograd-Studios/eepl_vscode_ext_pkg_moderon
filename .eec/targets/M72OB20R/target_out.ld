
ENTRY(__entryPoint__)

DrawText = 0x800872d;
DrawImg = 0x800872f;
_DrawRect = 0x8008731;
AO_OUTPUT = 0x8007d4d;
UI_READ_DI = 0x8006d37;
UI_READ_AI = 0x8007d5d;
UI_READ_ALL_DI = 0x80080b5;
UI_CFG = 0x80080ed;
UI_CFG_SET_RANGE = 0x8008241;
UI_CFG_SET_B = 0x8008271;
RELAY_SET = 0x8006cb7;
RELAY_TOGGLE = 0x8006cd1;
RELAYS_TOGGLE = 0x8006ce5;
RELAYS_SET = 0x8006d07;
RELAYS_SET = 0x8006d07;
MB_READ_LOCAL_REG = 0x8004f85;
MB_WRITE_LOCAL_REG = 0x8004fa1;
MB_GET_ERROR = 0x8004f75;
MB_WRITE_REMOTE_REG = 0x8004d5d;
MODBUS_CFG = 0x8004fb7;
UART_CFG = 0x800828b;
SET_BUTTON_HANDLER = 0x8007adf;
DelayMs = 0x800585f;
Print = 0x8007c03;
Println = 0x8007c4f;
GetGlobalTicks = 0x8007bfb;
EEMB_GUI_CONTEXT_PTR = 0x200006f0;
EEMB_GUI_PARENT_CONTEXT_PTR = 0x200006f4;
GUI_buttonHandler = 0x800875d;
GUI_buttonsHandler = 0x800875f;
GUI_setDraw = 0x8008761;
GUI_clearContext = 0x8008763;
GUI_rowStartStep = 0x8008765;
DrawImgWithSize = 0x8008767;
GetTextSize = 0x8008769;
GetCharHeight = 0x800876b;
MB_WRITE_H_REG_WITH_ADDR = 0x8004fdf;
MB_READ_H_REG_FROM_ADDR = 0x8004fdb;
rtc_setYears = 0x800a05f;
rtc_setMonths = 0x800a045;
rtc_setDays = 0x800a02b;
rtc_setDay = 0x800a025;
rtc_setHours = 0x8009fef;
rtc_setMins = 0x8009fd5;
rtc_setSeconds = 0x8009fbb;
RTC_SET_DATE = 0x8009ea1;
RTC_SET_DATE_2 = 0x800a079;
RTC_GET_DATE = 0x8009c23;
rtc_getYears = 0x800a16b;
rtc_getMonths = 0x800a14d;
rtc_getDays = 0x800a12f;
rtc_getDay = 0x800a129;
rtc_getHours = 0x800a0f7;
rtc_getMins = 0x800a0d9;
rtc_getSeconds = 0x800a0bb;
MB_REMOTE_MODULE_ADD_INSTANCE = 0x8004171;
MB_WRITE_REMOTE_REG_WITH_INST = 0x8004b25;
xTimerGenericCommand = 0x8006851;
xTimerCreate = 0x80067d3;
xTimerIsTimerActive = 0x8006be5;
xTimerGetPeriod = 0x80068b3;
pcTimerGetName = 0x80068e3;
pcTimerSetName = 0x80068fb;
xTimerGetExpiryTime = 0x80068cb;
xTaskGetTickCount = 0x8005b21;
vTimerSetTimerID = 0x8006c37;
pvTimerGetTimerID = 0x8006c13;
EEmb_MemAlloc = 0x800db65;
EEmb_MemFree = 0x800db69;
EEmb_Panic = 0x800d751;
MemGetFreeHeapSize = 0x8005485;
MemGetMinimumEverFreeHeapSize = 0x800548b;
uxTaskGetStackHighWaterMark = 0x8005e9b;
EEmb_getSerialNumber = 0x800da51;
EEmb_getDeviceVerInfo = 0x800da6d;
DEV_reboot = 0x800830f;
IWDG_setTimeout = 0x800d889;
IWDG_reload = 0x800d8ad;
DisplaySetBrights = 0x800876d;
DisplaySetAutoBrights = 0x800876f;
MSG_pushMessage = 0x80062d5;
MB_FORCE_READ_REMOTE_REGS = 0x80047ff;
MB_FORCE_WRITE_REMOTE_REGS = 0x8004933;
LED_SET = 0x8006db9;
LEDS_SET = 0x8006e11;
LED_TOGGLE = 0x8006dd5;
LEDS_TOGGLE = 0x8006de9;
UART_SET_FRAME_CFG = 0x80082ab;
EEmb_buttonHandler = 0x80085c3;
FSR_setPowerLevel = 0x8008785;
FSR_changeState = 0x8008789;
FSR_getResetErrorCode = 0x800878d;
FSR_setupParams = 0x8008791;
BTN_GET_STATUS = 0x8006e45;
MB_GET_REMOTE_REG_GRP_FROM_PTR = 0x8004ded;
MB_GET_INPUT_REG_GRP_FROM_PTR = 0x8004e3f;
MB_GET_HOLDING_REG_GRP_FROM_PTR = 0x8004ea1;
MB_STORE_DATA_TO_REG = 0x8004f4d;
MB_GET_ACTUAL_DATA_PTR = 0x8004de9;
DEV_EEmbFrameworkCfg = 0x20002a10;
MODBUS_SET_LOCAL_CHANGED_CALLBACK = 0x800225b;
MODBUS_CHECK_LOCAL_CHANGED = 0x8002263;
UART_SET_PROTOCOL = 0x8002a67;
UART_SET_TIMEOUT = 0x8002a81;
UART_RX_SIZE = 0x8002a91;
UART_FLUSH_RX = 0x8002aa7;
UART_RX_BUF = 0x8002abd;
UART_WRITE_DATA = 0x8002acd;
UART_READ_DATA = 0x8002aeb;


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


