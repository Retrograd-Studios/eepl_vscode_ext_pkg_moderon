
ENTRY(__entryPoint__)

DrawText = 0x800847d;
DrawImg = 0x800847f;
_DrawRect = 0x8008481;
AO_OUTPUT = 0x8007a9d;
UI_READ_DI = 0x8006bc9;
UI_READ_AI = 0x8007aad;
UI_READ_ALL_DI = 0x8007e05;
UI_CFG = 0x8007e3d;
UI_CFG_SET_RANGE = 0x8007f91;
UI_CFG_SET_B = 0x8007fc1;
RELAY_SET = 0x8006b45;
RELAY_TOGGLE = 0x8006b61;
RELAYS_TOGGLE = 0x8006b75;
RELAYS_SET = 0x8006b99;
RELAYS_SET = 0x8006b99;
MB_READ_LOCAL_REG = 0x8004e11;
MB_WRITE_LOCAL_REG = 0x8004e2d;
MB_GET_ERROR = 0x8004e01;
MB_WRITE_REMOTE_REG = 0x8004be9;
MODBUS_CFG = 0x8004e43;
UART_CFG = 0x8007fdb;
SET_BUTTON_HANDLER = 0x8007827;
DelayMs = 0x80056eb;
Print = 0x800794b;
Println = 0x800799b;
GetGlobalTicks = 0x8007943;
EEMB_GUI_CONTEXT_PTR = 0x200006a0;
EEMB_GUI_PARENT_CONTEXT_PTR = 0x200006a4;
GUI_buttonHandler = 0x80084ad;
GUI_buttonsHandler = 0x80084af;
GUI_setDraw = 0x80084b1;
GUI_clearContext = 0x80084b3;
GUI_rowStartStep = 0x80084b5;
DrawImgWithSize = 0x80084b7;
GetTextSize = 0x80084b9;
GetCharHeight = 0x80084bb;
MB_WRITE_H_REG_WITH_ADDR = 0x8004e6b;
MB_READ_H_REG_FROM_ADDR = 0x8004e67;
rtc_setYears = 0x8009daf;
rtc_setMonths = 0x8009d95;
rtc_setDays = 0x8009d7b;
rtc_setDay = 0x8009d75;
rtc_setHours = 0x8009d3f;
rtc_setMins = 0x8009d25;
rtc_setSeconds = 0x8009d0b;
RTC_SET_DATE = 0x8009bf1;
RTC_SET_DATE_2 = 0x8009dc9;
RTC_GET_DATE = 0x8009973;
rtc_getYears = 0x8009ebb;
rtc_getMonths = 0x8009e9d;
rtc_getDays = 0x8009e7f;
rtc_getDay = 0x8009e79;
rtc_getHours = 0x8009e47;
rtc_getMins = 0x8009e29;
rtc_getSeconds = 0x8009e0b;
MB_REMOTE_MODULE_ADD_INSTANCE = 0x8003ffd;
MB_WRITE_REMOTE_REG_WITH_INST = 0x80049b1;
xTimerGenericCommand = 0x80066dd;
xTimerCreate = 0x800665f;
xTimerIsTimerActive = 0x8006a71;
xTimerGetPeriod = 0x800673f;
pcTimerGetName = 0x800676f;
pcTimerSetName = 0x8006787;
xTimerGetExpiryTime = 0x8006757;
xTaskGetTickCount = 0x80059ad;
vTimerSetTimerID = 0x8006ac3;
pvTimerGetTimerID = 0x8006a9f;
EEmb_MemAlloc = 0x800d8a9;
EEmb_MemFree = 0x800d8ad;
EEmb_Panic = 0x800d4d9;
MemGetFreeHeapSize = 0x8005311;
MemGetMinimumEverFreeHeapSize = 0x8005317;
uxTaskGetStackHighWaterMark = 0x8005d27;
EEmb_getSerialNumber = 0x800d77d;
EEmb_getDeviceVerInfo = 0x800d799;
DEV_reboot = 0x800805f;
IWDG_setTimeout = 0x800d5b9;
IWDG_reload = 0x800d5dd;
DisplaySetBrights = 0x80084bd;
DisplaySetAutoBrights = 0x80084bf;
MSG_pushMessage = 0x8006161;
MB_FORCE_READ_REMOTE_REGS = 0x800468b;
MB_FORCE_WRITE_REMOTE_REGS = 0x80047bf;
LED_SET = 0x8006c71;
LEDS_SET = 0x8006cc9;
LED_TOGGLE = 0x8006c8d;
LEDS_TOGGLE = 0x8006ca1;
UART_SET_FRAME_CFG = 0x8007ffb;
EEmb_buttonHandler = 0x8008313;
FSR_setPowerLevel = 0x80084d5;
FSR_changeState = 0x80084d9;
FSR_getResetErrorCode = 0x80084dd;
FSR_setupParams = 0x80084e1;
BTN_GET_STATUS = 0x8006cfd;
MB_GET_REMOTE_REG_GRP_FROM_PTR = 0x8004c79;
MB_GET_INPUT_REG_GRP_FROM_PTR = 0x8004ccb;
MB_GET_HOLDING_REG_GRP_FROM_PTR = 0x8004d2d;
MB_STORE_DATA_TO_REG = 0x8004dd9;
MB_GET_ACTUAL_DATA_PTR = 0x8004c75;
DEV_EEmbFrameworkCfg = 0x2000268c;
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


