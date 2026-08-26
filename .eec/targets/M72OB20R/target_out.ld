
ENTRY(__entryPoint__)

DrawText = 0x8008a51;
DrawImg = 0x8008a53;
_DrawRect = 0x8008a55;
AO_OUTPUT = 0x8007323;
UI_READ_DI = 0x8006dff;
UI_READ_AI = 0x8007335;
UI_READ_ALL_DI = 0x800777f;
UI_CFG = 0x80077b9;
UI_CFG_SET_RANGE = 0x800790d;
UI_CFG_SET_B = 0x800793b;
RELAY_SET = 0x8006d7f;
RELAY_TOGGLE = 0x8006d99;
RELAYS_TOGGLE = 0x8006dad;
RELAYS_SET = 0x8006dcf;
RELAYS_SET = 0x8006dcf;
MB_READ_LOCAL_REG = 0x8005031;
MB_WRITE_LOCAL_REG = 0x800504d;
MB_GET_ERROR = 0x8005021;
MB_WRITE_REMOTE_REG = 0x8004e09;
MODBUS_CFG = 0x8005063;
UART_CFG = 0x8007955;
SET_BUTTON_HANDLER = 0x8007077;
DelayMs = 0x800590f;
Print = 0x80071ad;
Println = 0x80071f9;
GetGlobalTicks = 0x80071a5;
EEMB_GUI_CONTEXT_PTR = 0x20000700;
EEMB_GUI_PARENT_CONTEXT_PTR = 0x20000704;
GUI_buttonHandler = 0x8008a81;
GUI_buttonsHandler = 0x8008a83;
GUI_setDraw = 0x8008a85;
GUI_clearContext = 0x8008a87;
GUI_rowStartStep = 0x8008a89;
DrawImgWithSize = 0x8008a8b;
GetTextSize = 0x8008a8d;
GetCharHeight = 0x8008a8f;
MB_WRITE_H_REG_WITH_ADDR = 0x800508d;
MB_READ_H_REG_FROM_ADDR = 0x8005089;
rtc_setYears = 0x800a593;
rtc_setMonths = 0x800a579;
rtc_setDays = 0x800a55f;
rtc_setDay = 0x800a559;
rtc_setHours = 0x800a523;
rtc_setMins = 0x800a509;
rtc_setSeconds = 0x800a4ef;
RTC_SET_DATE = 0x800a3d5;
RTC_SET_DATE_2 = 0x800a5ad;
RTC_GET_DATE = 0x800a157;
rtc_getYears = 0x800a69f;
rtc_getMonths = 0x800a681;
rtc_getDays = 0x800a663;
rtc_getDay = 0x800a65d;
rtc_getHours = 0x800a62b;
rtc_getMins = 0x800a60d;
rtc_getSeconds = 0x800a5ef;
MB_REMOTE_MODULE_ADD_INSTANCE = 0x800421d;
MB_WRITE_REMOTE_REG_WITH_INST = 0x8004bd1;
xTimerGenericCommand = 0x800690d;
xTimerCreate = 0x800688f;
xTimerIsTimerActive = 0x8006ca1;
xTimerGetPeriod = 0x800696f;
pcTimerGetName = 0x800699f;
pcTimerSetName = 0x80069b7;
xTimerGetExpiryTime = 0x8006987;
xTaskGetTickCount = 0x8005bd1;
vTimerSetTimerID = 0x8006cf3;
pvTimerGetTimerID = 0x8006ccf;
EEmb_MemAlloc = 0x800df15;
EEmb_MemFree = 0x800df19;
EEmb_Panic = 0x8006f7d;
MemGetFreeHeapSize = 0x8005535;
MemGetMinimumEverFreeHeapSize = 0x800553b;
uxTaskGetStackHighWaterMark = 0x8005f4b;
EEmb_getSerialNumber = 0x800de01;
EEmb_getDeviceVerInfo = 0x800de1d;
DEV_reboot = 0x80079d9;
IWDG_setTimeout = 0x800dc39;
IWDG_reload = 0x800dc5d;
DisplaySetBrights = 0x8008a91;
DisplaySetAutoBrights = 0x8008a93;
MSG_pushMessage = 0x8006385;
MB_FORCE_READ_REMOTE_REGS = 0x80048ab;
MB_FORCE_WRITE_REMOTE_REGS = 0x80049df;
LED_SET = 0x8006e81;
LEDS_SET = 0x8006ed9;
LED_TOGGLE = 0x8006e9d;
LEDS_TOGGLE = 0x8006eb1;
UART_SET_FRAME_CFG = 0x8007975;
EEmb_buttonHandler = 0x8007ca5;
FSR_setPowerLevel = 0x8008aa9;
FSR_changeState = 0x8008aad;
FSR_getResetErrorCode = 0x8008ab1;
FSR_setupParams = 0x8008ab5;
BTN_GET_STATUS = 0x8006f0d;
MB_GET_REMOTE_REG_GRP_FROM_PTR = 0x8004e99;
MB_GET_INPUT_REG_GRP_FROM_PTR = 0x8004eeb;
MB_GET_HOLDING_REG_GRP_FROM_PTR = 0x8004f4d;
MB_STORE_DATA_TO_REG = 0x8004ff9;
MB_GET_ACTUAL_DATA_PTR = 0x8004e95;
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


