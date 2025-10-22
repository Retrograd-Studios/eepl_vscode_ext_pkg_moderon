/* Entry Point */
ENTRY(__entryPoint__)

/* Highest address of the user mode stack */
//_estack = 0x20005000;    /* end of RAM */
/* Generate a link error if heap and stack don't fit into RAM */
_Min_Heap_Size = 0x200;      /* required amount of heap  */
_Min_Stack_Size = 0x400; /* required amount of stack */

/*ld.lld.exe output.o --format=elf --Map=target.map -Ttarget.ld -o target.o --gcc-toolchain=./libs -nostdlib */

DrawText = 0x800a231;
DrawImg = 0x800a233;
_DrawRect = 0x800a235;
AO_OUTPUT = 0x8008f3f;
UI_READ_DI = 0x8006dcd;
UI_READ_AI = 0x8008f4d;
UI_READ_ALL_DI = 0x8009183;
UI_CFG = 0x80091bd;
UI_CFG_SET_RANGE = 0x800927b;
UI_CFG_SET_B = 0x80092a3;
RELAY_SET = 0x8006d45;
RELAY_TOGGLE = 0x8006d61;
RELAYS_TOGGLE = 0x8006d75;
RELAYS_SET = 0x8006d99;
RELAYS_SET = 0x8006d99;
MB_READ_LOCAL_REG = 0x8004cfd;
MB_WRITE_LOCAL_REG = 0x8004d21;
MB_GET_ERROR = 0x8004ced;
MB_WRITE_REMOTE_REG = 0x8004ae1;
MODBUS_CFG = 0x8004d37;
UART_CFG = 0x80092bd;
SET_BUTTON_HANDLER = 0x80089bf;
DelayMs = 0x80057bd;
Print = 0x8008af5;
Println = 0x8008b45;
GetGlobalTicks = 0x8008aed;
FONT_DEFAULT = 0x200006bc;
img_default_switchOn = 0x200006c8;
img_default_switchOff = 0x200006cc;
img_default_car = 0x200006d0;
img_default_ctrl = 0x200006d4;
__eg_set_color = 0x800a237;
__eg_set_font = 0x800a239;
__eg_row_begin = 0x800a23b;
__eg_row_draw = 0x800a23d;
__eg_layout_begin = 0x800a23f;
__eg_list_begin = 0x800a243;
__eg_layout_draw = 0x800a245;
__eg_flow_layout_begin = 0x800a241;
__eg_flow_layout_draw = 0x800a247;
__eg_label_draw = 0x800a249;
__eg_list_draw = 0x800a24b;
__eg_img_draw = 0x800a24d;
__eg_switcher_draw = 0x800a24f;
__eg_input_int_draw = 0x800a251;
__eg_input_float_draw = 0x800a253;
__eg_fill_draw = 0x800a255;
__eg_button_draw = 0x800a257;
__eg_combo_box_draw = 0x800a259;
__eg_ghostStepInParent = 0x800a25b;
__eg_set_borders = 0x800a25d;
__eg_set_unit = 0x800a25f;
EEMB_GUI_CONTEXT_PTR = 0x200006c0;
EEMB_GUI_PARENT_CONTEXT_PTR = 0x200006c4;
GUI_buttonHandler = 0x800a261;
GUI_buttonsHandler = 0x800a263;
GUI_setDraw = 0x800a265;
GUI_clearContext = 0x800a267;
GUI_rowStartStep = 0x800a269;
DrawImgWithSize = 0x800a26b;
GetTextSize = 0x800a26d;
GetCharHeight = 0x800a26f;
MB_WRITE_H_REG_WITH_ADDR = 0x8004d5f;
MB_READ_H_REG_FROM_ADDR = 0x8004d5b;
rtc_setYears = 0x800b367;
rtc_setMonths = 0x800b34d;
rtc_setDays = 0x800b333;
rtc_setDay = 0x800b32d;
rtc_setHours = 0x800b2f7;
rtc_setMins = 0x800b2dd;
rtc_setSeconds = 0x800b2c3;
RTC_SET_DATE = 0x800b1ab;
RTC_SET_DATE_2 = 0x800b381;
RTC_GET_DATE = 0x800af2d;
rtc_getYears = 0x800b47d;
rtc_getMonths = 0x800b45d;
rtc_getDays = 0x800b43d;
rtc_getDay = 0x800b437;
rtc_getHours = 0x800b403;
rtc_getMins = 0x800b3e3;
rtc_getSeconds = 0x800b3c3;
MB_REMOTE_MODULE_ADD_INSTANCE = 0x8003f55;
MB_WRITE_REMOTE_REG_WITH_INST = 0x80048d5;
xTimerGenericCommand = 0x80068d9;
xTimerCreate = 0x800685b;
xTimerIsTimerActive = 0x8006c71;
xTimerGetPeriod = 0x800693b;
pcTimerGetName = 0x800696b;
pcTimerSetName = 0x8006983;
xTimerGetExpiryTime = 0x8006953;
xTaskGetTickCount = 0x8005a81;
vTimerSetTimerID = 0x8006cc3;
pvTimerGetTimerID = 0x8006c9f;
EEmb_MemAlloc = 0x800d6b9;
EEmb_MemFree = 0x800d6bd;
EEmb_Panic = 0x800d429;
MemGetFreeHeapSize = 0x800538f;
MemGetMinimumEverFreeHeapSize = 0x8005395;
uxTaskGetStackHighWaterMark = 0x8005dfb;
EEmb_getSerialNumber = 0x800d609;
EEmb_getDeviceVerInfo = 0x800d625;
DEV_reboot = 0x8009345;
IWDG_setTimeout = 0x800d571;
IWDG_reload = 0x800d595;
DisplaySetBrights = 0x800a271;
DisplaySetAutoBrights = 0x800a273;
MSG_pushMessage = 0x8006235;
MB_FORCE_READ_REMOTE_REGS = 0x80045bb;
MB_FORCE_WRITE_REMOTE_REGS = 0x80046df;
LED_SET = 0x8006e71;
LEDS_SET = 0x8006ec9;
LED_TOGGLE = 0x8006e8d;
LEDS_TOGGLE = 0x8006ea1;
__eg_canvas_draw = 0x800a279;
__eg_fixed_layout_begin = 0x800a27b;
__eg_fixed_flow_layout_begin = 0x800a27d;
__eg_canvas_begin = 0x800a27f;
UART_SET_FRAME_CFG = 0x80092dd;
EEmb_buttonHandler = 0x8009611;
FSR_setPowerLevel = 0x800a289;
FSR_changeState = 0x800a28d;
FSR_getResetErrorCode = 0x800a291;
FSR_setupParams = 0x800a295;
BTN_GET_STATUS = 0x8006efd;
MB_GET_REMOTE_REG_GRP_FROM_PTR = 0x8004b65;
MB_GET_INPUT_REG_GRP_FROM_PTR = 0x8004bb7;
MB_GET_HOLDING_REG_GRP_FROM_PTR = 0x8004c15;
MB_STORE_DATA_TO_REG = 0x8004cc5;
MB_GET_ACTUAL_DATA_PTR = 0x8004b61;
DEV_EEmbFrameworkCfg = 0x200026bc;
__eg_dyn_label_draw = 0x800a281;
__eg_animation_draw = 0x800a283;
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


