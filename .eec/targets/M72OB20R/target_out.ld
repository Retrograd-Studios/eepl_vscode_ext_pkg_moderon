/* Entry Point */
ENTRY(__entryPoint__)

/* Highest address of the user mode stack */
//_estack = 0x20005000;    /* end of RAM */
/* Generate a link error if heap and stack don't fit into RAM */
_Min_Heap_Size = 0x200;      /* required amount of heap  */
_Min_Stack_Size = 0x400; /* required amount of stack */

/*ld.lld.exe output.o --format=elf --Map=target.map -Ttarget.ld -o target.o --gcc-toolchain=./libs -nostdlib */

DrawText = 0x8006959;
DrawImg = 0x800695b;
_DrawRect = 0x800695d;
AO_OUTPUT = 0x80060e3;
UI_READ_DI = 0x8006a85;
UI_READ_AI = 0x80060f1;
UI_READ_ALL_DI = 0x8006349;
UI_CFG = 0x8006381;
UI_CFG_SET_RANGE = 0x800643f;
UI_CFG_SET_B = 0x8006467;
RELAY_SET = 0x80069fd;
RELAY_TOGGLE = 0x8006a19;
RELAYS_TOGGLE = 0x8006a2d;
RELAYS_SET = 0x8006a51;
RELAYS_SET = 0x8006a51;
MB_READ_LOCAL_REG = 0x800aaa3;
MB_WRITE_LOCAL_REG = 0x800aac7;
MB_GET_ERROR = 0x800aa93;
MB_READ_REMOTE_REG = 0x800a89d;
MB_WRITE_REMOTE_REG = 0x800aa29;
MODBUS_CFG = 0x800aadd;
UART_CFG = 0x8006481;
SET_BUTTON_HANDLER = 0x8005b7b;
DelayMs = 0x8006f45;
Print = 0x8005ca9;
Println = 0x8005cf9;
EEmb_IntToString = 0x800cb2f;
EEmb_FpToString = 0x800cb3d;
EEmb_GetStringSize = 0x800cb1d;
GetGlobalTicks = 0x8005ca1;
FONT_DEFAULT = 0x200006e8;
img_default_switchOn = 0x200006f4;
img_default_switchOff = 0x200006f8;
img_default_car = 0x200006fc;
img_default_ctrl = 0x20000700;
__eg_set_color = 0x800695f;
__eg_set_font = 0x8006961;
__eg_row_begin = 0x8006963;
__eg_row_draw = 0x8006965;
__eg_layout_begin = 0x8006967;
__eg_list_begin = 0x800696b;
__eg_layout_draw = 0x800696d;
__eg_flow_layout_begin = 0x8006969;
__eg_flow_layout_draw = 0x800696f;
__eg_label_draw = 0x8006971;
__eg_list_draw = 0x8006973;
__eg_img_draw = 0x8006975;
__eg_switcher_draw = 0x8006977;
__eg_input_int_draw = 0x8006979;
__eg_input_float_draw = 0x800697b;
__eg_fill_draw = 0x800697d;
__eg_button_draw = 0x800697f;
__eg_combo_box_draw = 0x8006981;
__eg_ghostStepInParent = 0x8006983;
__eg_set_borders = 0x8006985;
__eg_set_unit = 0x8006987;
EEMB_GUI_CONTEXT_PTR = 0x200006ec;
EEMB_GUI_PARENT_CONTEXT_PTR = 0x200006f0;
GUI_buttonHandler = 0x8006989;
GUI_buttonsHandler = 0x800698b;
GUI_setDraw = 0x800698d;
GUI_clearContext = 0x800698f;
GUI_rowStartStep = 0x8006991;
DrawImgWithSize = 0x8006993;
GetTextSize = 0x8006995;
GetNextLine = 0x8006997;
GetCharHeight = 0x8006999;
MB_WRITE_H_REG_WITH_ADDR = 0x800ab05;
MB_READ_H_REG_FROM_ADDR = 0x800ab01;
rtc_setYears = 0x8008a83;
rtc_setMonths = 0x8008a69;
rtc_setDays = 0x8008a4f;
rtc_setDay = 0x8008a49;
rtc_setHours = 0x8008a13;
rtc_setMins = 0x80089f9;
rtc_setSeconds = 0x80089df;
RTC_SET_DATE = 0x80088c7;
RTC_SET_DATE_2 = 0x8008a9d;
RTC_GET_DATE = 0x8008649;
rtc_getYears = 0x8008b99;
rtc_getMonths = 0x8008b79;
rtc_getDays = 0x8008b59;
rtc_getDay = 0x8008b53;
rtc_getHours = 0x8008b1f;
rtc_getMins = 0x8008aff;
rtc_getSeconds = 0x8008adf;
EEmb_GetValFromBindVar = 0x800c8a1;
EEmb_WriteValToBindVar = 0x800c8fd;
MB_REMOTE_MODULE_ADD_INSTANCE = 0x800a325;
MB_WRITE_REMOTE_REG_WITH_INST = 0x800a8f5;
MB_READ_REMOTE_REG_WITH_INST = 0x800a741;
xTimerGenericCommand = 0x800953d;
xTimerCreate = 0x80094bf;
xTimerIsTimerActive = 0x80098d5;
xTimerGetPeriod = 0x800959f;
pcTimerGetName = 0x80095cf;
pcTimerSetName = 0x80095e7;
xTimerGetExpiryTime = 0x80095b7;
xTaskGetTickCount = 0x8007209;
vTimerSetTimerID = 0x8009927;
pvTimerGetTimerID = 0x8009903;
EEmb_MemAlloc = 0x800cc91;
EEmb_MemFree = 0x800cc95;
EEmb_Panic = 0x800c961;
MemGetFreeHeapSize = 0x8008e07;
MemGetMinimumEverFreeHeapSize = 0x8008e0d;
uxTaskGetStackHighWaterMark = 0x8007583;
EEmb_getSerialNumber = 0x800cc89;
EEmb_getDeviceVerInfo = 0x800cc8d;
DEV_reboot = 0x8006509;
IWDG_setTimeout = 0x800caa9;
IWDG_reload = 0x800cacd;
DisplaySetBrights = 0x800699b;
DisplaySetAutoBrights = 0x800699d;
MSG_pushMessage = 0x8008bb9;
MB_FORCE_READ_REMOTE_REGS = 0x800a62b;
MB_FORCE_WRITE_REMOTE_REGS = 0x800a6af;
LED_SET = 0x8006b05;
LEDS_SET = 0x8006b5d;
LED_TOGGLE = 0x8006b21;
LEDS_TOGGLE = 0x8006b35;
__eg_canvas_draw = 0x80069a3;
__eg_fixed_layout_begin = 0x80069a5;
__eg_fixed_flow_layout_begin = 0x80069a7;
__eg_canvas_begin = 0x80069a9;
UART_SET_FRAME_CFG = 0x80064a1;
EEmb_buttonHandler = 0x8006825;
FSR_setPowerLevel = 0x80069ad;
FSR_changeState = 0x80069b1;
FSR_getResetErrorCode = 0x80069b5;
FSR_setupParams = 0x80069b9;
BTN_GET_STATUS = 0x8006b91;


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


