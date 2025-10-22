/* Entry Point */
ENTRY(__entryPoint__)

/* Highest address of the user mode stack */
//_estack = 0x20005000;    /* end of RAM */
/* Generate a link error if heap and stack don't fit into RAM */
_Min_Heap_Size = 0x200;      /* required amount of heap  */
_Min_Stack_Size = 0x400; /* required amount of stack */

/*ld.lld.exe output.o --format=elf --Map=target.map -Ttarget.ld -o target.o --gcc-toolchain=./libs -nostdlib */

DrawText = 0x800a3b1;
DrawImg = 0x800a3b3;
_DrawRect = 0x800a3b5;
AO_OUTPUT = 0x80090bf;
UI_READ_DI = 0x8006de5;
UI_READ_AI = 0x80090cd;
UI_READ_ALL_DI = 0x8009303;
UI_CFG = 0x800933d;
UI_CFG_SET_RANGE = 0x80093fb;
UI_CFG_SET_B = 0x8009423;
RELAY_SET = 0x8006d5d;
RELAY_TOGGLE = 0x8006d79;
RELAYS_TOGGLE = 0x8006d8d;
RELAYS_SET = 0x8006db1;
RELAYS_SET = 0x8006db1;
MB_READ_LOCAL_REG = 0x8004d15;
MB_WRITE_LOCAL_REG = 0x8004d39;
MB_GET_ERROR = 0x8004d05;
MB_WRITE_REMOTE_REG = 0x8004af9;
MODBUS_CFG = 0x8004d4f;
UART_CFG = 0x800943d;
SET_BUTTON_HANDLER = 0x8008b3f;
DelayMs = 0x80057d5;
Print = 0x8008c75;
Println = 0x8008cc5;
GetGlobalTicks = 0x8008c6d;
FONT_DEFAULT = 0x200006f0;
img_default_switchOn = 0x200006fc;
img_default_switchOff = 0x20000700;
img_default_car = 0x20000704;
img_default_ctrl = 0x20000708;
__eg_set_color = 0x800a3b7;
__eg_set_font = 0x800a3b9;
__eg_row_begin = 0x800a3bb;
__eg_row_draw = 0x800a3bd;
__eg_layout_begin = 0x800a3bf;
__eg_list_begin = 0x800a3c3;
__eg_layout_draw = 0x800a3c5;
__eg_flow_layout_begin = 0x800a3c1;
__eg_flow_layout_draw = 0x800a3c7;
__eg_label_draw = 0x800a3c9;
__eg_list_draw = 0x800a3cb;
__eg_img_draw = 0x800a3cd;
__eg_switcher_draw = 0x800a3cf;
__eg_input_int_draw = 0x800a3d1;
__eg_input_float_draw = 0x800a3d3;
__eg_fill_draw = 0x800a3d5;
__eg_button_draw = 0x800a3d7;
__eg_combo_box_draw = 0x800a3d9;
__eg_ghostStepInParent = 0x800a3db;
__eg_set_borders = 0x800a3dd;
__eg_set_unit = 0x800a3df;
EEMB_GUI_CONTEXT_PTR = 0x200006f4;
EEMB_GUI_PARENT_CONTEXT_PTR = 0x200006f8;
GUI_buttonHandler = 0x800a3e1;
GUI_buttonsHandler = 0x800a3e3;
GUI_setDraw = 0x800a3e5;
GUI_clearContext = 0x800a3e7;
GUI_rowStartStep = 0x800a3e9;
DrawImgWithSize = 0x800a3eb;
GetTextSize = 0x800a3ed;
GetCharHeight = 0x800a3ef;
MB_WRITE_H_REG_WITH_ADDR = 0x8004d77;
MB_READ_H_REG_FROM_ADDR = 0x8004d73;
rtc_setYears = 0x800b4e7;
rtc_setMonths = 0x800b4cd;
rtc_setDays = 0x800b4b3;
rtc_setDay = 0x800b4ad;
rtc_setHours = 0x800b477;
rtc_setMins = 0x800b45d;
rtc_setSeconds = 0x800b443;
RTC_SET_DATE = 0x800b32b;
RTC_SET_DATE_2 = 0x800b501;
RTC_GET_DATE = 0x800b0ad;
rtc_getYears = 0x800b5fd;
rtc_getMonths = 0x800b5dd;
rtc_getDays = 0x800b5bd;
rtc_getDay = 0x800b5b7;
rtc_getHours = 0x800b583;
rtc_getMins = 0x800b563;
rtc_getSeconds = 0x800b543;
MB_REMOTE_MODULE_ADD_INSTANCE = 0x8003f6d;
MB_WRITE_REMOTE_REG_WITH_INST = 0x80048ed;
xTimerGenericCommand = 0x80068f1;
xTimerCreate = 0x8006873;
xTimerIsTimerActive = 0x8006c89;
xTimerGetPeriod = 0x8006953;
pcTimerGetName = 0x8006983;
pcTimerSetName = 0x800699b;
xTimerGetExpiryTime = 0x800696b;
xTaskGetTickCount = 0x8005a99;
vTimerSetTimerID = 0x8006cdb;
pvTimerGetTimerID = 0x8006cb7;
EEmb_MemAlloc = 0x800d82d;
EEmb_MemFree = 0x800d831;
EEmb_Panic = 0x800d571;
MemGetFreeHeapSize = 0x80053a7;
MemGetMinimumEverFreeHeapSize = 0x80053ad;
uxTaskGetStackHighWaterMark = 0x8005e13;
EEmb_getSerialNumber = 0x800d795;
EEmb_getDeviceVerInfo = 0x800d7b1;
DEV_reboot = 0x80094c5;
IWDG_setTimeout = 0x800d6b9;
IWDG_reload = 0x800d6dd;
DisplaySetBrights = 0x800a3f1;
DisplaySetAutoBrights = 0x800a3f3;
MSG_pushMessage = 0x800624d;
MB_FORCE_READ_REMOTE_REGS = 0x80045d3;
MB_FORCE_WRITE_REMOTE_REGS = 0x80046f7;
LED_SET = 0x8006e65;
LEDS_SET = 0x8006ebd;
LED_TOGGLE = 0x8006e81;
LEDS_TOGGLE = 0x8006e95;
__eg_canvas_draw = 0x800a3f9;
__eg_fixed_layout_begin = 0x800a3fb;
__eg_fixed_flow_layout_begin = 0x800a3fd;
__eg_canvas_begin = 0x800a3ff;
UART_SET_FRAME_CFG = 0x800945d;
EEmb_buttonHandler = 0x8009791;
FSR_setPowerLevel = 0x800a409;
FSR_changeState = 0x800a40d;
FSR_getResetErrorCode = 0x800a411;
FSR_setupParams = 0x800a415;
BTN_GET_STATUS = 0x8006ef1;
MB_GET_REMOTE_REG_GRP_FROM_PTR = 0x8004b7d;
MB_GET_INPUT_REG_GRP_FROM_PTR = 0x8004bcf;
MB_GET_HOLDING_REG_GRP_FROM_PTR = 0x8004c2d;
MB_STORE_DATA_TO_REG = 0x8004cdd;
MB_GET_ACTUAL_DATA_PTR = 0x8004b79;
DEV_EEmbFrameworkCfg = 0x20002a28;
__eg_dyn_label_draw = 0x800a401;
__eg_animation_draw = 0x800a403;
MODBUS_SET_LOCAL_CHANGED_CALLBACK = 0x800225b;
MODBUS_CHECK_LOCAL_CHANGED = 0x8002263;


__aeabi_unwind_cpp_pr0 = 0x0;
__aeabi_unwind_cpp_pr1 = 0x0;


/* Specify the memory areas */
MEMORY
{
RAM (xrw)      : ORIGIN = 0x200037f8, LENGTH = 0xFFFFFFFF
FLASH (rx)      : ORIGIN = 0x8013200, LENGTH = 0xFFFFFFFF
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


