/* Entry Point */
ENTRY(__entryPoint__)

/* Highest address of the user mode stack */
//_estack = 0x20005000;    /* end of RAM */
/* Generate a link error if heap and stack don't fit into RAM */
_Min_Heap_Size = 0x200;      /* required amount of heap  */
_Min_Stack_Size = 0x400; /* required amount of stack */

/*ld.lld.exe output.o --format=elf --Map=target.map -Ttarget.ld -o target.o --gcc-toolchain=./libs -nostdlib */

DrawText = 0x8004ce9;
DrawImg = 0x800499d;
_DrawRect = 0x8004921;
AO_OUTPUT = 0x80059a9;
UI_READ_DI = 0x8007dd9;
UI_READ_AI = 0x80059b7;
UI_READ_ALL_DI = 0x8005b4b;
UI_CFG = 0x8005b83;
UI_CFG_SET_RANGE = 0x8005beb;
UI_CFG_SET_B = 0x8005c13;
RELAY_SET = 0x8007d51;
RELAY_TOGGLE = 0x8007d6d;
RELAYS_TOGGLE = 0x8007d81;
RELAYS_SET = 0x8007da5;
RELAYS_SET = 0x8007da5;
MB_READ_LOCAL_REG = 0x800b9af;
MB_WRITE_LOCAL_REG = 0x800b9d3;
MB_GET_ERROR = 0x800b99f;
MB_READ_REMOTE_REG = 0x800b7a9;
MB_WRITE_REMOTE_REG = 0x800b935;
MODBUS_CFG = 0x800b9e9;
UART_CFG = 0x8005c2d;
SET_BUTTON_HANDLER = 0x8005573;
DelayMs = 0x8006f79;
Print = 0x80056b9;
Println = 0x8005709;
EEmb_IntToString = 0x80113db;
EEmb_FpToString = 0x80113e9;
EEmb_GetStringSize = 0x80113c9;
GetGlobalTicks = 0x80056b1;
FONT_DEFAULT = 0x800ea14;
img_default_switchOn = 0x800f080;
img_default_switchOff = 0x800f004;
img_default_car = 0x800ef88;
img_default_ctrl = 0x800ecd4;
__eg_set_color = 0x8002233;
__eg_set_font = 0x8002275;
__eg_row_begin = 0x80028cb;
__eg_row_draw = 0x8002a57;
__eg_layout_begin = 0x8002a93;
__eg_list_begin = 0x8002f11;
__eg_layout_draw = 0x80032ff;
__eg_flow_layout_begin = 0x8002d19;
__eg_flow_layout_draw = 0x8003325;
__eg_label_draw = 0x80033cd;
__eg_list_draw = 0x80032c5;
__eg_img_draw = 0x80035f3;
__eg_switcher_draw = 0x8003d81;
__eg_input_int_draw = 0x8003e65;
__eg_input_float_draw = 0x8004349;
__eg_fill_draw = 0x80036e5;
__eg_button_draw = 0x800372d;
__eg_combo_box_draw = 0x80039bf;
__eg_ghostStepInParent = 0x800278d;
__eg_set_borders = 0x8002131;
__eg_set_unit = 0x800213d;
EEMB_GUI_CONTEXT_PTR = 0x200006ec;
EEMB_GUI_PARENT_CONTEXT_PTR = 0x200006f0;
GUI_buttonHandler = 0x80023dd;
GUI_buttonsHandler = 0x8002587;
GUI_setDraw = 0x8002145;
GUI_clearContext = 0x80022a9;
GUI_rowStartStep = 0x8002881;
DrawImgWithSize = 0x8004ad7;
GetTextSize = 0x8004c67;
GetNextLine = 0x8004c3f;
GetCharHeight = 0x8004c51;
MB_WRITE_H_REG_WITH_ADDR = 0x800ba11;
MB_READ_H_REG_FROM_ADDR = 0x800ba0d;
rtc_setYears = 0x800a17f;
rtc_setMonths = 0x800a165;
rtc_setDays = 0x800a14b;
rtc_setDay = 0x800a145;
rtc_setHours = 0x800a10f;
rtc_setMins = 0x800a0f5;
rtc_setSeconds = 0x800a0db;
RTC_SET_DATE = 0x8009fc3;
RTC_SET_DATE_2 = 0x800a199;
RTC_GET_DATE = 0x8009d45;
rtc_getYears = 0x800a295;
rtc_getMonths = 0x800a275;
rtc_getDays = 0x800a255;
rtc_getDay = 0x800a24f;
rtc_getHours = 0x800a21b;
rtc_getMins = 0x800a1fb;
rtc_getSeconds = 0x800a1db;
EEmb_GetValFromBindVar = 0x800616d;
EEmb_WriteValToBindVar = 0x80061c9;
MB_REMOTE_MODULE_ADD_INSTANCE = 0x800b231;
MB_WRITE_REMOTE_REG_WITH_INST = 0x800b801;
MB_READ_REMOTE_REG_WITH_INST = 0x800b64d;
xTimerGenericCommand = 0x800be2d;
xTimerCreate = 0x800bdaf;
xTimerIsTimerActive = 0x800c1c5;
xTimerGetPeriod = 0x800be8f;
pcTimerGetName = 0x800bebf;
pcTimerSetName = 0x800bed7;
xTimerGetExpiryTime = 0x800bea7;
xTaskGetTickCount = 0x800723d;
vTimerSetTimerID = 0x800c217;
pvTimerGetTimerID = 0x800c1f3;
EEmb_MemAlloc = 0x8011521;
EEmb_MemFree = 0x8011525;
EEmb_Panic = 0x801120d;
MemGetFreeHeapSize = 0x8006ba3;
MemGetMinimumEverFreeHeapSize = 0x8006ba9;
uxTaskGetStackHighWaterMark = 0x80075b7;
EEmb_getSerialNumber = 0x8011519;
EEmb_getDeviceVerInfo = 0x801151d;
DEV_reboot = 0x8005c97;
IWDG_setTimeout = 0x8011355;
IWDG_reload = 0x8011379;
DisplaySetBrights = 0x80079f5;
DisplaySetAutoBrights = 0x8007a13;
MSG_pushMessage = 0x800505d;
MB_FORCE_READ_REMOTE_REGS = 0x800b537;
MB_FORCE_WRITE_REMOTE_REGS = 0x800b5bb;
LED_SET = 0x80114e9;
LEDS_SET = 0x80114f1;
LED_TOGGLE = 0x80114e5;
LEDS_TOGGLE = 0x80114ed;
__eg_canvas_draw = 0x800334b;
__eg_fixed_layout_begin = 0x8002c93;
__eg_fixed_flow_layout_begin = 0x8002ed3;
__eg_canvas_begin = 0x8002f01;


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


