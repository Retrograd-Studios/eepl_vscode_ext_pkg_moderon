
ENTRY(__entryPoint__)

DrawText = 0x80082a1;
DrawImg = 0x80082a3;
_DrawRect = 0x80082a5;
AO_OUTPUT = 0x8007921;
UI_READ_DI = 0x8006b3d;
UI_READ_AI = 0x800792d;
UI_READ_ALL_DI = 0x8007cb3;
UI_CFG = 0x8007ce9;
UI_CFG_SET_RANGE = 0x8007e39;
UI_CFG_SET_B = 0x8007e69;
RELAY_SET = 0x8006ab9;
RELAY_TOGGLE = 0x8006ad5;
RELAYS_TOGGLE = 0x8006ae9;
RELAYS_SET = 0x8006b0d;
RELAYS_SET = 0x8006b0d;
MB_READ_LOCAL_REG = 0x8004e81;
MB_WRITE_LOCAL_REG = 0x8004e9d;
MB_GET_ERROR = 0x8004e71;
MB_WRITE_REMOTE_REG = 0x8004c59;
MODBUS_CFG = 0x8004eb3;
UART_CFG = 0x8007e83;
SET_BUTTON_HANDLER = 0x80076c3;
DelayMs = 0x800575b;
Print = 0x80077e7;
Println = 0x8007837;
GetGlobalTicks = 0x80077df;
FONT_DEFAULT = 0x20000664;
img_default_switchOn = 0x20000670;
img_default_switchOff = 0x20000674;
img_default_car = 0x20000678;
img_default_ctrl = 0x2000067c;
__eg_set_color = 0x80082a7;
__eg_set_font = 0x80082a9;
__eg_row_begin = 0x80082ab;
__eg_row_draw = 0x80082ad;
__eg_layout_begin = 0x80082af;
__eg_list_begin = 0x80082b3;
__eg_layout_draw = 0x80082b5;
__eg_flow_layout_begin = 0x80082b1;
__eg_flow_layout_draw = 0x80082b7;
__eg_label_draw = 0x80082b9;
__eg_list_draw = 0x80082bb;
__eg_img_draw = 0x80082bd;
__eg_switcher_draw = 0x80082bf;
__eg_input_int_draw = 0x80082c1;
__eg_input_float_draw = 0x80082c3;
__eg_fill_draw = 0x80082c5;
__eg_button_draw = 0x80082c7;
__eg_combo_box_draw = 0x80082c9;
__eg_ghostStepInParent = 0x80082cb;
__eg_set_borders = 0x80082cd;
__eg_set_unit = 0x80082cf;
EEMB_GUI_CONTEXT_PTR = 0x20000668;
EEMB_GUI_PARENT_CONTEXT_PTR = 0x2000066c;
GUI_buttonHandler = 0x80082d1;
GUI_buttonsHandler = 0x80082d3;
GUI_setDraw = 0x80082d5;
GUI_clearContext = 0x80082d7;
GUI_rowStartStep = 0x80082d9;
DrawImgWithSize = 0x80082db;
GetTextSize = 0x80082dd;
GetCharHeight = 0x80082df;
MB_WRITE_H_REG_WITH_ADDR = 0x8004edb;
MB_READ_H_REG_FROM_ADDR = 0x8004ed7;
rtc_setYears = 0x8008305;
rtc_setMonths = 0x8008309;
rtc_setDays = 0x800830d;
rtc_setDay = 0x8008311;
rtc_setHours = 0x8008315;
rtc_setMins = 0x8008319;
rtc_setSeconds = 0x800831d;
RTC_SET_DATE = 0x8008321;
RTC_SET_DATE_2 = 0x8008325;
RTC_GET_DATE = 0x8008329;
rtc_getYears = 0x800832d;
rtc_getMonths = 0x8008331;
rtc_getDays = 0x8008335;
rtc_getDay = 0x8008339;
rtc_getHours = 0x800833d;
rtc_getMins = 0x8008341;
rtc_getSeconds = 0x8008345;
MB_REMOTE_MODULE_ADD_INSTANCE = 0x800406d;
MB_WRITE_REMOTE_REG_WITH_INST = 0x8004a21;
xTimerGenericCommand = 0x8006651;
xTimerCreate = 0x80065d3;
xTimerIsTimerActive = 0x80069e5;
xTimerGetPeriod = 0x80066b3;
pcTimerGetName = 0x80066e3;
pcTimerSetName = 0x80066fb;
xTimerGetExpiryTime = 0x80066cb;
xTaskGetTickCount = 0x8005a1d;
vTimerSetTimerID = 0x8006a37;
pvTimerGetTimerID = 0x8006a13;
EEmb_MemAlloc = 0x800c6b1;
EEmb_MemFree = 0x800c6b5;
EEmb_Panic = 0x800c339;
MemGetFreeHeapSize = 0x8005381;
MemGetMinimumEverFreeHeapSize = 0x8005387;
uxTaskGetStackHighWaterMark = 0x8005d97;
EEmb_getSerialNumber = 0x800c571;
EEmb_getDeviceVerInfo = 0x800c58d;
DEV_reboot = 0x8007ed5;
IWDG_setTimeout = 0x800c419;
IWDG_reload = 0x800c43d;
DisplaySetBrights = 0x80082e1;
DisplaySetAutoBrights = 0x80082e3;
MSG_pushMessage = 0x80061d1;
MB_FORCE_READ_REMOTE_REGS = 0x80046fb;
MB_FORCE_WRITE_REMOTE_REGS = 0x800482f;
LED_SET = 0x80082f9;
LEDS_SET = 0x8008301;
LED_TOGGLE = 0x80082f5;
LEDS_TOGGLE = 0x80082fd;
__eg_canvas_draw = 0x80082e7;
__eg_fixed_layout_begin = 0x80082e9;
__eg_fixed_flow_layout_begin = 0x80082eb;
__eg_canvas_begin = 0x80082ed;
UART_SET_FRAME_CFG = 0x8007ea3;
EEmb_buttonHandler = 0x800813f;
FSR_setPowerLevel = 0x8008ce7;
FSR_changeState = 0x8008d25;
FSR_getResetErrorCode = 0x8008d5b;
FSR_setupParams = 0x8008d69;
BTN_GET_STATUS = 0x8006bb7;
MB_GET_REMOTE_REG_GRP_FROM_PTR = 0x8004ce9;
MB_GET_INPUT_REG_GRP_FROM_PTR = 0x8004d3b;
MB_GET_HOLDING_REG_GRP_FROM_PTR = 0x8004d9d;
MB_STORE_DATA_TO_REG = 0x8004e49;
MB_GET_ACTUAL_DATA_PTR = 0x8004ce5;
DEV_EEmbFrameworkCfg = 0x20002600;
__eg_dyn_label_draw = 0x80082ef;
__eg_animation_draw = 0x80082f1;
MODBUS_SET_LOCAL_CHANGED_CALLBACK = 0x80022cb;
MODBUS_CHECK_LOCAL_CHANGED = 0x80022d3;


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


