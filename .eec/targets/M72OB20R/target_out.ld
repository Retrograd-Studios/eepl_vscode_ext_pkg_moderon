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
DrawRect = 0x80038cb;
AO_OUTPUT = 0x8008045;
UI_READ_DI = 0x8008939;
UI_READ_AI = 0x8008053;
UI_READ_ALL_DI = 0x80081e7;
UI_CFG = 0x800821f;
UI_CFG_SET_RANGE = 0x8008287;
UI_CFG_SET_B = 0x80082af;
RELAY_SET = 0x80088b1;
RELAY_TOGGLE = 0x80088cd;
RELAYS_TOGGLE = 0x80088e1;
RELAYS_SET = 0x8008905;
RELAYS_SET = 0x8008905;
MB_READ_LOCAL_REG = 0x800a8eb;
MB_WRITE_LOCAL_REG = 0x800a90f;
MB_GET_ERROR = 0x800a8db;
MB_READ_REMOTE_REG = 0x800a6e5;
MB_WRITE_REMOTE_REG = 0x800a871;
MODBUS_CFG = 0x800a925;
UART_CFG = 0x80082c9;
SET_BUTTON_HANDLER = 0x8007c37;
DelayMs = 0x8005e7d;
Print = 0x8007d55;
Println = 0x8007da5;
EEmb_IntToString = 0x800c977;
EEmb_FpToString = 0x800c985;
EEmb_GetStringSize = 0x800c965;
GetGlobalTicks = 0x8007d4d;
FONT_DEFAULT = 0x200006e8;
img_default_switchOn = 0x200006f4;
img_default_switchOff = 0x200006f8;
img_default_car = 0x200006fc;
img_default_ctrl = 0x20000700;
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
EEMB_GUI_CONTEXT_PTR = 0x200006ec;
EEMB_GUI_PARENT_CONTEXT_PTR = 0x200006f0;
GUI_buttonHandler = 0x80038f7;
GUI_buttonsHandler = 0x80038f9;
GUI_setDraw = 0x80038fb;
GUI_clearContext = 0x80038fd;
GUI_rowStartStep = 0x80038ff;
DrawImgWithSize = 0x8003901;
GetTextSize = 0x8003903;
GetNextLine = 0x8003905;
GetCharHeight = 0x8003907;
MB_WRITE_H_REG_WITH_ADDR = 0x800a94d;
MB_READ_H_REG_FROM_ADDR = 0x800a949;
rtc_setYears = 0x8009b77;
rtc_setMonths = 0x8009b5d;
rtc_setDays = 0x8009b43;
rtc_setDay = 0x8009b3d;
rtc_setHours = 0x8009b07;
rtc_setMins = 0x8009aed;
rtc_setSeconds = 0x8009ad3;
RTC_SET_DATE = 0x80099bb;
RTC_SET_DATE_2 = 0x8009b91;
RTC_GET_DATE = 0x800973d;
rtc_getYears = 0x8009c8d;
rtc_getMonths = 0x8009c6d;
rtc_getDays = 0x8009c4d;
rtc_getDay = 0x8009c47;
rtc_getHours = 0x8009c13;
rtc_getMins = 0x8009bf3;
rtc_getSeconds = 0x8009bd3;
EEmb_GetValFromBindVar = 0x800c6e9;
EEmb_WriteValToBindVar = 0x800c745;
MB_REMOTE_MODULE_ADD_INSTANCE = 0x800a16d;
MB_WRITE_REMOTE_REG_WITH_INST = 0x800a73d;
MB_READ_REMOTE_REG_WITH_INST = 0x800a589;
xTimerGenericCommand = 0x8006e85;
xTimerCreate = 0x8006e07;
xTimerIsTimerActive = 0x800721d;
xTimerGetPeriod = 0x8006ee7;
pcTimerGetName = 0x8006f17;
pcTimerSetName = 0x8006f2f;
xTimerGetExpiryTime = 0x8006eff;
xTaskGetTickCount = 0x8006141;
vTimerSetTimerID = 0x800726f;
pvTimerGetTimerID = 0x800724b;
EEmb_MemAlloc = 0x800cad9;
EEmb_MemFree = 0x800cadd;
EEmb_Panic = 0x800c7a9;
MemGetFreeHeapSize = 0x80069ff;
MemGetMinimumEverFreeHeapSize = 0x8006a05;
uxTaskGetStackHighWaterMark = 0x80064bb;
EEmb_getSerialNumber = 0x800cad1;
EEmb_getDeviceVerInfo = 0x800cad5;
DEV_reboot = 0x8008333;
IWDG_setTimeout = 0x800c8f1;
IWDG_reload = 0x800c915;
DisplaySetBrights = 0x80087b1;
DisplaySetAutoBrights = 0x80087cf;
MSG_pushMessage = 0x8009cad;
MB_FORCE_READ_REMOTE_REGS = 0x800a473;
MB_FORCE_WRITE_REMOTE_REGS = 0x800a4f7;
LED_SET = 0x80089b9;
LEDS_SET = 0x8008a11;
LED_TOGGLE = 0x80089d5;
LEDS_TOGGLE = 0x80089e9;


__aeabi_unwind_cpp_pr0 = 0x0;
__aeabi_unwind_cpp_pr1 = 0x0;


/* Specify the memory areas */
MEMORY
{
RAM (xrw)      : ORIGIN = 0x200037bf, LENGTH = 0xC840
FLASH (rx)      : ORIGIN = 0x8011a00, LENGTH = 0x2e400
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


