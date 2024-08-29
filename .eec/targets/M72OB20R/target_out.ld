/* Entry Point */
ENTRY(__entryPoint__)

/* Highest address of the user mode stack */
//_estack = 0x20005000;    /* end of RAM */
/* Generate a link error if heap and stack don't fit into RAM */
_Min_Heap_Size = 0x200;      /* required amount of heap  */
_Min_Stack_Size = 0x400; /* required amount of stack */

/*ld.lld.exe output.o --format=elf --Map=target.map -Ttarget.ld -o target.o --gcc-toolchain=./libs -nostdlib */

DrawText = 0x80038c7;
DrawImg = 0x80038c9;
_DrawRect = 0x80038cb;
AO_OUTPUT = 0x800804d;
UI_READ_DI = 0x8008941;
UI_READ_AI = 0x800805b;
UI_READ_ALL_DI = 0x80081ef;
UI_CFG = 0x8008227;
UI_CFG_SET_RANGE = 0x800828f;
UI_CFG_SET_B = 0x80082b7;
RELAY_SET = 0x80088b9;
RELAY_TOGGLE = 0x80088d5;
RELAYS_TOGGLE = 0x80088e9;
RELAYS_SET = 0x800890d;
RELAYS_SET = 0x800890d;
MB_READ_LOCAL_REG = 0x800a8f3;
MB_WRITE_LOCAL_REG = 0x800a917;
MB_GET_ERROR = 0x800a8e3;
MB_READ_REMOTE_REG = 0x800a6ed;
MB_WRITE_REMOTE_REG = 0x800a879;
MODBUS_CFG = 0x800a92d;
UART_CFG = 0x80082d1;
SET_BUTTON_HANDLER = 0x8007c3f;
DelayMs = 0x8005e85;
Print = 0x8007d5d;
Println = 0x8007dad;
EEmb_IntToString = 0x800c97f;
EEmb_FpToString = 0x800c98d;
EEmb_GetStringSize = 0x800c96d;
GetGlobalTicks = 0x8007d55;
FONT_DEFAULT = 0x200006f8;
img_default_switchOn = 0x20000704;
img_default_switchOff = 0x20000708;
img_default_car = 0x2000070c;
img_default_ctrl = 0x20000710;
__eg_set_color = 0x80038cd;
__eg_set_font = 0x80038cf;
__eg_row_begin = 0x80038d1;
__eg_row_draw = 0x80038d3;
__eg_layout_begin = 0x80038d5;
__eg_list_begin = 0x80038d9;
__eg_layout_draw = 0x80038db;
__eg_flow_layout_begin = 0x80038d7;
__eg_flow_layout_draw = 0x80038dd;
__eg_label_draw = 0x80038df;
__eg_list_draw = 0x80038e1;
__eg_img_draw = 0x80038e3;
__eg_switcher_draw = 0x80038e5;
__eg_input_int_draw = 0x80038e7;
__eg_input_float_draw = 0x80038e9;
__eg_fill_draw = 0x80038eb;
__eg_button_draw = 0x80038ed;
__eg_combo_box_draw = 0x80038ef;
__eg_ghostStepInParent = 0x80038f1;
__eg_set_borders = 0x80038f3;
__eg_set_unit = 0x80038f5;
EEMB_GUI_CONTEXT_PTR = 0x200006fc;
EEMB_GUI_PARENT_CONTEXT_PTR = 0x20000700;
GUI_buttonHandler = 0x80038f7;
GUI_buttonsHandler = 0x80038f9;
GUI_setDraw = 0x80038fb;
GUI_clearContext = 0x80038fd;
GUI_rowStartStep = 0x80038ff;
DrawImgWithSize = 0x8003901;
GetTextSize = 0x8003903;
GetNextLine = 0x8003905;
GetCharHeight = 0x8003907;
MB_WRITE_H_REG_WITH_ADDR = 0x800a955;
MB_READ_H_REG_FROM_ADDR = 0x800a951;
rtc_setYears = 0x8009b7f;
rtc_setMonths = 0x8009b65;
rtc_setDays = 0x8009b4b;
rtc_setDay = 0x8009b45;
rtc_setHours = 0x8009b0f;
rtc_setMins = 0x8009af5;
rtc_setSeconds = 0x8009adb;
RTC_SET_DATE = 0x80099c3;
RTC_SET_DATE_2 = 0x8009b99;
RTC_GET_DATE = 0x8009745;
rtc_getYears = 0x8009c95;
rtc_getMonths = 0x8009c75;
rtc_getDays = 0x8009c55;
rtc_getDay = 0x8009c4f;
rtc_getHours = 0x8009c1b;
rtc_getMins = 0x8009bfb;
rtc_getSeconds = 0x8009bdb;
EEmb_GetValFromBindVar = 0x800c6f1;
EEmb_WriteValToBindVar = 0x800c74d;
MB_REMOTE_MODULE_ADD_INSTANCE = 0x800a175;
MB_WRITE_REMOTE_REG_WITH_INST = 0x800a745;
MB_READ_REMOTE_REG_WITH_INST = 0x800a591;
xTimerGenericCommand = 0x8006e8d;
xTimerCreate = 0x8006e0f;
xTimerIsTimerActive = 0x8007225;
xTimerGetPeriod = 0x8006eef;
pcTimerGetName = 0x8006f1f;
pcTimerSetName = 0x8006f37;
xTimerGetExpiryTime = 0x8006f07;
xTaskGetTickCount = 0x8006149;
vTimerSetTimerID = 0x8007277;
pvTimerGetTimerID = 0x8007253;
EEmb_MemAlloc = 0x800cae1;
EEmb_MemFree = 0x800cae5;
EEmb_Panic = 0x800c7b1;
MemGetFreeHeapSize = 0x8006a07;
MemGetMinimumEverFreeHeapSize = 0x8006a0d;
uxTaskGetStackHighWaterMark = 0x80064c3;
EEmb_getSerialNumber = 0x800cad9;
EEmb_getDeviceVerInfo = 0x800cadd;
DEV_reboot = 0x800833b;
IWDG_setTimeout = 0x800c8f9;
IWDG_reload = 0x800c91d;
DisplaySetBrights = 0x80087b9;
DisplaySetAutoBrights = 0x80087d7;
MSG_pushMessage = 0x8009cb5;
MB_FORCE_READ_REMOTE_REGS = 0x800a47b;
MB_FORCE_WRITE_REMOTE_REGS = 0x800a4ff;
LED_SET = 0x80089c1;
LEDS_SET = 0x8008a19;
LED_TOGGLE = 0x80089dd;
LEDS_TOGGLE = 0x80089f1;
__eg_canvas_draw = 0x8003909;
__eg_fixed_layout_begin = 0x800390b;
__eg_fixed_flow_layout_begin = 0x800390d;
__eg_canvas_begin = 0x800390f;


__aeabi_unwind_cpp_pr0 = 0x0;
__aeabi_unwind_cpp_pr1 = 0x0;


/* Specify the memory areas */
MEMORY
{
RAM (xrw)      : ORIGIN = 0x200037bf, LENGTH = 0xC840
FLASH (rx)      : ORIGIN = 0x8011b00, LENGTH = 0x2e300
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


