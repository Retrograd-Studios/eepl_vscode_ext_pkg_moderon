/* Entry Point */
ENTRY(__entryPoint__)

/* Highest address of the user mode stack */
//_estack = 0x20005000;    /* end of RAM */
/* Generate a link error if heap and stack don't fit into RAM */
_Min_Heap_Size = 0x200;      /* required amount of heap  */
_Min_Stack_Size = 0x400; /* required amount of stack */

/*ld.lld.exe output.o --format=elf --Map=target.map -Ttarget.ld -o target.o --gcc-toolchain=./libs -nostdlib */

DrawText = 0x8004ff3;
DrawImg = 0x8004cad;
_DrawRect = 0x8004c31;
AO_OUTPUT = 0x800d251;
UI_READ_DI = 0x800e2f9;
UI_READ_AI = 0x800d261;
UI_READ_ALL_DI = 0x800d4ab;
UI_CFG = 0x800d4e5;
UI_CFG_SET_RANGE = 0x800d5bb;
UI_CFG_SET_B = 0x800d5e3;
RELAY_SET = 0x800e275;
RELAY_TOGGLE = 0x800e291;
RELAYS_TOGGLE = 0x800e2a5;
RELAYS_SET = 0x800e2c9;
RELAYS_SET = 0x800e2c9;
MB_READ_LOCAL_REG = 0x8009b25;
MB_WRITE_LOCAL_REG = 0x8009b41;
MB_GET_ERROR = 0x8009b15;
MB_WRITE_REMOTE_REG = 0x80098fd;
MODBUS_CFG = 0x8009b57;
UART_CFG = 0x800d5fd;
SET_BUTTON_HANDLER = 0x800ccb3;
DelayMs = 0x8005b6f;
Print = 0x800ce11;
Println = 0x800ce61;
GetGlobalTicks = 0x800ce09;
FONT_DEFAULT = 0x8012cb8;
img_default_switchOn = 0x8012cfc;
img_default_switchOff = 0x8012cf0;
img_default_car = 0x8012ce4;
img_default_ctrl = 0x8012cd8;
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
EEMB_GUI_CONTEXT_PTR = 0x200012e4;
EEMB_GUI_PARENT_CONTEXT_PTR = 0x200012e8;
GUI_buttonHandler = 0x8002421;
GUI_buttonsHandler = 0x800259b;
GUI_setDraw = 0x8002145;
GUI_clearContext = 0x80022ad;
GUI_rowStartStep = 0x80028c1;
DrawImgWithSize = 0x8004def;
GetTextSize = 0x8004f73;
GetCharHeight = 0x8004f5d;
MB_WRITE_H_REG_WITH_ADDR = 0x8009b7f;
MB_READ_H_REG_FROM_ADDR = 0x8009b7b;
rtc_setYears = 0x800f263;
rtc_setMonths = 0x800f249;
rtc_setDays = 0x800f22f;
rtc_setDay = 0x800f229;
rtc_setHours = 0x800f1f3;
rtc_setMins = 0x800f1d9;
rtc_setSeconds = 0x800f1bf;
RTC_SET_DATE = 0x800f0a5;
RTC_SET_DATE_2 = 0x800f27d;
RTC_GET_DATE = 0x800ee27;
rtc_getYears = 0x800f36f;
rtc_getMonths = 0x800f351;
rtc_getDays = 0x800f333;
rtc_getDay = 0x800f32d;
rtc_getHours = 0x800f2fb;
rtc_getMins = 0x800f2dd;
rtc_getSeconds = 0x800f2bf;
MB_REMOTE_MODULE_ADD_INSTANCE = 0x8008d11;
MB_WRITE_REMOTE_REG_WITH_INST = 0x80096c5;
xTimerGenericCommand = 0x80085dd;
xTimerCreate = 0x800855f;
xTimerIsTimerActive = 0x8008971;
xTimerGetPeriod = 0x800863f;
pcTimerGetName = 0x800866f;
pcTimerSetName = 0x8008687;
xTimerGetExpiryTime = 0x8008657;
xTaskGetTickCount = 0x8005e31;
vTimerSetTimerID = 0x80089c3;
pvTimerGetTimerID = 0x800899f;
EEmb_MemAlloc = 0x8012d21;
EEmb_MemFree = 0x8012d25;
EEmb_Panic = 0x8008c9d;
MemGetFreeHeapSize = 0x800717d;
MemGetMinimumEverFreeHeapSize = 0x8007183;
uxTaskGetStackHighWaterMark = 0x80061ab;
EEmb_getSerialNumber = 0x800729d;
EEmb_getDeviceVerInfo = 0x80072b9;
DEV_reboot = 0x800d685;
IWDG_setTimeout = 0x80129e1;
IWDG_reload = 0x8012a05;
DisplaySetBrights = 0x800e175;
DisplaySetAutoBrights = 0x800e193;
MSG_pushMessage = 0x8005321;
MB_FORCE_READ_REMOTE_REGS = 0x800939f;
MB_FORCE_WRITE_REMOTE_REGS = 0x80094d3;
LED_SET = 0x8012ba9;
LEDS_SET = 0x8012bb1;
LED_TOGGLE = 0x8012ba5;
LEDS_TOGGLE = 0x8012bad;
__eg_canvas_draw = 0x80033cf;
__eg_fixed_layout_begin = 0x8002d17;
__eg_fixed_flow_layout_begin = 0x8002f69;
__eg_canvas_begin = 0x8002f99;
UART_SET_FRAME_CFG = 0x800d61d;
EEmb_buttonHandler = 0x800d989;
FSR_setPowerLevel = 0x8012bb5;
FSR_changeState = 0x8012bb9;
FSR_getResetErrorCode = 0x8012bbd;
FSR_setupParams = 0x8012bc1;
BTN_GET_STATUS = 0x800e39f;
MB_GET_REMOTE_REG_GRP_FROM_PTR = 0x800998d;
MB_GET_INPUT_REG_GRP_FROM_PTR = 0x80099df;
MB_GET_HOLDING_REG_GRP_FROM_PTR = 0x8009a41;
MB_STORE_DATA_TO_REG = 0x8009aed;
MB_GET_ACTUAL_DATA_PTR = 0x8009989;
DEV_EEmbFrameworkCfg = 0x20003464;
__eg_dyn_label_draw = 0x8003479;
__eg_animation_draw = 0x8003781;
MODBUS_SET_LOCAL_CHANGED_CALLBACK = 0x8009d87;
MODBUS_CHECK_LOCAL_CHANGED = 0x8009d8f;


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


