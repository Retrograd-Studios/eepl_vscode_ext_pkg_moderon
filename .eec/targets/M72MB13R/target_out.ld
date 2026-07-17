
ENTRY(__entryPoint__)

DrawText = 0x80088e1;
DrawImg = 0x80088e3;
_DrawRect = 0x80088e5;
AO_OUTPUT = 0x8007343;
UI_READ_DI = 0x8006ddd;
UI_READ_AI = 0x8007355;
UI_READ_ALL_DI = 0x800779f;
UI_CFG = 0x80077d9;
UI_CFG_SET_RANGE = 0x800792d;
UI_CFG_SET_B = 0x800795b;
RELAY_SET = 0x8006d59;
RELAY_TOGGLE = 0x8006d75;
RELAYS_TOGGLE = 0x8006d89;
RELAYS_SET = 0x8006dad;
RELAYS_SET = 0x8006dad;
MB_READ_LOCAL_REG = 0x8005009;
MB_WRITE_LOCAL_REG = 0x8005025;
MB_GET_ERROR = 0x8004ff9;
MB_WRITE_REMOTE_REG = 0x8004de1;
MODBUS_CFG = 0x800503b;
UART_CFG = 0x8007975;
SET_BUTTON_HANDLER = 0x8007097;
DelayMs = 0x80058e7;
Print = 0x80071cd;
Println = 0x8007219;
GetGlobalTicks = 0x80071c5;
EEMB_GUI_CONTEXT_PTR = 0x200006c8;
EEMB_GUI_PARENT_CONTEXT_PTR = 0x200006cc;
GUI_buttonHandler = 0x8008911;
GUI_buttonsHandler = 0x8008913;
GUI_setDraw = 0x8008915;
GUI_clearContext = 0x8008917;
GUI_rowStartStep = 0x8008919;
DrawImgWithSize = 0x800891b;
GetTextSize = 0x800891d;
GetCharHeight = 0x800891f;
MB_WRITE_H_REG_WITH_ADDR = 0x8005065;
MB_READ_H_REG_FROM_ADDR = 0x8005061;
rtc_setYears = 0x800a423;
rtc_setMonths = 0x800a409;
rtc_setDays = 0x800a3ef;
rtc_setDay = 0x800a3e9;
rtc_setHours = 0x800a3b3;
rtc_setMins = 0x800a399;
rtc_setSeconds = 0x800a37f;
RTC_SET_DATE = 0x800a265;
RTC_SET_DATE_2 = 0x800a43d;
RTC_GET_DATE = 0x8009fe7;
rtc_getYears = 0x800a52f;
rtc_getMonths = 0x800a511;
rtc_getDays = 0x800a4f3;
rtc_getDay = 0x800a4ed;
rtc_getHours = 0x800a4bb;
rtc_getMins = 0x800a49d;
rtc_getSeconds = 0x800a47f;
MB_REMOTE_MODULE_ADD_INSTANCE = 0x80041f5;
MB_WRITE_REMOTE_REG_WITH_INST = 0x8004ba9;
xTimerGenericCommand = 0x80068e5;
xTimerCreate = 0x8006867;
xTimerIsTimerActive = 0x8006c79;
xTimerGetPeriod = 0x8006947;
pcTimerGetName = 0x8006977;
pcTimerSetName = 0x800698f;
xTimerGetExpiryTime = 0x800695f;
xTaskGetTickCount = 0x8005ba9;
vTimerSetTimerID = 0x8006ccb;
pvTimerGetTimerID = 0x8006ca7;
EEmb_MemAlloc = 0x800ddb9;
EEmb_MemFree = 0x800ddbd;
EEmb_Panic = 0x8006fa1;
MemGetFreeHeapSize = 0x800550d;
MemGetMinimumEverFreeHeapSize = 0x8005513;
uxTaskGetStackHighWaterMark = 0x8005f23;
EEmb_getSerialNumber = 0x800dc8d;
EEmb_getDeviceVerInfo = 0x800dca9;
DEV_reboot = 0x80079f9;
IWDG_setTimeout = 0x800dac9;
IWDG_reload = 0x800daed;
DisplaySetBrights = 0x8008921;
DisplaySetAutoBrights = 0x8008923;
MSG_pushMessage = 0x800635d;
MB_FORCE_READ_REMOTE_REGS = 0x8004883;
MB_FORCE_WRITE_REMOTE_REGS = 0x80049b7;
LED_SET = 0x8006e85;
LEDS_SET = 0x8006edd;
LED_TOGGLE = 0x8006ea1;
LEDS_TOGGLE = 0x8006eb5;
UART_SET_FRAME_CFG = 0x8007995;
EEmb_buttonHandler = 0x8007cc5;
FSR_setPowerLevel = 0x8008939;
FSR_changeState = 0x800893d;
FSR_getResetErrorCode = 0x8008941;
FSR_setupParams = 0x8008945;
BTN_GET_STATUS = 0x8006f11;
MB_GET_REMOTE_REG_GRP_FROM_PTR = 0x8004e71;
MB_GET_INPUT_REG_GRP_FROM_PTR = 0x8004ec3;
MB_GET_HOLDING_REG_GRP_FROM_PTR = 0x8004f25;
MB_STORE_DATA_TO_REG = 0x8004fd1;
MB_GET_ACTUAL_DATA_PTR = 0x8004e6d;
DEV_EEmbFrameworkCfg = 0x200026b4;
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


