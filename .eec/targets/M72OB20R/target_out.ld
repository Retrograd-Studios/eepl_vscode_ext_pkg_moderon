/* Entry Point */
ENTRY(__entryPoint__)

/* Highest address of the user mode stack */
//_estack = 0x20005000;    /* end of RAM */
/* Generate a link error if heap and stack don't fit into RAM */
_Min_Heap_Size = 0x200;      /* required amount of heap  */
_Min_Stack_Size = 0x400; /* required amount of stack */

/*ld.lld.exe output.o --format=elf --Map=target.map -Ttarget.ld -o target.o --gcc-toolchain=./libs -nostdlib */

DrawText = 0x800a4f9;
DrawImg = 0x800a4fb;
_DrawRect = 0x800a4fd;
AO_OUTPUT = 0x8009059;
UI_READ_DI = 0x8006dbf;
UI_READ_AI = 0x8009069;
UI_READ_ALL_DI = 0x80092b3;
UI_CFG = 0x80092ed;
UI_CFG_SET_RANGE = 0x80093c3;
UI_CFG_SET_B = 0x80093eb;
RELAY_SET = 0x8006d3f;
RELAY_TOGGLE = 0x8006d59;
RELAYS_TOGGLE = 0x8006d6d;
RELAYS_SET = 0x8006d8f;
RELAYS_SET = 0x8006d8f;
MB_READ_LOCAL_REG = 0x8004d9d;
MB_WRITE_LOCAL_REG = 0x8004db9;
MB_GET_ERROR = 0x8004d8d;
MB_WRITE_REMOTE_REG = 0x8004b75;
MODBUS_CFG = 0x8004dcf;
UART_CFG = 0x8009405;
SET_BUTTON_HANDLER = 0x8008ae3;
DelayMs = 0x80057e7;
Print = 0x8008c19;
Println = 0x8008c69;
GetGlobalTicks = 0x8008c11;
EEMB_GUI_CONTEXT_PTR = 0x200006d4;
EEMB_GUI_PARENT_CONTEXT_PTR = 0x200006d8;
GUI_buttonHandler = 0x800a529;
GUI_buttonsHandler = 0x800a52b;
GUI_setDraw = 0x800a52d;
GUI_clearContext = 0x800a52f;
GUI_rowStartStep = 0x800a531;
DrawImgWithSize = 0x800a533;
GetTextSize = 0x800a535;
GetCharHeight = 0x800a537;
MB_WRITE_H_REG_WITH_ADDR = 0x8004df7;
MB_READ_H_REG_FROM_ADDR = 0x8004df3;
rtc_setYears = 0x800b607;
rtc_setMonths = 0x800b5ed;
rtc_setDays = 0x800b5d3;
rtc_setDay = 0x800b5cd;
rtc_setHours = 0x800b597;
rtc_setMins = 0x800b57d;
rtc_setSeconds = 0x800b563;
RTC_SET_DATE = 0x800b449;
RTC_SET_DATE_2 = 0x800b621;
RTC_GET_DATE = 0x800b1cb;
rtc_getYears = 0x800b713;
rtc_getMonths = 0x800b6f5;
rtc_getDays = 0x800b6d7;
rtc_getDay = 0x800b6d1;
rtc_getHours = 0x800b69f;
rtc_getMins = 0x800b681;
rtc_getSeconds = 0x800b663;
MB_REMOTE_MODULE_ADD_INSTANCE = 0x8003f89;
MB_WRITE_REMOTE_REG_WITH_INST = 0x800493d;
xTimerGenericCommand = 0x80068d9;
xTimerCreate = 0x800685b;
xTimerIsTimerActive = 0x8006c6d;
xTimerGetPeriod = 0x800693b;
pcTimerGetName = 0x800696b;
pcTimerSetName = 0x8006983;
xTimerGetExpiryTime = 0x8006953;
xTaskGetTickCount = 0x8005aa9;
vTimerSetTimerID = 0x8006cbf;
pvTimerGetTimerID = 0x8006c9b;
EEmb_MemAlloc = 0x800d8fd;
EEmb_MemFree = 0x800d901;
EEmb_Panic = 0x800d4e9;
MemGetFreeHeapSize = 0x800540d;
MemGetMinimumEverFreeHeapSize = 0x8005413;
uxTaskGetStackHighWaterMark = 0x8005e23;
EEmb_getSerialNumber = 0x800d7e9;
EEmb_getDeviceVerInfo = 0x800d805;
DEV_reboot = 0x800948d;
IWDG_setTimeout = 0x800d621;
IWDG_reload = 0x800d645;
DisplaySetBrights = 0x800a539;
DisplaySetAutoBrights = 0x800a53b;
MSG_pushMessage = 0x800625d;
MB_FORCE_READ_REMOTE_REGS = 0x8004617;
MB_FORCE_WRITE_REMOTE_REGS = 0x800474b;
LED_SET = 0x8006e41;
LEDS_SET = 0x8006e99;
LED_TOGGLE = 0x8006e5d;
LEDS_TOGGLE = 0x8006e71;
UART_SET_FRAME_CFG = 0x8009425;
EEmb_buttonHandler = 0x8009769;
FSR_setPowerLevel = 0x800a551;
FSR_changeState = 0x800a555;
FSR_getResetErrorCode = 0x800a559;
FSR_setupParams = 0x800a55d;
BTN_GET_STATUS = 0x8006ecd;
MB_GET_REMOTE_REG_GRP_FROM_PTR = 0x8004c05;
MB_GET_INPUT_REG_GRP_FROM_PTR = 0x8004c57;
MB_GET_HOLDING_REG_GRP_FROM_PTR = 0x8004cb9;
MB_STORE_DATA_TO_REG = 0x8004d65;
MB_GET_ACTUAL_DATA_PTR = 0x8004c01;
DEV_EEmbFrameworkCfg = 0x20002a08;
MODBUS_SET_LOCAL_CHANGED_CALLBACK = 0x800225b;
MODBUS_CHECK_LOCAL_CHANGED = 0x8002263;


__aeabi_unwind_cpp_pr0 = 0x0;
__aeabi_unwind_cpp_pr1 = 0x0;


/* Specify the memory areas */
MEMORY
{
RAM (xrw)      : ORIGIN = 0x200037f8, LENGTH = 0xc808
FLASH (rx)      : ORIGIN = 0x8013200, LENGTH = 0x2cc00
}

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


