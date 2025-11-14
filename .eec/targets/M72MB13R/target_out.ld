
ENTRY(__entryPoint__)

DrawText = 0x800866d;
DrawImg = 0x800866f;
_DrawRect = 0x8008671;
AO_OUTPUT = 0x8007c8d;
UI_READ_DI = 0x8006dc1;
UI_READ_AI = 0x8007c9d;
UI_READ_ALL_DI = 0x8007ff5;
UI_CFG = 0x800802d;
UI_CFG_SET_RANGE = 0x8008181;
UI_CFG_SET_B = 0x80081b1;
RELAY_SET = 0x8006d3d;
RELAY_TOGGLE = 0x8006d59;
RELAYS_TOGGLE = 0x8006d6d;
RELAYS_SET = 0x8006d91;
RELAYS_SET = 0x8006d91;
MB_READ_LOCAL_REG = 0x8005009;
MB_WRITE_LOCAL_REG = 0x8005025;
MB_GET_ERROR = 0x8004ff9;
MB_WRITE_REMOTE_REG = 0x8004de1;
MODBUS_CFG = 0x800503b;
UART_CFG = 0x80081cb;
SET_BUTTON_HANDLER = 0x8007a1f;
DelayMs = 0x80058e3;
Print = 0x8007b43;
Println = 0x8007b8f;
GetGlobalTicks = 0x8007b3b;
EEMB_GUI_CONTEXT_PTR = 0x200006bc;
EEMB_GUI_PARENT_CONTEXT_PTR = 0x200006c0;
GUI_buttonHandler = 0x800869d;
GUI_buttonsHandler = 0x800869f;
GUI_setDraw = 0x80086a1;
GUI_clearContext = 0x80086a3;
GUI_rowStartStep = 0x80086a5;
DrawImgWithSize = 0x80086a7;
GetTextSize = 0x80086a9;
GetCharHeight = 0x80086ab;
MB_WRITE_H_REG_WITH_ADDR = 0x8005063;
MB_READ_H_REG_FROM_ADDR = 0x800505f;
rtc_setYears = 0x8009f9f;
rtc_setMonths = 0x8009f85;
rtc_setDays = 0x8009f6b;
rtc_setDay = 0x8009f65;
rtc_setHours = 0x8009f2f;
rtc_setMins = 0x8009f15;
rtc_setSeconds = 0x8009efb;
RTC_SET_DATE = 0x8009de1;
RTC_SET_DATE_2 = 0x8009fb9;
RTC_GET_DATE = 0x8009b63;
rtc_getYears = 0x800a0ab;
rtc_getMonths = 0x800a08d;
rtc_getDays = 0x800a06f;
rtc_getDay = 0x800a069;
rtc_getHours = 0x800a037;
rtc_getMins = 0x800a019;
rtc_getSeconds = 0x8009ffb;
MB_REMOTE_MODULE_ADD_INSTANCE = 0x80041f5;
MB_WRITE_REMOTE_REG_WITH_INST = 0x8004ba9;
xTimerGenericCommand = 0x80068d5;
xTimerCreate = 0x8006857;
xTimerIsTimerActive = 0x8006c69;
xTimerGetPeriod = 0x8006937;
pcTimerGetName = 0x8006967;
pcTimerSetName = 0x800697f;
xTimerGetExpiryTime = 0x800694f;
xTaskGetTickCount = 0x8005ba5;
vTimerSetTimerID = 0x8006cbb;
pvTimerGetTimerID = 0x8006c97;
EEmb_MemAlloc = 0x800da99;
EEmb_MemFree = 0x800da9d;
EEmb_Panic = 0x800d6c9;
MemGetFreeHeapSize = 0x8005509;
MemGetMinimumEverFreeHeapSize = 0x800550f;
uxTaskGetStackHighWaterMark = 0x8005f1f;
EEmb_getSerialNumber = 0x800d96d;
EEmb_getDeviceVerInfo = 0x800d989;
DEV_reboot = 0x800824f;
IWDG_setTimeout = 0x800d7a9;
IWDG_reload = 0x800d7cd;
DisplaySetBrights = 0x80086ad;
DisplaySetAutoBrights = 0x80086af;
MSG_pushMessage = 0x8006359;
MB_FORCE_READ_REMOTE_REGS = 0x8004883;
MB_FORCE_WRITE_REMOTE_REGS = 0x80049b7;
LED_SET = 0x8006e69;
LEDS_SET = 0x8006ec1;
LED_TOGGLE = 0x8006e85;
LEDS_TOGGLE = 0x8006e99;
UART_SET_FRAME_CFG = 0x80081eb;
EEmb_buttonHandler = 0x8008503;
FSR_setPowerLevel = 0x80086c5;
FSR_changeState = 0x80086c9;
FSR_getResetErrorCode = 0x80086cd;
FSR_setupParams = 0x80086d1;
BTN_GET_STATUS = 0x8006ef5;
MB_GET_REMOTE_REG_GRP_FROM_PTR = 0x8004e71;
MB_GET_INPUT_REG_GRP_FROM_PTR = 0x8004ec3;
MB_GET_HOLDING_REG_GRP_FROM_PTR = 0x8004f25;
MB_STORE_DATA_TO_REG = 0x8004fd1;
MB_GET_ACTUAL_DATA_PTR = 0x8004e6d;
DEV_EEmbFrameworkCfg = 0x200026ac;
MODBUS_SET_LOCAL_CHANGED_CALLBACK = 0x800225b;
MODBUS_CHECK_LOCAL_CHANGED = 0x8002263;
UART_SET_PROTOCOL = 0x8002a67;
UART_SET_TIMEOUT = 0x8002a83;
UART_RX_SIZE = 0x8002a95;
UART_FLUSH_RX = 0x8002aad;
UART_RX_BUF = 0x8002b41;
UART_WRITE_DATA = 0x8002b51;
UART_READ_DATA = 0x8002b6f;


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


