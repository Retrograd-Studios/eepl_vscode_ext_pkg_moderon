/* Entry Point */
ENTRY(__entryPoint__)

/* Highest address of the user mode stack */
//_estack = 0x20005000;    /* end of RAM */
/* Generate a link error if heap and stack don't fit into RAM */
_Min_Heap_Size = 0x200;      /* required amount of heap  */
_Min_Stack_Size = 0x400; /* required amount of stack */

/*ld.lld.exe output.o --format=elf --Map=target.map -Ttarget.ld -o target.o --gcc-toolchain=./libs -nostdlib */

DrawText = 0x800a39d;
DrawImg = 0x800a39f;
_DrawRect = 0x800a3a1;
AO_OUTPUT = 0x8008efd;
UI_READ_DI = 0x8006dad;
UI_READ_AI = 0x8008f0d;
UI_READ_ALL_DI = 0x8009157;
UI_CFG = 0x8009191;
UI_CFG_SET_RANGE = 0x8009267;
UI_CFG_SET_B = 0x800928f;
RELAY_SET = 0x8006d29;
RELAY_TOGGLE = 0x8006d45;
RELAYS_TOGGLE = 0x8006d59;
RELAYS_SET = 0x8006d7d;
RELAYS_SET = 0x8006d7d;
MB_READ_LOCAL_REG = 0x8004d85;
MB_WRITE_LOCAL_REG = 0x8004da1;
MB_GET_ERROR = 0x8004d75;
MB_WRITE_REMOTE_REG = 0x8004b5d;
MODBUS_CFG = 0x8004db7;
UART_CFG = 0x80092a9;
SET_BUTTON_HANDLER = 0x8008987;
DelayMs = 0x80057cf;
Print = 0x8008abd;
Println = 0x8008b0d;
GetGlobalTicks = 0x8008ab5;
EEMB_GUI_CONTEXT_PTR = 0x200006a0;
EEMB_GUI_PARENT_CONTEXT_PTR = 0x200006a4;
GUI_buttonHandler = 0x800a3cd;
GUI_buttonsHandler = 0x800a3cf;
GUI_setDraw = 0x800a3d1;
GUI_clearContext = 0x800a3d3;
GUI_rowStartStep = 0x800a3d5;
DrawImgWithSize = 0x800a3d7;
GetTextSize = 0x800a3d9;
GetCharHeight = 0x800a3db;
MB_WRITE_H_REG_WITH_ADDR = 0x8004ddf;
MB_READ_H_REG_FROM_ADDR = 0x8004ddb;
rtc_setYears = 0x800b4ab;
rtc_setMonths = 0x800b491;
rtc_setDays = 0x800b477;
rtc_setDay = 0x800b471;
rtc_setHours = 0x800b43b;
rtc_setMins = 0x800b421;
rtc_setSeconds = 0x800b407;
RTC_SET_DATE = 0x800b2ed;
RTC_SET_DATE_2 = 0x800b4c5;
RTC_GET_DATE = 0x800b06f;
rtc_getYears = 0x800b5b7;
rtc_getMonths = 0x800b599;
rtc_getDays = 0x800b57b;
rtc_getDay = 0x800b575;
rtc_getHours = 0x800b543;
rtc_getMins = 0x800b525;
rtc_getSeconds = 0x800b507;
MB_REMOTE_MODULE_ADD_INSTANCE = 0x8003f71;
MB_WRITE_REMOTE_REG_WITH_INST = 0x8004925;
xTimerGenericCommand = 0x80068c1;
xTimerCreate = 0x8006843;
xTimerIsTimerActive = 0x8006c55;
xTimerGetPeriod = 0x8006923;
pcTimerGetName = 0x8006953;
pcTimerSetName = 0x800696b;
xTimerGetExpiryTime = 0x800693b;
xTaskGetTickCount = 0x8005a91;
vTimerSetTimerID = 0x8006ca7;
pvTimerGetTimerID = 0x8006c83;
EEmb_MemAlloc = 0x800d795;
EEmb_MemFree = 0x800d799;
EEmb_Panic = 0x800d3c5;
MemGetFreeHeapSize = 0x80053f5;
MemGetMinimumEverFreeHeapSize = 0x80053fb;
uxTaskGetStackHighWaterMark = 0x8005e0b;
EEmb_getSerialNumber = 0x800d669;
EEmb_getDeviceVerInfo = 0x800d685;
DEV_reboot = 0x8009331;
IWDG_setTimeout = 0x800d4a5;
IWDG_reload = 0x800d4c9;
DisplaySetBrights = 0x800a3dd;
DisplaySetAutoBrights = 0x800a3df;
MSG_pushMessage = 0x8006245;
MB_FORCE_READ_REMOTE_REGS = 0x80045ff;
MB_FORCE_WRITE_REMOTE_REGS = 0x8004733;
LED_SET = 0x8006e55;
LEDS_SET = 0x8006ead;
LED_TOGGLE = 0x8006e71;
LEDS_TOGGLE = 0x8006e85;
UART_SET_FRAME_CFG = 0x80092c9;
EEmb_buttonHandler = 0x800960d;
FSR_setPowerLevel = 0x800a3f5;
FSR_changeState = 0x800a3f9;
FSR_getResetErrorCode = 0x800a3fd;
FSR_setupParams = 0x800a401;
BTN_GET_STATUS = 0x8006ee1;
MB_GET_REMOTE_REG_GRP_FROM_PTR = 0x8004bed;
MB_GET_INPUT_REG_GRP_FROM_PTR = 0x8004c3f;
MB_GET_HOLDING_REG_GRP_FROM_PTR = 0x8004ca1;
MB_STORE_DATA_TO_REG = 0x8004d4d;
MB_GET_ACTUAL_DATA_PTR = 0x8004be9;
DEV_EEmbFrameworkCfg = 0x2000269c;
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


