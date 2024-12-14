/* Entry Point */
ENTRY(__entryPoint__)

/* Highest address of the user mode stack */
//_estack = 0x20005000;    /* end of RAM */
/* Generate a link error if heap and stack don't fit into RAM */
_Min_Heap_Size = 0x200;      /* required amount of heap  */
_Min_Stack_Size = 0x400; /* required amount of stack */

/*ld.lld.exe output.o --format=elf --Map=target.map -Ttarget.ld -o target.o --gcc-toolchain=./libs -nostdlib */

DrawText = 0x80085d9;
DrawImg = 0x80085db;
_DrawRect = 0x80085dd;
AO_OUTPUT = 0x8007dbb;
UI_READ_DI = 0x8008749;
UI_READ_AI = 0x8007dcd;
UI_READ_ALL_DI = 0x800808b;
UI_CFG = 0x80080c5;
UI_CFG_SET_RANGE = 0x8008183;
UI_CFG_SET_B = 0x80081af;
RELAY_SET = 0x80086c1;
RELAY_TOGGLE = 0x80086dd;
RELAYS_TOGGLE = 0x80086f1;
RELAYS_SET = 0x8008715;
RELAYS_SET = 0x8008715;
MB_READ_LOCAL_REG = 0x8009b87;
MB_WRITE_LOCAL_REG = 0x8009bab;
MB_GET_ERROR = 0x8009b77;
MB_READ_REMOTE_REG = 0x8009981;
MB_WRITE_REMOTE_REG = 0x8009b0d;
MODBUS_CFG = 0x8009bc1;
UART_CFG = 0x80081b1;
SET_BUTTON_HANDLER = 0x8007bb9;
DelayMs = 0x8005e55;
Print = 0x8007cd7;
Println = 0x8007d27;
EEmb_IntToString = 0x800b877;
EEmb_FpToString = 0x800b885;
EEmb_GetStringSize = 0x800b865;
GetGlobalTicks = 0x8007ccf;
FONT_DEFAULT = 0x200006d4;
img_default_switchOn = 0x200006e0;
img_default_switchOff = 0x200006e4;
img_default_car = 0x200006e8;
img_default_ctrl = 0x200006ec;
__eg_set_color = 0x80085df;
__eg_set_font = 0x80085e1;
__eg_row_begin = 0x80085e3;
__eg_row_draw = 0x80085e5;
__eg_layout_begin = 0x80085e7;
__eg_list_begin = 0x80085eb;
__eg_layout_draw = 0x80085ed;
__eg_flow_layout_begin = 0x80085e9;
__eg_flow_layout_draw = 0x80085ef;
__eg_label_draw = 0x80085f1;
__eg_list_draw = 0x80085f3;
__eg_img_draw = 0x80085f5;
__eg_switcher_draw = 0x80085f7;
__eg_input_int_draw = 0x80085f9;
__eg_input_float_draw = 0x80085fb;
__eg_fill_draw = 0x80085fd;
__eg_button_draw = 0x80085ff;
__eg_combo_box_draw = 0x8008601;
__eg_ghostStepInParent = 0x8008603;
__eg_set_borders = 0x8008605;
__eg_set_unit = 0x8008607;
EEMB_GUI_CONTEXT_PTR = 0x200006d8;
EEMB_GUI_PARENT_CONTEXT_PTR = 0x200006dc;
GUI_buttonHandler = 0x8008609;
GUI_buttonsHandler = 0x800860b;
GUI_setDraw = 0x800860d;
GUI_clearContext = 0x800860f;
GUI_rowStartStep = 0x8008611;
DrawImgWithSize = 0x8008613;
GetTextSize = 0x8008615;
GetNextLine = 0x8008617;
GetCharHeight = 0x8008619;
MB_WRITE_H_REG_WITH_ADDR = 0x8009be9;
MB_READ_H_REG_FROM_ADDR = 0x8009be5;
rtc_setYears = 0x800863d;
rtc_setMonths = 0x8008641;
rtc_setDays = 0x8008645;
rtc_setDay = 0x8008649;
rtc_setHours = 0x800864d;
rtc_setMins = 0x8008651;
rtc_setSeconds = 0x8008655;
RTC_SET_DATE = 0x8008659;
RTC_SET_DATE_2 = 0x800865d;
RTC_GET_DATE = 0x8008661;
rtc_getYears = 0x8008665;
rtc_getMonths = 0x8008669;
rtc_getDays = 0x800866d;
rtc_getDay = 0x8008671;
rtc_getHours = 0x8008675;
rtc_getMins = 0x8008679;
rtc_getSeconds = 0x800867d;
EEmb_GetValFromBindVar = 0x800b5e9;
EEmb_WriteValToBindVar = 0x800b645;
MB_REMOTE_MODULE_ADD_INSTANCE = 0x8009409;
MB_WRITE_REMOTE_REG_WITH_INST = 0x80099d9;
MB_READ_REMOTE_REG_WITH_INST = 0x8009825;
xTimerGenericCommand = 0x8006e5d;
xTimerCreate = 0x8006ddf;
xTimerIsTimerActive = 0x80071f5;
xTimerGetPeriod = 0x8006ebf;
pcTimerGetName = 0x8006eef;
pcTimerSetName = 0x8006f07;
xTimerGetExpiryTime = 0x8006ed7;
xTaskGetTickCount = 0x8006119;
vTimerSetTimerID = 0x8007247;
pvTimerGetTimerID = 0x8007223;
EEmb_MemAlloc = 0x800b99d;
EEmb_MemFree = 0x800b9a1;
EEmb_Panic = 0x800b6a9;
MemGetFreeHeapSize = 0x80069d7;
MemGetMinimumEverFreeHeapSize = 0x80069dd;
uxTaskGetStackHighWaterMark = 0x8006493;
EEmb_getSerialNumber = 0x800b995;
EEmb_getDeviceVerInfo = 0x800b999;
DEV_reboot = 0x80081f9;
IWDG_setTimeout = 0x800b7f1;
IWDG_reload = 0x800b815;
DisplaySetBrights = 0x800861b;
DisplaySetAutoBrights = 0x800861d;
MSG_pushMessage = 0x80091d9;
MB_FORCE_READ_REMOTE_REGS = 0x800970f;
MB_FORCE_WRITE_REMOTE_REGS = 0x8009793;
LED_TOGGLE = 0x800862d;
LED_SET = 0x8008631;
LEDS_TOGGLE = 0x8008635;
LEDS_SET = 0x8008639;
__eg_canvas_draw = 0x8008621;
__eg_fixed_layout_begin = 0x8008623;
__eg_fixed_flow_layout_begin = 0x8008625;
__eg_canvas_begin = 0x8008627;
UART_SET_FRAME_CFG = 0x80081d1;
FSR_setPowerLevel = 0x800b491;
FSR_changeState = 0x800b4b7;
FSR_getResetErrorCode = 0x800b4ed;
FSR_setupParams = 0x800b4fb;
BTN_GET_STATUS = 0x80087c1;


__aeabi_unwind_cpp_pr0 = 0x0;
__aeabi_unwind_cpp_pr1 = 0x0;


/* Specify the memory areas */
MEMORY
{
RAM (xrw)      : ORIGIN = 0x200037bf, LENGTH = 0xC840
FLASH (rx)      : ORIGIN = 0x8011d00, LENGTH = 0x2e100
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


