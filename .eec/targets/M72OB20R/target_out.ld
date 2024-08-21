/* Entry Point */
ENTRY(__entryPoint__)

/* Highest address of the user mode stack */
//_estack = 0x20005000;    /* end of RAM */
/* Generate a link error if heap and stack don't fit into RAM */
_Min_Heap_Size = 0x200;      /* required amount of heap  */
_Min_Stack_Size = 0x400; /* required amount of stack */

/*ld.lld.exe output.o --format=elf --Map=target.map -Ttarget.ld -o target.o --gcc-toolchain=./libs -nostdlib */

DrawText = 0x80038c3;
DrawImg = 0x80038c5;
DrawRect = 0x80038c7;
AO_OUTPUT = 0x8008041;
UI_READ_DI = 0x800892d;
UI_READ_AI = 0x800804f;
UI_READ_ALL_DI = 0x80081e3;
UI_CFG = 0x800821b;
UI_CFG_SET_RANGE = 0x8008283;
UI_CFG_SET_B = 0x80082ab;
RELAY_SET = 0x80088a5;
RELAY_TOGGLE = 0x80088c1;
RELAYS_TOGGLE = 0x80088d5;
RELAYS_SET = 0x80088f9;
RELAYS_SET = 0x80088f9;
MB_READ_LOCAL_REG = 0x800a843;
MB_WRITE_LOCAL_REG = 0x800a867;
MB_GET_ERROR = 0x800a833;
MB_READ_REMOTE_REG = 0x800a63d;
MB_WRITE_REMOTE_REG = 0x800a7c9;
MODBUS_CFG = 0x800a87d;
UART_CFG = 0x80082c5;
SET_BUTTON_HANDLER = 0x8007c33;
DelayMs = 0x8005e79;
Print = 0x8007d51;
Println = 0x8007da1;
EEmb_IntToString = 0x800c8cf;
EEmb_FpToString = 0x800c8dd;
EEmb_GetStringSize = 0x800c8bd;
GetGlobalTicks = 0x8007d49;
FONT_DEFAULT = 0x200006e8;
img_default_switchOn = 0x200006f4;
img_default_switchOff = 0x200006f8;
img_default_car = 0x200006fc;
img_default_ctrl = 0x20000700;
__eg_set_color = 0x80038c9;
__eg_set_font = 0x80038cb;
__eg_row_begin = 0x80038cd;
__eg_row_draw = 0x80038cf;
__eg_layout_begin = 0x80038d1;
__eg_list_begin = 0x80038d5;
__eg_layout_draw = 0x80038d7;
__eg_flow_layout_begin = 0x80038d3;
__eg_flow_layout_draw = 0x80038d9;
__eg_label_draw = 0x80038db;
__eg_list_draw = 0x80038dd;
__eg_img_draw = 0x80038df;
__eg_switcher_draw = 0x80038e1;
__eg_input_int_draw = 0x80038e3;
__eg_input_float_draw = 0x80038e5;
__eg_fill_draw = 0x80038e7;
__eg_button_draw = 0x80038e9;
__eg_combo_box_draw = 0x80038eb;
__eg_ghostStepInParent = 0x80038ed;
__eg_set_borders = 0x80038ef;
__eg_set_unit = 0x80038f1;
EEMB_GUI_CONTEXT_PTR = 0x200006ec;
EEMB_GUI_PARENT_CONTEXT_PTR = 0x200006f0;
GUI_buttonHandler = 0x80038f3;
GUI_buttonsHandler = 0x80038f5;
GUI_setDraw = 0x80038f7;
GUI_clearContext = 0x80038f9;
GUI_rowStartStep = 0x80038fb;
DrawImgWithSize = 0x80038fd;
GetTextSize = 0x80038ff;
GetNextLine = 0x8003901;
GetCharHeight = 0x8003903;
MB_WRITE_H_REG_WITH_ADDR = 0x800a8a5;
MB_READ_H_REG_FROM_ADDR = 0x800a8a1;
rtc_setYears = 0x8009b6b;
rtc_setMonths = 0x8009b51;
rtc_setDays = 0x8009b37;
rtc_setDay = 0x8009b31;
rtc_setHours = 0x8009afb;
rtc_setMins = 0x8009ae1;
rtc_setSeconds = 0x8009ac7;
RTC_SET_DATE = 0x80099af;
RTC_SET_DATE_2 = 0x8009b85;
RTC_GET_DATE = 0x8009731;
rtc_getYears = 0x8009c81;
rtc_getMonths = 0x8009c61;
rtc_getDays = 0x8009c41;
rtc_getDay = 0x8009c3b;
rtc_getHours = 0x8009c07;
rtc_getMins = 0x8009be7;
rtc_getSeconds = 0x8009bc7;
EEmb_GetValFromBindVar = 0x800c641;
EEmb_WriteValToBindVar = 0x800c69d;
MB_REMOTE_MODULE_ADD_INSTANCE = 0x800a161;
MB_WRITE_REMOTE_REG_WITH_INST = 0x800a695;
MB_READ_REMOTE_REG_WITH_INST = 0x800a4f7;
xTimerGenericCommand = 0x8006e81;
xTimerCreate = 0x8006e03;
xTimerIsTimerActive = 0x8007219;
xTimerGetPeriod = 0x8006ee3;
pcTimerGetName = 0x8006f13;
pcTimerSetName = 0x8006f2b;
xTimerGetExpiryTime = 0x8006efb;
xTaskGetTickCount = 0x800613d;
vTimerSetTimerID = 0x800726b;
pvTimerGetTimerID = 0x8007247;
EEmb_MemAlloc = 0x800ca31;
EEmb_MemFree = 0x800ca35;
EEmb_Panic = 0x800c701;
MemGetFreeHeapSize = 0x80069fb;
MemGetMinimumEverFreeHeapSize = 0x8006a01;
uxTaskGetStackHighWaterMark = 0x80064b7;
EEmb_getSerialNumber = 0x800ca29;
EEmb_getDeviceVerInfo = 0x800ca2d;
DEV_reboot = 0x800832f;
IWDG_setTimeout = 0x800c849;
IWDG_reload = 0x800c86d;
DisplaySetBrights = 0x80087a5;
DisplaySetAutoBrights = 0x80087c3;
MSG_pushMessage = 0x8009ca1;
MB_FORCE_READ_REMOTE_REGS = 0x800a3ed;
MB_FORCE_WRITE_REMOTE_REGS = 0x800a46b;
LED_SET = 0x80089ad;
LEDS_SET = 0x8008a05;
LED_TOGGLE = 0x80089c9;
LEDS_TOGGLE = 0x80089dd;


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


