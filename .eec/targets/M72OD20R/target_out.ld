/* Entry Point */
ENTRY(__entryPoint__)

/* Highest address of the user mode stack */
//_estack = 0x20005000;    /* end of RAM */
/* Generate a link error if heap and stack don't fit into RAM */
_Min_Heap_Size = 0x200;      /* required amount of heap  */
_Min_Stack_Size = 0x400; /* required amount of stack */

/*ld.lld.exe output.o --format=elf --Map=target.map -Ttarget.ld -o target.o --gcc-toolchain=./libs -nostdlib */

DrawText = 0x800499f;
DrawImg = 0x800469d;
DrawRect = 0x8004625;
AO_OUTPUT = 0x800bc41;
UI_READ_DI = 0x800c605;
UI_READ_AI = 0x800bc4f;
UI_READ_ALL_DI = 0x800bde3;
UI_CFG = 0x800be1b;
UI_CFG_SET_RANGE = 0x800bea7;
UI_CFG_SET_B = 0x800becf;
RELAY_SET = 0x800c57d;
RELAY_TOGGLE = 0x800c599;
RELAYS_TOGGLE = 0x800c5ad;
RELAYS_SET = 0x800c5d1;
RELAYS_SET = 0x800c5d1;
MB_READ_LOCAL_REG = 0x8007c6f;
MB_WRITE_LOCAL_REG = 0x8007c93;
MB_GET_ERROR = 0x8007c5f;
MB_READ_REMOTE_REG = 0x8007aad;
MB_WRITE_REMOTE_REG = 0x8007bf5;
MODBUS_CFG = 0x8007ca9;
UART_CFG = 0x800bee9;
SET_BUTTON_HANDLER = 0x800b80f;
DelayMs = 0x8005d91;
Print = 0x800b951;
Println = 0x800b9a1;
EEmb_IntToString = 0x8010e5b;
EEmb_FpToString = 0x8010e69;
EEmb_GetStringSize = 0x8010e49;
GetGlobalTicks = 0x800b949;
FONT_DEFAULT = 0x800e430;
img_default_switchOn = 0x800ea9c;
img_default_switchOff = 0x800ea20;
img_default_car = 0x800e9a4;
img_default_ctrl = 0x800e6f0;
__eg_set_color = 0x8002233;
__eg_set_font = 0x8002275;
__eg_row_begin = 0x800285d;
__eg_row_draw = 0x80029e5;
__eg_layout_begin = 0x8002a1f;
__eg_list_begin = 0x8002d51;
__eg_layout_draw = 0x800313b;
__eg_flow_layout_begin = 0x8002bd1;
__eg_flow_layout_draw = 0x8003161;
__eg_label_draw = 0x80031db;
__eg_list_draw = 0x8003101;
__eg_img_draw = 0x80033f1;
__eg_switcher_draw = 0x8003b49;
__eg_input_int_draw = 0x8003c0d;
__eg_input_float_draw = 0x80040a5;
__eg_fill_draw = 0x80034db;
__eg_button_draw = 0x8003523;
__eg_combo_box_draw = 0x80037af;
__eg_ghostStepInParent = 0x8002737;
__eg_set_borders = 0x8002131;
__eg_set_unit = 0x800213d;
EEMB_GUI_CONTEXT_PTR = 0x200006f4;
EEMB_GUI_PARENT_CONTEXT_PTR = 0x200006f8;
GUI_buttonHandler = 0x80023ab;
GUI_buttonsHandler = 0x800256b;
GUI_setDraw = 0x8002145;
GUI_clearContext = 0x80022a9;
GUI_rowStartStep = 0x8002813;
DrawImgWithSize = 0x80047d3;
GetTextSize = 0x800495f;
GetNextLine = 0x8004937;
GetCharHeight = 0x8004949;
MB_WRITE_H_REG_WITH_ADDR = 0x8007cc9;
MB_READ_H_REG_FROM_ADDR = 0x8007cc5;
rtc_setYears = 0x800d60f;
rtc_setMonths = 0x800d5f5;
rtc_setDays = 0x800d5db;
rtc_setDay = 0x800d5d5;
rtc_setHours = 0x800d59f;
rtc_setMins = 0x800d585;
rtc_setSeconds = 0x800d56b;
RTC_SET_DATE = 0x800d453;
RTC_SET_DATE_2 = 0x800d629;
RTC_GET_DATE = 0x800d1d5;
rtc_getYears = 0x800d725;
rtc_getMonths = 0x800d705;
rtc_getDays = 0x800d6e5;
rtc_getDay = 0x800d6df;
rtc_getHours = 0x800d6ab;
rtc_getMins = 0x800d68b;
rtc_getSeconds = 0x800d66b;
EEmb_GetValFromBindVar = 0x8005039;
EEmb_WriteValToBindVar = 0x8005095;
MB_REMOTE_MODULE_ADD_INSTANCE = 0x800778d;
MB_WRITE_REMOTE_REG_WITH_INST = 0x8007b01;
MB_READ_REMOTE_REG_WITH_INST = 0x80079c3;
xTimerGenericCommand = 0x80080d5;
xTimerCreate = 0x8008057;
xTimerIsTimerActive = 0x8008469;
xTimerGetPeriod = 0x8008137;
pcTimerGetName = 0x8008167;
xTimerGetExpiryTime = 0x800814f;
xTaskGetTickCount = 0x8006055;
pvTimerGetTimerID = 0x8008497;
vTimerSetTimerID = 0x80084bb;
EEmb_MemAlloc = 0x8010fbd;
EEmb_MemFree = 0x8010fc1;
EEmb_Panic = 0x8010c8d;
MemGetFreeHeapSize = 0x80059bb;
MemGetMinimumEverFreeHeapSize = 0x80059c1;
uxTaskGetStackHighWaterMark = 0x80063cf;
EEmb_getSerialNumber = 0x8010fb5;
EEmb_getDeviceVerInfo = 0x8010fb9;
DEV_reboot = 0x800bf53;
IWDG_setTimeout = 0x8010dd5;
IWDG_reload = 0x8010df9;
DisplaySetBrights = 0x800c47d;
DisplaySetAutoBrights = 0x800c49b;
MSG_pushMessage = 0x8004d0d;


__aeabi_unwind_cpp_pr0 = 0x0;
__aeabi_unwind_cpp_pr1 = 0x0;


/* Specify the memory areas */
MEMORY
{
RAM (xrw)      : ORIGIN = 0x200032c0, LENGTH = 0xCD40
FLASH (rx)      : ORIGIN = 0x8011800, LENGTH = 0x2e600
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


