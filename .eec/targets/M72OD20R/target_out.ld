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
AO_OUTPUT = 0x800bc45;
UI_READ_DI = 0x800c609;
UI_READ_AI = 0x800bc53;
UI_READ_ALL_DI = 0x800bde7;
UI_CFG = 0x800be1f;
UI_CFG_SET_RANGE = 0x800beab;
UI_CFG_SET_B = 0x800bed3;
RELAY_SET = 0x800c581;
RELAY_TOGGLE = 0x800c59d;
RELAYS_TOGGLE = 0x800c5b1;
RELAYS_SET = 0x800c5d5;
RELAYS_SET = 0x800c5d5;
MB_READ_LOCAL_REG = 0x8007c6f;
MB_WRITE_LOCAL_REG = 0x8007c93;
MB_GET_ERROR = 0x8007c5f;
MB_READ_REMOTE_REG = 0x8007aad;
MB_WRITE_REMOTE_REG = 0x8007bf5;
MODBUS_CFG = 0x8007ca9;
UART_CFG = 0x800beed;
SET_BUTTON_HANDLER = 0x800b813;
DelayMs = 0x8005d91;
Print = 0x800b955;
Println = 0x800b9a5;
EEmb_IntToString = 0x8010e5f;
EEmb_FpToString = 0x8010e6d;
EEmb_GetStringSize = 0x8010e4d;
GetGlobalTicks = 0x800b94d;
FONT_DEFAULT = 0x800e434;
img_default_switchOn = 0x800eaa0;
img_default_switchOff = 0x800ea24;
img_default_car = 0x800e9a8;
img_default_ctrl = 0x800e6f4;
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
rtc_setYears = 0x800d613;
rtc_setMonths = 0x800d5f9;
rtc_setDays = 0x800d5df;
rtc_setDay = 0x800d5d9;
rtc_setHours = 0x800d5a3;
rtc_setMins = 0x800d589;
rtc_setSeconds = 0x800d56f;
RTC_SET_DATE = 0x800d457;
RTC_SET_DATE_2 = 0x800d62d;
RTC_GET_DATE = 0x800d1d9;
rtc_getYears = 0x800d729;
rtc_getMonths = 0x800d709;
rtc_getDays = 0x800d6e9;
rtc_getDay = 0x800d6e3;
rtc_getHours = 0x800d6af;
rtc_getMins = 0x800d68f;
rtc_getSeconds = 0x800d66f;
EEmb_GetValFromBindVar = 0x8005039;
EEmb_WriteValToBindVar = 0x8005095;
MB_REMOTE_MODULE_ADD_INSTANCE = 0x800778d;
MB_WRITE_REMOTE_REG_WITH_INST = 0x8007b01;
MB_READ_REMOTE_REG_WITH_INST = 0x80079c3;
xTimerGenericCommand = 0x80080d5;
xTimerCreate = 0x8008057;
xTimerIsTimerActive = 0x800846d;
xTimerGetPeriod = 0x8008137;
pcTimerGetName = 0x8008167;
pcTimerSetName = 0x800817f;
xTimerGetExpiryTime = 0x800814f;
xTaskGetTickCount = 0x8006055;
vTimerSetTimerID = 0x80084bf;
pvTimerGetTimerID = 0x800849b;
EEmb_MemAlloc = 0x8010fc1;
EEmb_MemFree = 0x8010fc5;
EEmb_Panic = 0x8010c91;
MemGetFreeHeapSize = 0x80059bb;
MemGetMinimumEverFreeHeapSize = 0x80059c1;
uxTaskGetStackHighWaterMark = 0x80063cf;
EEmb_getSerialNumber = 0x8010fb9;
EEmb_getDeviceVerInfo = 0x8010fbd;
DEV_reboot = 0x800bf57;
IWDG_setTimeout = 0x8010dd9;
IWDG_reload = 0x8010dfd;
DisplaySetBrights = 0x800c481;
DisplaySetAutoBrights = 0x800c49f;
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


