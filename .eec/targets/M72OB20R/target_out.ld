
ENTRY(__entryPoint__)

DrawText = 0x8008619;
DrawImg = 0x800861b;
_DrawRect = 0x800861d;
AO_OUTPUT = 0x8007c39;
UI_READ_DI = 0x8006c1b;
UI_READ_AI = 0x8007c49;
UI_READ_ALL_DI = 0x8007fa1;
UI_CFG = 0x8007fd9;
UI_CFG_SET_RANGE = 0x800812d;
UI_CFG_SET_B = 0x800815d;
RELAY_SET = 0x8006b9b;
RELAY_TOGGLE = 0x8006bb5;
RELAYS_TOGGLE = 0x8006bc9;
RELAYS_SET = 0x8006beb;
RELAYS_SET = 0x8006beb;
MB_READ_LOCAL_REG = 0x8004e69;
MB_WRITE_LOCAL_REG = 0x8004e85;
MB_GET_ERROR = 0x8004e59;
MB_WRITE_REMOTE_REG = 0x8004c41;
MODBUS_CFG = 0x8004e9b;
UART_CFG = 0x8008177;
SET_BUTTON_HANDLER = 0x80079c3;
DelayMs = 0x8005743;
Print = 0x8007ae7;
Println = 0x8007b37;
GetGlobalTicks = 0x8007adf;
EEMB_GUI_CONTEXT_PTR = 0x200006d4;
EEMB_GUI_PARENT_CONTEXT_PTR = 0x200006d8;
GUI_buttonHandler = 0x8008649;
GUI_buttonsHandler = 0x800864b;
GUI_setDraw = 0x800864d;
GUI_clearContext = 0x800864f;
GUI_rowStartStep = 0x8008651;
DrawImgWithSize = 0x8008653;
GetTextSize = 0x8008655;
GetCharHeight = 0x8008657;
MB_WRITE_H_REG_WITH_ADDR = 0x8004ec3;
MB_READ_H_REG_FROM_ADDR = 0x8004ebf;
rtc_setYears = 0x8009f4b;
rtc_setMonths = 0x8009f31;
rtc_setDays = 0x8009f17;
rtc_setDay = 0x8009f11;
rtc_setHours = 0x8009edb;
rtc_setMins = 0x8009ec1;
rtc_setSeconds = 0x8009ea7;
RTC_SET_DATE = 0x8009d8d;
RTC_SET_DATE_2 = 0x8009f65;
RTC_GET_DATE = 0x8009b0f;
rtc_getYears = 0x800a057;
rtc_getMonths = 0x800a039;
rtc_getDays = 0x800a01b;
rtc_getDay = 0x800a015;
rtc_getHours = 0x8009fe3;
rtc_getMins = 0x8009fc5;
rtc_getSeconds = 0x8009fa7;
MB_REMOTE_MODULE_ADD_INSTANCE = 0x8004055;
MB_WRITE_REMOTE_REG_WITH_INST = 0x8004a09;
xTimerGenericCommand = 0x8006735;
xTimerCreate = 0x80066b7;
xTimerIsTimerActive = 0x8006ac9;
xTimerGetPeriod = 0x8006797;
pcTimerGetName = 0x80067c7;
pcTimerSetName = 0x80067df;
xTimerGetExpiryTime = 0x80067af;
xTaskGetTickCount = 0x8005a05;
vTimerSetTimerID = 0x8006b1b;
pvTimerGetTimerID = 0x8006af7;
EEmb_MemAlloc = 0x800da51;
EEmb_MemFree = 0x800da55;
EEmb_Panic = 0x800d63d;
MemGetFreeHeapSize = 0x8005369;
MemGetMinimumEverFreeHeapSize = 0x800536f;
uxTaskGetStackHighWaterMark = 0x8005d7f;
EEmb_getSerialNumber = 0x800d93d;
EEmb_getDeviceVerInfo = 0x800d959;
DEV_reboot = 0x80081fb;
IWDG_setTimeout = 0x800d775;
IWDG_reload = 0x800d799;
DisplaySetBrights = 0x8008659;
DisplaySetAutoBrights = 0x800865b;
MSG_pushMessage = 0x80061b9;
MB_FORCE_READ_REMOTE_REGS = 0x80046e3;
MB_FORCE_WRITE_REMOTE_REGS = 0x8004817;
LED_SET = 0x8006c9d;
LEDS_SET = 0x8006cf5;
LED_TOGGLE = 0x8006cb9;
LEDS_TOGGLE = 0x8006ccd;
UART_SET_FRAME_CFG = 0x8008197;
EEmb_buttonHandler = 0x80084af;
FSR_setPowerLevel = 0x8008671;
FSR_changeState = 0x8008675;
FSR_getResetErrorCode = 0x8008679;
FSR_setupParams = 0x800867d;
BTN_GET_STATUS = 0x8006d29;
MB_GET_REMOTE_REG_GRP_FROM_PTR = 0x8004cd1;
MB_GET_INPUT_REG_GRP_FROM_PTR = 0x8004d23;
MB_GET_HOLDING_REG_GRP_FROM_PTR = 0x8004d85;
MB_STORE_DATA_TO_REG = 0x8004e31;
MB_GET_ACTUAL_DATA_PTR = 0x8004ccd;
DEV_EEmbFrameworkCfg = 0x200029f8;
MODBUS_SET_LOCAL_CHANGED_CALLBACK = 0x800225b;
MODBUS_CHECK_LOCAL_CHANGED = 0x8002263;


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


