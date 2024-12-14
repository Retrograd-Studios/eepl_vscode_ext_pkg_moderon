/* Entry Point */
ENTRY(__entryPoint__)

/* Highest address of the user mode stack */
//_estack = 0x20005000;    /* end of RAM */
/* Generate a link error if heap and stack don't fit into RAM */
_Min_Heap_Size = 0x200;      /* required amount of heap  */
_Min_Stack_Size = 0x400; /* required amount of stack */

/*ld.lld.exe output.o --format=elf --Map=target.map -Ttarget.ld -o target.o --gcc-toolchain=./libs -nostdlib */

DrawText = 0x8006941;
DrawImg = 0x8006943;
_DrawRect = 0x8006945;
AO_OUTPUT = 0x80060cb;
UI_READ_DI = 0x8006a6d;
UI_READ_AI = 0x80060d9;
UI_READ_ALL_DI = 0x8006331;
UI_CFG = 0x8006369;
UI_CFG_SET_RANGE = 0x8006427;
UI_CFG_SET_B = 0x800644f;
RELAY_SET = 0x80069e5;
RELAY_TOGGLE = 0x8006a01;
RELAYS_TOGGLE = 0x8006a15;
RELAYS_SET = 0x8006a39;
RELAYS_SET = 0x8006a39;
MB_READ_LOCAL_REG = 0x800a923;
MB_WRITE_LOCAL_REG = 0x800a947;
MB_GET_ERROR = 0x800a913;
MB_READ_REMOTE_REG = 0x800a71d;
MB_WRITE_REMOTE_REG = 0x800a8a9;
MODBUS_CFG = 0x800a95d;
UART_CFG = 0x8006469;
SET_BUTTON_HANDLER = 0x8005b63;
DelayMs = 0x8006f59;
Print = 0x8005c91;
Println = 0x8005ce1;
EEmb_IntToString = 0x800c9e7;
EEmb_FpToString = 0x800c9f5;
EEmb_GetStringSize = 0x800c9d5;
GetGlobalTicks = 0x8005c89;
FONT_DEFAULT = 0x200006b4;
img_default_switchOn = 0x200006c0;
img_default_switchOff = 0x200006c4;
img_default_car = 0x200006c8;
img_default_ctrl = 0x200006cc;
__eg_set_color = 0x8006947;
__eg_set_font = 0x8006949;
__eg_row_begin = 0x800694b;
__eg_row_draw = 0x800694d;
__eg_layout_begin = 0x800694f;
__eg_list_begin = 0x8006953;
__eg_layout_draw = 0x8006955;
__eg_flow_layout_begin = 0x8006951;
__eg_flow_layout_draw = 0x8006957;
__eg_label_draw = 0x8006959;
__eg_list_draw = 0x800695b;
__eg_img_draw = 0x800695d;
__eg_switcher_draw = 0x800695f;
__eg_input_int_draw = 0x8006961;
__eg_input_float_draw = 0x8006963;
__eg_fill_draw = 0x8006965;
__eg_button_draw = 0x8006967;
__eg_combo_box_draw = 0x8006969;
__eg_ghostStepInParent = 0x800696b;
__eg_set_borders = 0x800696d;
__eg_set_unit = 0x800696f;
EEMB_GUI_CONTEXT_PTR = 0x200006b8;
EEMB_GUI_PARENT_CONTEXT_PTR = 0x200006bc;
GUI_buttonHandler = 0x8006971;
GUI_buttonsHandler = 0x8006973;
GUI_setDraw = 0x8006975;
GUI_clearContext = 0x8006977;
GUI_rowStartStep = 0x8006979;
DrawImgWithSize = 0x800697b;
GetTextSize = 0x800697d;
GetNextLine = 0x800697f;
GetCharHeight = 0x8006981;
MB_WRITE_H_REG_WITH_ADDR = 0x800a985;
MB_READ_H_REG_FROM_ADDR = 0x800a981;
rtc_setYears = 0x8008a97;
rtc_setMonths = 0x8008a7d;
rtc_setDays = 0x8008a63;
rtc_setDay = 0x8008a5d;
rtc_setHours = 0x8008a27;
rtc_setMins = 0x8008a0d;
rtc_setSeconds = 0x80089f3;
RTC_SET_DATE = 0x80088db;
RTC_SET_DATE_2 = 0x8008ab1;
RTC_GET_DATE = 0x800865d;
rtc_getYears = 0x8008bad;
rtc_getMonths = 0x8008b8d;
rtc_getDays = 0x8008b6d;
rtc_getDay = 0x8008b67;
rtc_getHours = 0x8008b33;
rtc_getMins = 0x8008b13;
rtc_getSeconds = 0x8008af3;
EEmb_GetValFromBindVar = 0x800c759;
EEmb_WriteValToBindVar = 0x800c7b5;
MB_REMOTE_MODULE_ADD_INSTANCE = 0x800a1a5;
MB_WRITE_REMOTE_REG_WITH_INST = 0x800a775;
MB_READ_REMOTE_REG_WITH_INST = 0x800a5c1;
xTimerGenericCommand = 0x80093bd;
xTimerCreate = 0x800933f;
xTimerIsTimerActive = 0x8009755;
xTimerGetPeriod = 0x800941f;
pcTimerGetName = 0x800944f;
pcTimerSetName = 0x8009467;
xTimerGetExpiryTime = 0x8009437;
xTaskGetTickCount = 0x800721d;
vTimerSetTimerID = 0x80097a7;
pvTimerGetTimerID = 0x8009783;
EEmb_MemAlloc = 0x800cb1d;
EEmb_MemFree = 0x800cb21;
EEmb_Panic = 0x800c819;
MemGetFreeHeapSize = 0x8008e1b;
MemGetMinimumEverFreeHeapSize = 0x8008e21;
uxTaskGetStackHighWaterMark = 0x8007597;
EEmb_getSerialNumber = 0x800cb15;
EEmb_getDeviceVerInfo = 0x800cb19;
DEV_reboot = 0x80064f1;
IWDG_setTimeout = 0x800c961;
IWDG_reload = 0x800c985;
DisplaySetBrights = 0x8006983;
DisplaySetAutoBrights = 0x8006985;
MSG_pushMessage = 0x8008bcd;
MB_FORCE_READ_REMOTE_REGS = 0x800a4ab;
MB_FORCE_WRITE_REMOTE_REGS = 0x800a52f;
LED_SET = 0x8006b11;
LEDS_SET = 0x8006b69;
LED_TOGGLE = 0x8006b2d;
LEDS_TOGGLE = 0x8006b41;
__eg_canvas_draw = 0x800698b;
__eg_fixed_layout_begin = 0x800698d;
__eg_fixed_flow_layout_begin = 0x800698f;
__eg_canvas_begin = 0x8006991;
UART_SET_FRAME_CFG = 0x8006489;
EEmb_buttonHandler = 0x800680d;
FSR_setPowerLevel = 0x8006995;
FSR_changeState = 0x8006999;
FSR_getResetErrorCode = 0x800699d;
FSR_setupParams = 0x80069a1;
BTN_GET_STATUS = 0x8006b9d;


__aeabi_unwind_cpp_pr0 = 0x0;
__aeabi_unwind_cpp_pr1 = 0x0;


/* Specify the memory areas */
MEMORY
{
RAM (xrw)      : ORIGIN = 0x200037e4, LENGTH = 0xc81c
FLASH (rx)      : ORIGIN = 0x8012f00, LENGTH = 0x2cf00
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


