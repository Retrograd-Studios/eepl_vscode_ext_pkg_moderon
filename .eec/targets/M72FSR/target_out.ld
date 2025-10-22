/* Entry Point */
ENTRY(__entryPoint__)

/* Highest address of the user mode stack */
//_estack = 0x20005000;    /* end of RAM */
/* Generate a link error if heap and stack don't fit into RAM */
_Min_Heap_Size = 0x200;      /* required amount of heap  */
_Min_Stack_Size = 0x400; /* required amount of stack */

/*ld.lld.exe output.o --format=elf --Map=target.map -Ttarget.ld -o target.o --gcc-toolchain=./libs -nostdlib */

DrawText = 0x8009e8d;
DrawImg = 0x8009e8f;
_DrawRect = 0x8009e91;
AO_OUTPUT = 0x8008a89;
UI_READ_DI = 0x8006d21;
UI_READ_AI = 0x8008a99;
UI_READ_ALL_DI = 0x8008d0b;
UI_CFG = 0x8008d41;
UI_CFG_SET_RANGE = 0x8008dfb;
UI_CFG_SET_B = 0x8008e23;
RELAY_SET = 0x8006c9d;
RELAY_TOGGLE = 0x8006cb9;
RELAYS_TOGGLE = 0x8006ccd;
RELAYS_SET = 0x8006cf1;
RELAYS_SET = 0x8006cf1;
MB_READ_LOCAL_REG = 0x8004df5;
MB_WRITE_LOCAL_REG = 0x8004e11;
MB_GET_ERROR = 0x8004de5;
MB_WRITE_REMOTE_REG = 0x8004bcd;
MODBUS_CFG = 0x8004e27;
UART_CFG = 0x8008e3d;
SET_BUTTON_HANDLER = 0x8008823;
DelayMs = 0x800583f;
Print = 0x8008959;
Println = 0x80089a9;
GetGlobalTicks = 0x8008951;
FONT_DEFAULT = 0x20000660;
img_default_switchOn = 0x2000066c;
img_default_switchOff = 0x20000670;
img_default_car = 0x20000674;
img_default_ctrl = 0x20000678;
__eg_set_color = 0x8009e93;
__eg_set_font = 0x8009e95;
__eg_row_begin = 0x8009e97;
__eg_row_draw = 0x8009e99;
__eg_layout_begin = 0x8009e9b;
__eg_list_begin = 0x8009e9f;
__eg_layout_draw = 0x8009ea1;
__eg_flow_layout_begin = 0x8009e9d;
__eg_flow_layout_draw = 0x8009ea3;
__eg_label_draw = 0x8009ea5;
__eg_list_draw = 0x8009ea7;
__eg_img_draw = 0x8009ea9;
__eg_switcher_draw = 0x8009eab;
__eg_input_int_draw = 0x8009ead;
__eg_input_float_draw = 0x8009eaf;
__eg_fill_draw = 0x8009eb1;
__eg_button_draw = 0x8009eb3;
__eg_combo_box_draw = 0x8009eb5;
__eg_ghostStepInParent = 0x8009eb7;
__eg_set_borders = 0x8009eb9;
__eg_set_unit = 0x8009ebb;
EEMB_GUI_CONTEXT_PTR = 0x20000664;
EEMB_GUI_PARENT_CONTEXT_PTR = 0x20000668;
GUI_buttonHandler = 0x8009ebd;
GUI_buttonsHandler = 0x8009ebf;
GUI_setDraw = 0x8009ec1;
GUI_clearContext = 0x8009ec3;
GUI_rowStartStep = 0x8009ec5;
DrawImgWithSize = 0x8009ec7;
GetTextSize = 0x8009ec9;
GetCharHeight = 0x8009ecb;
MB_WRITE_H_REG_WITH_ADDR = 0x8004e4f;
MB_READ_H_REG_FROM_ADDR = 0x8004e4b;
rtc_setYears = 0x8009ef1;
rtc_setMonths = 0x8009ef5;
rtc_setDays = 0x8009ef9;
rtc_setDay = 0x8009efd;
rtc_setHours = 0x8009f01;
rtc_setMins = 0x8009f05;
rtc_setSeconds = 0x8009f09;
RTC_SET_DATE = 0x8009f0d;
RTC_SET_DATE_2 = 0x8009f11;
RTC_GET_DATE = 0x8009f15;
rtc_getYears = 0x8009f19;
rtc_getMonths = 0x8009f1d;
rtc_getDays = 0x8009f21;
rtc_getDay = 0x8009f25;
rtc_getHours = 0x8009f29;
rtc_getMins = 0x8009f2d;
rtc_getSeconds = 0x8009f31;
MB_REMOTE_MODULE_ADD_INSTANCE = 0x8003fe1;
MB_WRITE_REMOTE_REG_WITH_INST = 0x8004995;
xTimerGenericCommand = 0x8006835;
xTimerCreate = 0x80067b7;
xTimerIsTimerActive = 0x8006bc9;
xTimerGetPeriod = 0x8006897;
pcTimerGetName = 0x80068c7;
pcTimerSetName = 0x80068df;
xTimerGetExpiryTime = 0x80068af;
xTaskGetTickCount = 0x8005b01;
vTimerSetTimerID = 0x8006c1b;
pvTimerGetTimerID = 0x8006bf7;
EEmb_MemAlloc = 0x800c521;
EEmb_MemFree = 0x800c525;
EEmb_Panic = 0x800c1a9;
MemGetFreeHeapSize = 0x8005465;
MemGetMinimumEverFreeHeapSize = 0x800546b;
uxTaskGetStackHighWaterMark = 0x8005e7b;
EEmb_getSerialNumber = 0x800c3e1;
EEmb_getDeviceVerInfo = 0x800c3fd;
DEV_reboot = 0x8008e8f;
IWDG_setTimeout = 0x800c289;
IWDG_reload = 0x800c2ad;
DisplaySetBrights = 0x8009ecd;
DisplaySetAutoBrights = 0x8009ecf;
MSG_pushMessage = 0x80062b5;
MB_FORCE_READ_REMOTE_REGS = 0x800466f;
MB_FORCE_WRITE_REMOTE_REGS = 0x80047a3;
LED_SET = 0x8009ee5;
LEDS_SET = 0x8009eed;
LED_TOGGLE = 0x8009ee1;
LEDS_TOGGLE = 0x8009ee9;
__eg_canvas_draw = 0x8009ed3;
__eg_fixed_layout_begin = 0x8009ed5;
__eg_fixed_flow_layout_begin = 0x8009ed7;
__eg_canvas_begin = 0x8009ed9;
UART_SET_FRAME_CFG = 0x8008e5d;
EEmb_buttonHandler = 0x8009115;
FSR_setPowerLevel = 0x800a493;
FSR_changeState = 0x800a4b9;
FSR_getResetErrorCode = 0x800a4ef;
FSR_setupParams = 0x800a4fd;
BTN_GET_STATUS = 0x8006d9b;
MB_GET_REMOTE_REG_GRP_FROM_PTR = 0x8004c5d;
MB_GET_INPUT_REG_GRP_FROM_PTR = 0x8004caf;
MB_GET_HOLDING_REG_GRP_FROM_PTR = 0x8004d11;
MB_STORE_DATA_TO_REG = 0x8004dbd;
MB_GET_ACTUAL_DATA_PTR = 0x8004c59;
DEV_EEmbFrameworkCfg = 0x20002610;
__eg_dyn_label_draw = 0x8009edb;
__eg_animation_draw = 0x8009edd;
MODBUS_SET_LOCAL_CHANGED_CALLBACK = 0x80022cb;
MODBUS_CHECK_LOCAL_CHANGED = 0x80022d3;


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


