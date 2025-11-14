
ENTRY(__entryPoint__)

DrawText = 0x80082e1;
DrawImg = 0x80082e3;
_DrawRect = 0x80082e5;
AO_OUTPUT = 0x8007961;
UI_READ_DI = 0x8006b7d;
UI_READ_AI = 0x800796d;
UI_READ_ALL_DI = 0x8007cf3;
UI_CFG = 0x8007d29;
UI_CFG_SET_RANGE = 0x8007e79;
UI_CFG_SET_B = 0x8007ea9;
RELAY_SET = 0x8006af9;
RELAY_TOGGLE = 0x8006b15;
RELAYS_TOGGLE = 0x8006b29;
RELAYS_SET = 0x8006b4d;
RELAYS_SET = 0x8006b4d;
MB_READ_LOCAL_REG = 0x8004ec1;
MB_WRITE_LOCAL_REG = 0x8004edd;
MB_GET_ERROR = 0x8004eb1;
MB_WRITE_REMOTE_REG = 0x8004c99;
MODBUS_CFG = 0x8004ef3;
UART_CFG = 0x8007ec3;
SET_BUTTON_HANDLER = 0x8007703;
DelayMs = 0x800579b;
Print = 0x8007827;
Println = 0x8007877;
GetGlobalTicks = 0x800781f;
FONT_DEFAULT = 0x20000664;
img_default_switchOn = 0x20000670;
img_default_switchOff = 0x20000674;
img_default_car = 0x20000678;
img_default_ctrl = 0x2000067c;
__eg_set_color = 0x80082e7;
__eg_set_font = 0x80082e9;
__eg_row_begin = 0x80082eb;
__eg_row_draw = 0x80082ed;
__eg_layout_begin = 0x80082ef;
__eg_list_begin = 0x80082f3;
__eg_layout_draw = 0x80082f5;
__eg_flow_layout_begin = 0x80082f1;
__eg_flow_layout_draw = 0x80082f7;
__eg_label_draw = 0x80082f9;
__eg_list_draw = 0x80082fb;
__eg_img_draw = 0x80082fd;
__eg_switcher_draw = 0x80082ff;
__eg_input_int_draw = 0x8008301;
__eg_input_float_draw = 0x8008303;
__eg_fill_draw = 0x8008305;
__eg_button_draw = 0x8008307;
__eg_combo_box_draw = 0x8008309;
__eg_ghostStepInParent = 0x800830b;
__eg_set_borders = 0x800830d;
__eg_set_unit = 0x800830f;
EEMB_GUI_CONTEXT_PTR = 0x20000668;
EEMB_GUI_PARENT_CONTEXT_PTR = 0x2000066c;
GUI_buttonHandler = 0x8008311;
GUI_buttonsHandler = 0x8008313;
GUI_setDraw = 0x8008315;
GUI_clearContext = 0x8008317;
GUI_rowStartStep = 0x8008319;
DrawImgWithSize = 0x800831b;
GetTextSize = 0x800831d;
GetCharHeight = 0x800831f;
MB_WRITE_H_REG_WITH_ADDR = 0x8004f1b;
MB_READ_H_REG_FROM_ADDR = 0x8004f17;
rtc_setYears = 0x8008345;
rtc_setMonths = 0x8008349;
rtc_setDays = 0x800834d;
rtc_setDay = 0x8008351;
rtc_setHours = 0x8008355;
rtc_setMins = 0x8008359;
rtc_setSeconds = 0x800835d;
RTC_SET_DATE = 0x8008361;
RTC_SET_DATE_2 = 0x8008365;
RTC_GET_DATE = 0x8008369;
rtc_getYears = 0x800836d;
rtc_getMonths = 0x8008371;
rtc_getDays = 0x8008375;
rtc_getDay = 0x8008379;
rtc_getHours = 0x800837d;
rtc_getMins = 0x8008381;
rtc_getSeconds = 0x8008385;
MB_REMOTE_MODULE_ADD_INSTANCE = 0x80040ad;
MB_WRITE_REMOTE_REG_WITH_INST = 0x8004a61;
xTimerGenericCommand = 0x8006691;
xTimerCreate = 0x8006613;
xTimerIsTimerActive = 0x8006a25;
xTimerGetPeriod = 0x80066f3;
pcTimerGetName = 0x8006723;
pcTimerSetName = 0x800673b;
xTimerGetExpiryTime = 0x800670b;
xTaskGetTickCount = 0x8005a5d;
vTimerSetTimerID = 0x8006a77;
pvTimerGetTimerID = 0x8006a53;
EEmb_MemAlloc = 0x800c6f1;
EEmb_MemFree = 0x800c6f5;
EEmb_Panic = 0x800c379;
MemGetFreeHeapSize = 0x80053c1;
MemGetMinimumEverFreeHeapSize = 0x80053c7;
uxTaskGetStackHighWaterMark = 0x8005dd7;
EEmb_getSerialNumber = 0x800c5b1;
EEmb_getDeviceVerInfo = 0x800c5cd;
DEV_reboot = 0x8007f15;
IWDG_setTimeout = 0x800c459;
IWDG_reload = 0x800c47d;
DisplaySetBrights = 0x8008321;
DisplaySetAutoBrights = 0x8008323;
MSG_pushMessage = 0x8006211;
MB_FORCE_READ_REMOTE_REGS = 0x800473b;
MB_FORCE_WRITE_REMOTE_REGS = 0x800486f;
LED_SET = 0x8008339;
LEDS_SET = 0x8008341;
LED_TOGGLE = 0x8008335;
LEDS_TOGGLE = 0x800833d;
__eg_canvas_draw = 0x8008327;
__eg_fixed_layout_begin = 0x8008329;
__eg_fixed_flow_layout_begin = 0x800832b;
__eg_canvas_begin = 0x800832d;
UART_SET_FRAME_CFG = 0x8007ee3;
EEmb_buttonHandler = 0x800817f;
FSR_setPowerLevel = 0x8008d27;
FSR_changeState = 0x8008d65;
FSR_getResetErrorCode = 0x8008d9b;
FSR_setupParams = 0x8008da9;
BTN_GET_STATUS = 0x8006bf7;
MB_GET_REMOTE_REG_GRP_FROM_PTR = 0x8004d29;
MB_GET_INPUT_REG_GRP_FROM_PTR = 0x8004d7b;
MB_GET_HOLDING_REG_GRP_FROM_PTR = 0x8004ddd;
MB_STORE_DATA_TO_REG = 0x8004e89;
MB_GET_ACTUAL_DATA_PTR = 0x8004d25;
DEV_EEmbFrameworkCfg = 0x20002600;
__eg_dyn_label_draw = 0x800832f;
__eg_animation_draw = 0x8008331;
MODBUS_SET_LOCAL_CHANGED_CALLBACK = 0x80022cb;
MODBUS_CHECK_LOCAL_CHANGED = 0x80022d3;


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


