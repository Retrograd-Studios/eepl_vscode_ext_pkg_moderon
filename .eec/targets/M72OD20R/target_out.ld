
ENTRY(__entryPoint__)

DrawText = 0x80085e5;
DrawImg = 0x80085e7;
_DrawRect = 0x80085e9;
AO_OUTPUT = 0x8007c81;
UI_READ_DI = 0x8006c09;
UI_READ_AI = 0x8007c91;
UI_READ_ALL_DI = 0x8007fe9;
UI_CFG = 0x8008021;
UI_CFG_SET_RANGE = 0x8008175;
UI_CFG_SET_B = 0x80081a5;
RELAY_SET = 0x8006b85;
RELAY_TOGGLE = 0x8006ba1;
RELAYS_TOGGLE = 0x8006bb5;
RELAYS_SET = 0x8006bd9;
RELAYS_SET = 0x8006bd9;
MB_READ_LOCAL_REG = 0x8004e69;
MB_WRITE_LOCAL_REG = 0x8004e85;
MB_GET_ERROR = 0x8004e59;
MB_WRITE_REMOTE_REG = 0x8004c41;
MODBUS_CFG = 0x8004e9b;
UART_CFG = 0x80081bf;
SET_BUTTON_HANDLER = 0x8007a0b;
DelayMs = 0x8005743;
Print = 0x8007b2f;
Println = 0x8007b7f;
GetGlobalTicks = 0x8007b27;
FONT_DEFAULT = 0x20000700;
img_default_switchOn = 0x2000070c;
img_default_switchOff = 0x20000710;
img_default_car = 0x20000714;
img_default_ctrl = 0x20000718;
__eg_set_color = 0x80085eb;
__eg_set_font = 0x80085ed;
__eg_row_begin = 0x80085ef;
__eg_row_draw = 0x80085f1;
__eg_layout_begin = 0x80085f3;
__eg_list_begin = 0x80085f7;
__eg_layout_draw = 0x80085f9;
__eg_flow_layout_begin = 0x80085f5;
__eg_flow_layout_draw = 0x80085fb;
__eg_label_draw = 0x80085fd;
__eg_list_draw = 0x80085ff;
__eg_img_draw = 0x8008601;
__eg_switcher_draw = 0x8008603;
__eg_input_int_draw = 0x8008605;
__eg_input_float_draw = 0x8008607;
__eg_fill_draw = 0x8008609;
__eg_button_draw = 0x800860b;
__eg_combo_box_draw = 0x800860d;
__eg_ghostStepInParent = 0x800860f;
__eg_set_borders = 0x8008611;
__eg_set_unit = 0x8008613;
EEMB_GUI_CONTEXT_PTR = 0x20000704;
EEMB_GUI_PARENT_CONTEXT_PTR = 0x20000708;
GUI_buttonHandler = 0x8008615;
GUI_buttonsHandler = 0x8008617;
GUI_setDraw = 0x8008619;
GUI_clearContext = 0x800861b;
GUI_rowStartStep = 0x800861d;
DrawImgWithSize = 0x800861f;
GetTextSize = 0x8008621;
GetCharHeight = 0x8008623;
MB_WRITE_H_REG_WITH_ADDR = 0x8004ec3;
MB_READ_H_REG_FROM_ADDR = 0x8004ebf;
rtc_setYears = 0x800864d;
rtc_setMonths = 0x8008651;
rtc_setDays = 0x8008655;
rtc_setDay = 0x8008659;
rtc_setHours = 0x800865d;
rtc_setMins = 0x8008661;
rtc_setSeconds = 0x8008665;
RTC_SET_DATE = 0x8008669;
RTC_SET_DATE_2 = 0x800866d;
RTC_GET_DATE = 0x8008671;
rtc_getYears = 0x8008675;
rtc_getMonths = 0x8008679;
rtc_getDays = 0x800867d;
rtc_getDay = 0x8008681;
rtc_getHours = 0x8008685;
rtc_getMins = 0x8008689;
rtc_getSeconds = 0x800868d;
MB_REMOTE_MODULE_ADD_INSTANCE = 0x8004055;
MB_WRITE_REMOTE_REG_WITH_INST = 0x8004a09;
xTimerGenericCommand = 0x800671d;
xTimerCreate = 0x800669f;
xTimerIsTimerActive = 0x8006ab1;
xTimerGetPeriod = 0x800677f;
pcTimerGetName = 0x80067af;
pcTimerSetName = 0x80067c7;
xTimerGetExpiryTime = 0x8006797;
xTaskGetTickCount = 0x8005a05;
vTimerSetTimerID = 0x8006b03;
pvTimerGetTimerID = 0x8006adf;
EEmb_MemAlloc = 0x800cd4d;
EEmb_MemFree = 0x800cd51;
EEmb_Panic = 0x800c971;
MemGetFreeHeapSize = 0x8005369;
MemGetMinimumEverFreeHeapSize = 0x800536f;
uxTaskGetStackHighWaterMark = 0x8005d7f;
EEmb_getSerialNumber = 0x800cc39;
EEmb_getDeviceVerInfo = 0x800cc55;
DEV_reboot = 0x8008219;
IWDG_setTimeout = 0x800ca51;
IWDG_reload = 0x800ca75;
DisplaySetBrights = 0x8008625;
DisplaySetAutoBrights = 0x8008627;
MSG_pushMessage = 0x80061b9;
MB_FORCE_READ_REMOTE_REGS = 0x80046e3;
MB_FORCE_WRITE_REMOTE_REGS = 0x8004817;
LED_SET = 0x8006ca1;
LEDS_SET = 0x8006cf9;
LED_TOGGLE = 0x8006cbd;
LEDS_TOGGLE = 0x8006cd1;
__eg_canvas_draw = 0x800862d;
__eg_fixed_layout_begin = 0x800862f;
__eg_fixed_flow_layout_begin = 0x8008631;
__eg_canvas_begin = 0x8008633;
UART_SET_FRAME_CFG = 0x80081df;
EEmb_buttonHandler = 0x800847b;
FSR_setPowerLevel = 0x800863d;
FSR_changeState = 0x8008641;
FSR_getResetErrorCode = 0x8008645;
FSR_setupParams = 0x8008649;
BTN_GET_STATUS = 0x8006d2d;
MB_GET_REMOTE_REG_GRP_FROM_PTR = 0x8004cd1;
MB_GET_INPUT_REG_GRP_FROM_PTR = 0x8004d23;
MB_GET_HOLDING_REG_GRP_FROM_PTR = 0x8004d85;
MB_STORE_DATA_TO_REG = 0x8004e31;
MB_GET_ACTUAL_DATA_PTR = 0x8004ccd;
DEV_EEmbFrameworkCfg = 0x20002a20;
__eg_dyn_label_draw = 0x8008635;
__eg_animation_draw = 0x8008637;
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


