
ENTRY(__entryPoint__)

DrawText = 0x80088e9;
DrawImg = 0x80088eb;
_DrawRect = 0x80088ed;
AO_OUTPUT = 0x800734b;
UI_READ_DI = 0x8006de1;
UI_READ_AI = 0x800735d;
UI_READ_ALL_DI = 0x80077a7;
UI_CFG = 0x80077e1;
UI_CFG_SET_RANGE = 0x8007935;
UI_CFG_SET_B = 0x8007963;
RELAY_SET = 0x8006d5d;
RELAY_TOGGLE = 0x8006d79;
RELAYS_TOGGLE = 0x8006d8d;
RELAYS_SET = 0x8006db1;
RELAYS_SET = 0x8006db1;
MB_READ_LOCAL_REG = 0x800500d;
MB_WRITE_LOCAL_REG = 0x8005029;
MB_GET_ERROR = 0x8004ffd;
MB_WRITE_REMOTE_REG = 0x8004de5;
MODBUS_CFG = 0x800503f;
UART_CFG = 0x800797d;
SET_BUTTON_HANDLER = 0x800709f;
DelayMs = 0x80058eb;
Print = 0x80071d5;
Println = 0x8007221;
GetGlobalTicks = 0x80071cd;
EEMB_GUI_CONTEXT_PTR = 0x200006c8;
EEMB_GUI_PARENT_CONTEXT_PTR = 0x200006cc;
GUI_buttonHandler = 0x8008919;
GUI_buttonsHandler = 0x800891b;
GUI_setDraw = 0x800891d;
GUI_clearContext = 0x800891f;
GUI_rowStartStep = 0x8008921;
DrawImgWithSize = 0x8008923;
GetTextSize = 0x8008925;
GetCharHeight = 0x8008927;
MB_WRITE_H_REG_WITH_ADDR = 0x8005069;
MB_READ_H_REG_FROM_ADDR = 0x8005065;
rtc_setYears = 0x800a42b;
rtc_setMonths = 0x800a411;
rtc_setDays = 0x800a3f7;
rtc_setDay = 0x800a3f1;
rtc_setHours = 0x800a3bb;
rtc_setMins = 0x800a3a1;
rtc_setSeconds = 0x800a387;
RTC_SET_DATE = 0x800a26d;
RTC_SET_DATE_2 = 0x800a445;
RTC_GET_DATE = 0x8009fef;
rtc_getYears = 0x800a537;
rtc_getMonths = 0x800a519;
rtc_getDays = 0x800a4fb;
rtc_getDay = 0x800a4f5;
rtc_getHours = 0x800a4c3;
rtc_getMins = 0x800a4a5;
rtc_getSeconds = 0x800a487;
MB_REMOTE_MODULE_ADD_INSTANCE = 0x80041f9;
MB_WRITE_REMOTE_REG_WITH_INST = 0x8004bad;
xTimerGenericCommand = 0x80068e9;
xTimerCreate = 0x800686b;
xTimerIsTimerActive = 0x8006c7d;
xTimerGetPeriod = 0x800694b;
pcTimerGetName = 0x800697b;
pcTimerSetName = 0x8006993;
xTimerGetExpiryTime = 0x8006963;
xTaskGetTickCount = 0x8005bad;
vTimerSetTimerID = 0x8006ccf;
pvTimerGetTimerID = 0x8006cab;
EEmb_MemAlloc = 0x800dda1;
EEmb_MemFree = 0x800dda5;
EEmb_Panic = 0x8006fa5;
MemGetFreeHeapSize = 0x8005511;
MemGetMinimumEverFreeHeapSize = 0x8005517;
uxTaskGetStackHighWaterMark = 0x8005f27;
EEmb_getSerialNumber = 0x800dc75;
EEmb_getDeviceVerInfo = 0x800dc91;
DEV_reboot = 0x8007a01;
IWDG_setTimeout = 0x800dab1;
IWDG_reload = 0x800dad5;
DisplaySetBrights = 0x8008929;
DisplaySetAutoBrights = 0x800892b;
MSG_pushMessage = 0x8006361;
MB_FORCE_READ_REMOTE_REGS = 0x8004887;
MB_FORCE_WRITE_REMOTE_REGS = 0x80049bb;
LED_SET = 0x8006e89;
LEDS_SET = 0x8006ee1;
LED_TOGGLE = 0x8006ea5;
LEDS_TOGGLE = 0x8006eb9;
UART_SET_FRAME_CFG = 0x800799d;
EEmb_buttonHandler = 0x8007ccd;
FSR_setPowerLevel = 0x8008941;
FSR_changeState = 0x8008945;
FSR_getResetErrorCode = 0x8008949;
FSR_setupParams = 0x800894d;
BTN_GET_STATUS = 0x8006f15;
MB_GET_REMOTE_REG_GRP_FROM_PTR = 0x8004e75;
MB_GET_INPUT_REG_GRP_FROM_PTR = 0x8004ec7;
MB_GET_HOLDING_REG_GRP_FROM_PTR = 0x8004f29;
MB_STORE_DATA_TO_REG = 0x8004fd5;
MB_GET_ACTUAL_DATA_PTR = 0x8004e71;
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


