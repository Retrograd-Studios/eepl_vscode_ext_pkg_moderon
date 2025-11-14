
ENTRY(__entryPoint__)

DrawText = 0x80084bd;
DrawImg = 0x80084bf;
_DrawRect = 0x80084c1;
AO_OUTPUT = 0x8007add;
UI_READ_DI = 0x8006c09;
UI_READ_AI = 0x8007aed;
UI_READ_ALL_DI = 0x8007e45;
UI_CFG = 0x8007e7d;
UI_CFG_SET_RANGE = 0x8007fd1;
UI_CFG_SET_B = 0x8008001;
RELAY_SET = 0x8006b85;
RELAY_TOGGLE = 0x8006ba1;
RELAYS_TOGGLE = 0x8006bb5;
RELAYS_SET = 0x8006bd9;
RELAYS_SET = 0x8006bd9;
MB_READ_LOCAL_REG = 0x8004e51;
MB_WRITE_LOCAL_REG = 0x8004e6d;
MB_GET_ERROR = 0x8004e41;
MB_WRITE_REMOTE_REG = 0x8004c29;
MODBUS_CFG = 0x8004e83;
UART_CFG = 0x800801b;
SET_BUTTON_HANDLER = 0x8007867;
DelayMs = 0x800572b;
Print = 0x800798b;
Println = 0x80079db;
GetGlobalTicks = 0x8007983;
EEMB_GUI_CONTEXT_PTR = 0x200006a0;
EEMB_GUI_PARENT_CONTEXT_PTR = 0x200006a4;
GUI_buttonHandler = 0x80084ed;
GUI_buttonsHandler = 0x80084ef;
GUI_setDraw = 0x80084f1;
GUI_clearContext = 0x80084f3;
GUI_rowStartStep = 0x80084f5;
DrawImgWithSize = 0x80084f7;
GetTextSize = 0x80084f9;
GetCharHeight = 0x80084fb;
MB_WRITE_H_REG_WITH_ADDR = 0x8004eab;
MB_READ_H_REG_FROM_ADDR = 0x8004ea7;
rtc_setYears = 0x8009def;
rtc_setMonths = 0x8009dd5;
rtc_setDays = 0x8009dbb;
rtc_setDay = 0x8009db5;
rtc_setHours = 0x8009d7f;
rtc_setMins = 0x8009d65;
rtc_setSeconds = 0x8009d4b;
RTC_SET_DATE = 0x8009c31;
RTC_SET_DATE_2 = 0x8009e09;
RTC_GET_DATE = 0x80099b3;
rtc_getYears = 0x8009efb;
rtc_getMonths = 0x8009edd;
rtc_getDays = 0x8009ebf;
rtc_getDay = 0x8009eb9;
rtc_getHours = 0x8009e87;
rtc_getMins = 0x8009e69;
rtc_getSeconds = 0x8009e4b;
MB_REMOTE_MODULE_ADD_INSTANCE = 0x800403d;
MB_WRITE_REMOTE_REG_WITH_INST = 0x80049f1;
xTimerGenericCommand = 0x800671d;
xTimerCreate = 0x800669f;
xTimerIsTimerActive = 0x8006ab1;
xTimerGetPeriod = 0x800677f;
pcTimerGetName = 0x80067af;
pcTimerSetName = 0x80067c7;
xTimerGetExpiryTime = 0x8006797;
xTaskGetTickCount = 0x80059ed;
vTimerSetTimerID = 0x8006b03;
pvTimerGetTimerID = 0x8006adf;
EEmb_MemAlloc = 0x800d8e9;
EEmb_MemFree = 0x800d8ed;
EEmb_Panic = 0x800d519;
MemGetFreeHeapSize = 0x8005351;
MemGetMinimumEverFreeHeapSize = 0x8005357;
uxTaskGetStackHighWaterMark = 0x8005d67;
EEmb_getSerialNumber = 0x800d7bd;
EEmb_getDeviceVerInfo = 0x800d7d9;
DEV_reboot = 0x800809f;
IWDG_setTimeout = 0x800d5f9;
IWDG_reload = 0x800d61d;
DisplaySetBrights = 0x80084fd;
DisplaySetAutoBrights = 0x80084ff;
MSG_pushMessage = 0x80061a1;
MB_FORCE_READ_REMOTE_REGS = 0x80046cb;
MB_FORCE_WRITE_REMOTE_REGS = 0x80047ff;
LED_SET = 0x8006cb1;
LEDS_SET = 0x8006d09;
LED_TOGGLE = 0x8006ccd;
LEDS_TOGGLE = 0x8006ce1;
UART_SET_FRAME_CFG = 0x800803b;
EEmb_buttonHandler = 0x8008353;
FSR_setPowerLevel = 0x8008515;
FSR_changeState = 0x8008519;
FSR_getResetErrorCode = 0x800851d;
FSR_setupParams = 0x8008521;
BTN_GET_STATUS = 0x8006d3d;
MB_GET_REMOTE_REG_GRP_FROM_PTR = 0x8004cb9;
MB_GET_INPUT_REG_GRP_FROM_PTR = 0x8004d0b;
MB_GET_HOLDING_REG_GRP_FROM_PTR = 0x8004d6d;
MB_STORE_DATA_TO_REG = 0x8004e19;
MB_GET_ACTUAL_DATA_PTR = 0x8004cb5;
DEV_EEmbFrameworkCfg = 0x2000268c;
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


