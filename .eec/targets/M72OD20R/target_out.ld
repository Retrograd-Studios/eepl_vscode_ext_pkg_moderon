
ENTRY(__entryPoint__)

DrawText = 0x80085a5;
DrawImg = 0x80085a7;
_DrawRect = 0x80085a9;
AO_OUTPUT = 0x8007c41;
UI_READ_DI = 0x8006bc9;
UI_READ_AI = 0x8007c51;
UI_READ_ALL_DI = 0x8007fa9;
UI_CFG = 0x8007fe1;
UI_CFG_SET_RANGE = 0x8008135;
UI_CFG_SET_B = 0x8008165;
RELAY_SET = 0x8006b45;
RELAY_TOGGLE = 0x8006b61;
RELAYS_TOGGLE = 0x8006b75;
RELAYS_SET = 0x8006b99;
RELAYS_SET = 0x8006b99;
MB_READ_LOCAL_REG = 0x8004e29;
MB_WRITE_LOCAL_REG = 0x8004e45;
MB_GET_ERROR = 0x8004e19;
MB_WRITE_REMOTE_REG = 0x8004c01;
MODBUS_CFG = 0x8004e5b;
UART_CFG = 0x800817f;
SET_BUTTON_HANDLER = 0x80079cb;
DelayMs = 0x8005703;
Print = 0x8007aef;
Println = 0x8007b3f;
GetGlobalTicks = 0x8007ae7;
FONT_DEFAULT = 0x20000700;
img_default_switchOn = 0x2000070c;
img_default_switchOff = 0x20000710;
img_default_car = 0x20000714;
img_default_ctrl = 0x20000718;
__eg_set_color = 0x80085ab;
__eg_set_font = 0x80085ad;
__eg_row_begin = 0x80085af;
__eg_row_draw = 0x80085b1;
__eg_layout_begin = 0x80085b3;
__eg_list_begin = 0x80085b7;
__eg_layout_draw = 0x80085b9;
__eg_flow_layout_begin = 0x80085b5;
__eg_flow_layout_draw = 0x80085bb;
__eg_label_draw = 0x80085bd;
__eg_list_draw = 0x80085bf;
__eg_img_draw = 0x80085c1;
__eg_switcher_draw = 0x80085c3;
__eg_input_int_draw = 0x80085c5;
__eg_input_float_draw = 0x80085c7;
__eg_fill_draw = 0x80085c9;
__eg_button_draw = 0x80085cb;
__eg_combo_box_draw = 0x80085cd;
__eg_ghostStepInParent = 0x80085cf;
__eg_set_borders = 0x80085d1;
__eg_set_unit = 0x80085d3;
EEMB_GUI_CONTEXT_PTR = 0x20000704;
EEMB_GUI_PARENT_CONTEXT_PTR = 0x20000708;
GUI_buttonHandler = 0x80085d5;
GUI_buttonsHandler = 0x80085d7;
GUI_setDraw = 0x80085d9;
GUI_clearContext = 0x80085db;
GUI_rowStartStep = 0x80085dd;
DrawImgWithSize = 0x80085df;
GetTextSize = 0x80085e1;
GetCharHeight = 0x80085e3;
MB_WRITE_H_REG_WITH_ADDR = 0x8004e83;
MB_READ_H_REG_FROM_ADDR = 0x8004e7f;
rtc_setYears = 0x800860d;
rtc_setMonths = 0x8008611;
rtc_setDays = 0x8008615;
rtc_setDay = 0x8008619;
rtc_setHours = 0x800861d;
rtc_setMins = 0x8008621;
rtc_setSeconds = 0x8008625;
RTC_SET_DATE = 0x8008629;
RTC_SET_DATE_2 = 0x800862d;
RTC_GET_DATE = 0x8008631;
rtc_getYears = 0x8008635;
rtc_getMonths = 0x8008639;
rtc_getDays = 0x800863d;
rtc_getDay = 0x8008641;
rtc_getHours = 0x8008645;
rtc_getMins = 0x8008649;
rtc_getSeconds = 0x800864d;
MB_REMOTE_MODULE_ADD_INSTANCE = 0x8004015;
MB_WRITE_REMOTE_REG_WITH_INST = 0x80049c9;
xTimerGenericCommand = 0x80066dd;
xTimerCreate = 0x800665f;
xTimerIsTimerActive = 0x8006a71;
xTimerGetPeriod = 0x800673f;
pcTimerGetName = 0x800676f;
pcTimerSetName = 0x8006787;
xTimerGetExpiryTime = 0x8006757;
xTaskGetTickCount = 0x80059c5;
vTimerSetTimerID = 0x8006ac3;
pvTimerGetTimerID = 0x8006a9f;
EEmb_MemAlloc = 0x800cd0d;
EEmb_MemFree = 0x800cd11;
EEmb_Panic = 0x800c931;
MemGetFreeHeapSize = 0x8005329;
MemGetMinimumEverFreeHeapSize = 0x800532f;
uxTaskGetStackHighWaterMark = 0x8005d3f;
EEmb_getSerialNumber = 0x800cbf9;
EEmb_getDeviceVerInfo = 0x800cc15;
DEV_reboot = 0x80081d9;
IWDG_setTimeout = 0x800ca11;
IWDG_reload = 0x800ca35;
DisplaySetBrights = 0x80085e5;
DisplaySetAutoBrights = 0x80085e7;
MSG_pushMessage = 0x8006179;
MB_FORCE_READ_REMOTE_REGS = 0x80046a3;
MB_FORCE_WRITE_REMOTE_REGS = 0x80047d7;
LED_SET = 0x8006c61;
LEDS_SET = 0x8006cb9;
LED_TOGGLE = 0x8006c7d;
LEDS_TOGGLE = 0x8006c91;
__eg_canvas_draw = 0x80085ed;
__eg_fixed_layout_begin = 0x80085ef;
__eg_fixed_flow_layout_begin = 0x80085f1;
__eg_canvas_begin = 0x80085f3;
UART_SET_FRAME_CFG = 0x800819f;
EEmb_buttonHandler = 0x800843b;
FSR_setPowerLevel = 0x80085fd;
FSR_changeState = 0x8008601;
FSR_getResetErrorCode = 0x8008605;
FSR_setupParams = 0x8008609;
BTN_GET_STATUS = 0x8006ced;
MB_GET_REMOTE_REG_GRP_FROM_PTR = 0x8004c91;
MB_GET_INPUT_REG_GRP_FROM_PTR = 0x8004ce3;
MB_GET_HOLDING_REG_GRP_FROM_PTR = 0x8004d45;
MB_STORE_DATA_TO_REG = 0x8004df1;
MB_GET_ACTUAL_DATA_PTR = 0x8004c8d;
DEV_EEmbFrameworkCfg = 0x20002a20;
__eg_dyn_label_draw = 0x80085f5;
__eg_animation_draw = 0x80085f7;
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


