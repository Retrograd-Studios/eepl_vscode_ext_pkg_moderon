
ENTRY(__entryPoint__)

DrawText = 0x80085c1;
DrawImg = 0x80085c3;
_DrawRect = 0x80085c5;
AO_OUTPUT = 0x8007be1;
UI_READ_DI = 0x8006d15;
UI_READ_AI = 0x8007bf1;
UI_READ_ALL_DI = 0x8007f49;
UI_CFG = 0x8007f81;
UI_CFG_SET_RANGE = 0x80080d5;
UI_CFG_SET_B = 0x8008105;
RELAY_SET = 0x8006c91;
RELAY_TOGGLE = 0x8006cad;
RELAYS_TOGGLE = 0x8006cc1;
RELAYS_SET = 0x8006ce5;
RELAYS_SET = 0x8006ce5;
MB_READ_LOCAL_REG = 0x8004f5d;
MB_WRITE_LOCAL_REG = 0x8004f79;
MB_GET_ERROR = 0x8004f4d;
MB_WRITE_REMOTE_REG = 0x8004d35;
MODBUS_CFG = 0x8004f8f;
UART_CFG = 0x800811f;
SET_BUTTON_HANDLER = 0x8007973;
DelayMs = 0x8005837;
Print = 0x8007a97;
Println = 0x8007ae3;
GetGlobalTicks = 0x8007a8f;
EEMB_GUI_CONTEXT_PTR = 0x200006bc;
EEMB_GUI_PARENT_CONTEXT_PTR = 0x200006c0;
GUI_buttonHandler = 0x80085f1;
GUI_buttonsHandler = 0x80085f3;
GUI_setDraw = 0x80085f5;
GUI_clearContext = 0x80085f7;
GUI_rowStartStep = 0x80085f9;
DrawImgWithSize = 0x80085fb;
GetTextSize = 0x80085fd;
GetCharHeight = 0x80085ff;
MB_WRITE_H_REG_WITH_ADDR = 0x8004fb7;
MB_READ_H_REG_FROM_ADDR = 0x8004fb3;
rtc_setYears = 0x8009ef3;
rtc_setMonths = 0x8009ed9;
rtc_setDays = 0x8009ebf;
rtc_setDay = 0x8009eb9;
rtc_setHours = 0x8009e83;
rtc_setMins = 0x8009e69;
rtc_setSeconds = 0x8009e4f;
RTC_SET_DATE = 0x8009d35;
RTC_SET_DATE_2 = 0x8009f0d;
RTC_GET_DATE = 0x8009ab7;
rtc_getYears = 0x8009fff;
rtc_getMonths = 0x8009fe1;
rtc_getDays = 0x8009fc3;
rtc_getDay = 0x8009fbd;
rtc_getHours = 0x8009f8b;
rtc_getMins = 0x8009f6d;
rtc_getSeconds = 0x8009f4f;
MB_REMOTE_MODULE_ADD_INSTANCE = 0x8004149;
MB_WRITE_REMOTE_REG_WITH_INST = 0x8004afd;
xTimerGenericCommand = 0x8006829;
xTimerCreate = 0x80067ab;
xTimerIsTimerActive = 0x8006bbd;
xTimerGetPeriod = 0x800688b;
pcTimerGetName = 0x80068bb;
pcTimerSetName = 0x80068d3;
xTimerGetExpiryTime = 0x80068a3;
xTaskGetTickCount = 0x8005af9;
vTimerSetTimerID = 0x8006c0f;
pvTimerGetTimerID = 0x8006beb;
EEmb_MemAlloc = 0x800d9ed;
EEmb_MemFree = 0x800d9f1;
EEmb_Panic = 0x800d61d;
MemGetFreeHeapSize = 0x800545d;
MemGetMinimumEverFreeHeapSize = 0x8005463;
uxTaskGetStackHighWaterMark = 0x8005e73;
EEmb_getSerialNumber = 0x800d8c1;
EEmb_getDeviceVerInfo = 0x800d8dd;
DEV_reboot = 0x80081a3;
IWDG_setTimeout = 0x800d6fd;
IWDG_reload = 0x800d721;
DisplaySetBrights = 0x8008601;
DisplaySetAutoBrights = 0x8008603;
MSG_pushMessage = 0x80062ad;
MB_FORCE_READ_REMOTE_REGS = 0x80047d7;
MB_FORCE_WRITE_REMOTE_REGS = 0x800490b;
LED_SET = 0x8006dbd;
LEDS_SET = 0x8006e15;
LED_TOGGLE = 0x8006dd9;
LEDS_TOGGLE = 0x8006ded;
UART_SET_FRAME_CFG = 0x800813f;
EEmb_buttonHandler = 0x8008457;
FSR_setPowerLevel = 0x8008619;
FSR_changeState = 0x800861d;
FSR_getResetErrorCode = 0x8008621;
FSR_setupParams = 0x8008625;
BTN_GET_STATUS = 0x8006e49;
MB_GET_REMOTE_REG_GRP_FROM_PTR = 0x8004dc5;
MB_GET_INPUT_REG_GRP_FROM_PTR = 0x8004e17;
MB_GET_HOLDING_REG_GRP_FROM_PTR = 0x8004e79;
MB_STORE_DATA_TO_REG = 0x8004f25;
MB_GET_ACTUAL_DATA_PTR = 0x8004dc1;
DEV_EEmbFrameworkCfg = 0x200026ac;
MODBUS_SET_LOCAL_CHANGED_CALLBACK = 0x800225b;
MODBUS_CHECK_LOCAL_CHANGED = 0x8002263;
UART_SET_PROTOCOL = 0x8002a41;
UART_SET_TIMEOUT = 0x8002a5b;
UART_RX_SIZE = 0x8002a6b;
UART_FLUSH_RX = 0x8002a81;
UART_RX_BUF = 0x8002a97;
UART_WRITE_DATA = 0x8002aa7;
UART_READ_DATA = 0x8002ac5;


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


