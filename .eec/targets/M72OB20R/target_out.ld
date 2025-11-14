
ENTRY(__entryPoint__)

DrawText = 0x80085d9;
DrawImg = 0x80085db;
_DrawRect = 0x80085dd;
AO_OUTPUT = 0x8007bf9;
UI_READ_DI = 0x8006bdb;
UI_READ_AI = 0x8007c09;
UI_READ_ALL_DI = 0x8007f61;
UI_CFG = 0x8007f99;
UI_CFG_SET_RANGE = 0x80080ed;
UI_CFG_SET_B = 0x800811d;
RELAY_SET = 0x8006b5b;
RELAY_TOGGLE = 0x8006b75;
RELAYS_TOGGLE = 0x8006b89;
RELAYS_SET = 0x8006bab;
RELAYS_SET = 0x8006bab;
MB_READ_LOCAL_REG = 0x8004e29;
MB_WRITE_LOCAL_REG = 0x8004e45;
MB_GET_ERROR = 0x8004e19;
MB_WRITE_REMOTE_REG = 0x8004c01;
MODBUS_CFG = 0x8004e5b;
UART_CFG = 0x8008137;
SET_BUTTON_HANDLER = 0x8007983;
DelayMs = 0x8005703;
Print = 0x8007aa7;
Println = 0x8007af7;
GetGlobalTicks = 0x8007a9f;
EEMB_GUI_CONTEXT_PTR = 0x200006d4;
EEMB_GUI_PARENT_CONTEXT_PTR = 0x200006d8;
GUI_buttonHandler = 0x8008609;
GUI_buttonsHandler = 0x800860b;
GUI_setDraw = 0x800860d;
GUI_clearContext = 0x800860f;
GUI_rowStartStep = 0x8008611;
DrawImgWithSize = 0x8008613;
GetTextSize = 0x8008615;
GetCharHeight = 0x8008617;
MB_WRITE_H_REG_WITH_ADDR = 0x8004e83;
MB_READ_H_REG_FROM_ADDR = 0x8004e7f;
rtc_setYears = 0x8009f0b;
rtc_setMonths = 0x8009ef1;
rtc_setDays = 0x8009ed7;
rtc_setDay = 0x8009ed1;
rtc_setHours = 0x8009e9b;
rtc_setMins = 0x8009e81;
rtc_setSeconds = 0x8009e67;
RTC_SET_DATE = 0x8009d4d;
RTC_SET_DATE_2 = 0x8009f25;
RTC_GET_DATE = 0x8009acf;
rtc_getYears = 0x800a017;
rtc_getMonths = 0x8009ff9;
rtc_getDays = 0x8009fdb;
rtc_getDay = 0x8009fd5;
rtc_getHours = 0x8009fa3;
rtc_getMins = 0x8009f85;
rtc_getSeconds = 0x8009f67;
MB_REMOTE_MODULE_ADD_INSTANCE = 0x8004015;
MB_WRITE_REMOTE_REG_WITH_INST = 0x80049c9;
xTimerGenericCommand = 0x80066f5;
xTimerCreate = 0x8006677;
xTimerIsTimerActive = 0x8006a89;
xTimerGetPeriod = 0x8006757;
pcTimerGetName = 0x8006787;
pcTimerSetName = 0x800679f;
xTimerGetExpiryTime = 0x800676f;
xTaskGetTickCount = 0x80059c5;
vTimerSetTimerID = 0x8006adb;
pvTimerGetTimerID = 0x8006ab7;
EEmb_MemAlloc = 0x800da11;
EEmb_MemFree = 0x800da15;
EEmb_Panic = 0x800d5fd;
MemGetFreeHeapSize = 0x8005329;
MemGetMinimumEverFreeHeapSize = 0x800532f;
uxTaskGetStackHighWaterMark = 0x8005d3f;
EEmb_getSerialNumber = 0x800d8fd;
EEmb_getDeviceVerInfo = 0x800d919;
DEV_reboot = 0x80081bb;
IWDG_setTimeout = 0x800d735;
IWDG_reload = 0x800d759;
DisplaySetBrights = 0x8008619;
DisplaySetAutoBrights = 0x800861b;
MSG_pushMessage = 0x8006179;
MB_FORCE_READ_REMOTE_REGS = 0x80046a3;
MB_FORCE_WRITE_REMOTE_REGS = 0x80047d7;
LED_SET = 0x8006c5d;
LEDS_SET = 0x8006cb5;
LED_TOGGLE = 0x8006c79;
LEDS_TOGGLE = 0x8006c8d;
UART_SET_FRAME_CFG = 0x8008157;
EEmb_buttonHandler = 0x800846f;
FSR_setPowerLevel = 0x8008631;
FSR_changeState = 0x8008635;
FSR_getResetErrorCode = 0x8008639;
FSR_setupParams = 0x800863d;
BTN_GET_STATUS = 0x8006ce9;
MB_GET_REMOTE_REG_GRP_FROM_PTR = 0x8004c91;
MB_GET_INPUT_REG_GRP_FROM_PTR = 0x8004ce3;
MB_GET_HOLDING_REG_GRP_FROM_PTR = 0x8004d45;
MB_STORE_DATA_TO_REG = 0x8004df1;
MB_GET_ACTUAL_DATA_PTR = 0x8004c8d;
DEV_EEmbFrameworkCfg = 0x200029f8;
MODBUS_SET_LOCAL_CHANGED_CALLBACK = 0x800225b;
MODBUS_CHECK_LOCAL_CHANGED = 0x8002263;


MEMORY
{
  RAM (xrw)    : ORIGIN = 0x200037f8, LENGTH = 0xc808 
  FLASH (rx)   : ORIGIN = 0x8013200, LENGTH = 0x2cc00
}

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


