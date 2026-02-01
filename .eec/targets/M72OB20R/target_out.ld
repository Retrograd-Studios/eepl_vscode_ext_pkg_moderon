
ENTRY(__entryPoint__)

DrawText = 0x800890d;
DrawImg = 0x800890f;
_DrawRect = 0x8008911;
AO_OUTPUT = 0x8007e37;
UI_READ_DI = 0x8006de3;
UI_READ_AI = 0x8007e49;
UI_READ_ALL_DI = 0x8008293;
UI_CFG = 0x80082cd;
UI_CFG_SET_RANGE = 0x8008421;
UI_CFG_SET_B = 0x800844f;
RELAY_SET = 0x8006d63;
RELAY_TOGGLE = 0x8006d7d;
RELAYS_TOGGLE = 0x8006d91;
RELAYS_SET = 0x8006db3;
RELAYS_SET = 0x8006db3;
MB_READ_LOCAL_REG = 0x800502d;
MB_WRITE_LOCAL_REG = 0x8005049;
MB_GET_ERROR = 0x800501d;
MB_WRITE_REMOTE_REG = 0x8004e05;
MODBUS_CFG = 0x800505f;
UART_CFG = 0x8008469;
SET_BUTTON_HANDLER = 0x8007b8b;
DelayMs = 0x800590b;
Print = 0x8007cc1;
Println = 0x8007d0d;
GetGlobalTicks = 0x8007cb9;
EEMB_GUI_CONTEXT_PTR = 0x20000700;
EEMB_GUI_PARENT_CONTEXT_PTR = 0x20000704;
GUI_buttonHandler = 0x800893d;
GUI_buttonsHandler = 0x800893f;
GUI_setDraw = 0x8008941;
GUI_clearContext = 0x8008943;
GUI_rowStartStep = 0x8008945;
DrawImgWithSize = 0x8008947;
GetTextSize = 0x8008949;
GetCharHeight = 0x800894b;
MB_WRITE_H_REG_WITH_ADDR = 0x8005089;
MB_READ_H_REG_FROM_ADDR = 0x8005085;
rtc_setYears = 0x800a44f;
rtc_setMonths = 0x800a435;
rtc_setDays = 0x800a41b;
rtc_setDay = 0x800a415;
rtc_setHours = 0x800a3df;
rtc_setMins = 0x800a3c5;
rtc_setSeconds = 0x800a3ab;
RTC_SET_DATE = 0x800a291;
RTC_SET_DATE_2 = 0x800a469;
RTC_GET_DATE = 0x800a013;
rtc_getYears = 0x800a55b;
rtc_getMonths = 0x800a53d;
rtc_getDays = 0x800a51f;
rtc_getDay = 0x800a519;
rtc_getHours = 0x800a4e7;
rtc_getMins = 0x800a4c9;
rtc_getSeconds = 0x800a4ab;
MB_REMOTE_MODULE_ADD_INSTANCE = 0x8004219;
MB_WRITE_REMOTE_REG_WITH_INST = 0x8004bcd;
xTimerGenericCommand = 0x80068fd;
xTimerCreate = 0x800687f;
xTimerIsTimerActive = 0x8006c91;
xTimerGetPeriod = 0x800695f;
pcTimerGetName = 0x800698f;
pcTimerSetName = 0x80069a7;
xTimerGetExpiryTime = 0x8006977;
xTaskGetTickCount = 0x8005bcd;
vTimerSetTimerID = 0x8006ce3;
pvTimerGetTimerID = 0x8006cbf;
EEmb_MemAlloc = 0x800dd55;
EEmb_MemFree = 0x800dd59;
EEmb_Panic = 0x800d941;
MemGetFreeHeapSize = 0x8005531;
MemGetMinimumEverFreeHeapSize = 0x8005537;
uxTaskGetStackHighWaterMark = 0x8005f47;
EEmb_getSerialNumber = 0x800dc41;
EEmb_getDeviceVerInfo = 0x800dc5d;
DEV_reboot = 0x80084ed;
IWDG_setTimeout = 0x800da79;
IWDG_reload = 0x800da9d;
DisplaySetBrights = 0x800894d;
DisplaySetAutoBrights = 0x800894f;
MSG_pushMessage = 0x8006381;
MB_FORCE_READ_REMOTE_REGS = 0x80048a7;
MB_FORCE_WRITE_REMOTE_REGS = 0x80049db;
LED_SET = 0x8006e65;
LEDS_SET = 0x8006ebd;
LED_TOGGLE = 0x8006e81;
LEDS_TOGGLE = 0x8006e95;
UART_SET_FRAME_CFG = 0x8008489;
EEmb_buttonHandler = 0x80087b5;
FSR_setPowerLevel = 0x8008965;
FSR_changeState = 0x8008969;
FSR_getResetErrorCode = 0x800896d;
FSR_setupParams = 0x8008971;
BTN_GET_STATUS = 0x8006ef1;
MB_GET_REMOTE_REG_GRP_FROM_PTR = 0x8004e95;
MB_GET_INPUT_REG_GRP_FROM_PTR = 0x8004ee7;
MB_GET_HOLDING_REG_GRP_FROM_PTR = 0x8004f49;
MB_STORE_DATA_TO_REG = 0x8004ff5;
MB_GET_ACTUAL_DATA_PTR = 0x8004e91;
DEV_EEmbFrameworkCfg = 0x20002a20;
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


