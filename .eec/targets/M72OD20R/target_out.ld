
ENTRY(__entryPoint__)

DrawText = 0x8004ff3;
DrawImg = 0x8004cad;
_DrawRect = 0x8004c31;
AO_OUTPUT = 0x800d153;
UI_READ_DI = 0x800e2ff;
UI_READ_AI = 0x800d165;
UI_READ_ALL_DI = 0x800d5af;
UI_CFG = 0x800d5e9;
UI_CFG_SET_RANGE = 0x800d73d;
UI_CFG_SET_B = 0x800d76b;
RELAY_SET = 0x800e27f;
RELAY_TOGGLE = 0x800e299;
RELAYS_TOGGLE = 0x800e2ad;
RELAYS_SET = 0x800e2cf;
RELAYS_SET = 0x800e2cf;
MB_READ_LOCAL_REG = 0x8009ab5;
MB_WRITE_LOCAL_REG = 0x8009ad1;
MB_GET_ERROR = 0x8009aa5;
MB_WRITE_REMOTE_REG = 0x800988d;
MODBUS_CFG = 0x8009ae7;
UART_CFG = 0x800d785;
SET_BUTTON_HANDLER = 0x800ce7f;
DelayMs = 0x8005b6f;
Print = 0x800cfdd;
Println = 0x800d029;
GetGlobalTicks = 0x800cfd5;
FONT_DEFAULT = 0x8013420;
img_default_switchOn = 0x8013470;
img_default_switchOff = 0x8013464;
img_default_car = 0x8013458;
img_default_ctrl = 0x801344c;
__eg_set_color = 0x8002237;
__eg_set_font = 0x8002279;
__eg_row_begin = 0x8002909;
__eg_row_draw = 0x8002ac9;
__eg_layout_begin = 0x8002b1b;
__eg_list_begin = 0x8002fad;
__eg_layout_draw = 0x8003383;
__eg_flow_layout_begin = 0x8002da5;
__eg_flow_layout_draw = 0x80033a9;
__eg_label_draw = 0x80034d9;
__eg_list_draw = 0x8003349;
__eg_img_draw = 0x800369d;
__eg_switcher_draw = 0x8004029;
__eg_input_int_draw = 0x8004121;
__eg_input_float_draw = 0x8004635;
__eg_fill_draw = 0x8003923;
__eg_button_draw = 0x8003969;
__eg_combo_box_draw = 0x8003c0f;
__eg_ghostStepInParent = 0x80027cd;
__eg_set_borders = 0x8002131;
__eg_set_unit = 0x800213d;
EEMB_GUI_CONTEXT_PTR = 0x20001344;
EEMB_GUI_PARENT_CONTEXT_PTR = 0x20001348;
GUI_buttonHandler = 0x8002421;
GUI_buttonsHandler = 0x800259b;
GUI_setDraw = 0x8002145;
GUI_clearContext = 0x80022ad;
GUI_rowStartStep = 0x80028c1;
DrawImgWithSize = 0x8004def;
GetTextSize = 0x8004f73;
GetCharHeight = 0x8004f5d;
MB_WRITE_H_REG_WITH_ADDR = 0x8009b11;
MB_READ_H_REG_FROM_ADDR = 0x8009b0d;
rtc_setYears = 0x800f557;
rtc_setMonths = 0x800f53d;
rtc_setDays = 0x800f523;
rtc_setDay = 0x800f51d;
rtc_setHours = 0x800f4e7;
rtc_setMins = 0x800f4cd;
rtc_setSeconds = 0x800f4b3;
RTC_SET_DATE = 0x800f399;
RTC_SET_DATE_2 = 0x800f571;
RTC_GET_DATE = 0x800f11b;
rtc_getYears = 0x800f663;
rtc_getMonths = 0x800f645;
rtc_getDays = 0x800f627;
rtc_getDay = 0x800f621;
rtc_getHours = 0x800f5ef;
rtc_getMins = 0x800f5d1;
rtc_getSeconds = 0x800f5b3;
MB_REMOTE_MODULE_ADD_INSTANCE = 0x8008ca1;
MB_WRITE_REMOTE_REG_WITH_INST = 0x8009655;
xTimerGenericCommand = 0x80084c1;
xTimerCreate = 0x8008443;
xTimerIsTimerActive = 0x8008855;
xTimerGetPeriod = 0x8008523;
pcTimerGetName = 0x8008553;
pcTimerSetName = 0x800856b;
xTimerGetExpiryTime = 0x800853b;
xTaskGetTickCount = 0x8005e31;
vTimerSetTimerID = 0x80088a7;
pvTimerGetTimerID = 0x8008883;
EEmb_MemAlloc = 0x8013495;
EEmb_MemFree = 0x8013499;
EEmb_Panic = 0x8008b8d;
MemGetFreeHeapSize = 0x8007179;
MemGetMinimumEverFreeHeapSize = 0x800717f;
uxTaskGetStackHighWaterMark = 0x80061ab;
EEmb_getSerialNumber = 0x8007299;
EEmb_getDeviceVerInfo = 0x80072b5;
DEV_reboot = 0x800d809;
IWDG_setTimeout = 0x8013115;
IWDG_reload = 0x8013139;
DisplaySetBrights = 0x800e181;
DisplaySetAutoBrights = 0x800e19f;
MSG_pushMessage = 0x8005321;
MB_FORCE_READ_REMOTE_REGS = 0x800932f;
MB_FORCE_WRITE_REMOTE_REGS = 0x8009463;
LED_SET = 0x80132e1;
LEDS_SET = 0x80132e9;
LED_TOGGLE = 0x80132dd;
LEDS_TOGGLE = 0x80132e5;
__eg_canvas_draw = 0x80033cf;
__eg_fixed_layout_begin = 0x8002d17;
__eg_fixed_flow_layout_begin = 0x8002f69;
__eg_canvas_begin = 0x8002f99;
UART_SET_FRAME_CFG = 0x800d7a5;
EEmb_buttonHandler = 0x800daf9;
FSR_setPowerLevel = 0x80132ed;
FSR_changeState = 0x80132f1;
FSR_getResetErrorCode = 0x80132f5;
FSR_setupParams = 0x80132f9;
BTN_GET_STATUS = 0x800e381;
MB_GET_REMOTE_REG_GRP_FROM_PTR = 0x800991d;
MB_GET_INPUT_REG_GRP_FROM_PTR = 0x800996f;
MB_GET_HOLDING_REG_GRP_FROM_PTR = 0x80099d1;
MB_STORE_DATA_TO_REG = 0x8009a7d;
MB_GET_ACTUAL_DATA_PTR = 0x8009919;
DEV_EEmbFrameworkCfg = 0x20003790;
__eg_dyn_label_draw = 0x8003479;
__eg_animation_draw = 0x8003781;
MODBUS_SET_LOCAL_CHANGED_CALLBACK = 0x8009d1b;
MODBUS_CHECK_LOCAL_CHANGED = 0x8009d23;
UART_SET_PROTOCOL = 0x800a54d;
UART_SET_TIMEOUT = 0x800a569;
UART_RX_SIZE = 0x800a57b;
UART_FLUSH_RX = 0x800a593;
UART_RX_BUF = 0x800a627;
UART_WRITE_DATA = 0x800a637;
UART_READ_DATA = 0x800a655;


MEMORY
{
  RAM (xrw)    : ORIGIN = 0x200037f8, LENGTH = 0xc808 
  FLASH (rx)   : ORIGIN = 0x8013800, LENGTH = 0x2c600
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


