/* Entry Point */
ENTRY(__entryPoint__)

/* Highest address of the user mode stack */
//_estack = 0x20005000;    /* end of RAM */
/* Generate a link error if heap and stack don't fit into RAM */
_Min_Heap_Size = 0x200;      /* required amount of heap  */
_Min_Stack_Size = 0x400; /* required amount of stack */

/*ld.lld.exe output.o --format=elf --Map=target.map -Ttarget.ld -o target.o --gcc-toolchain=./libs -nostdlib */

DrawText = 0x8004b31;
DrawImg = 0x80047ed;
DrawRect = 0x8004775;
AO_OUTPUT = 0x80057ed;
UI_READ_DI = 0x8007af5;
UI_READ_AI = 0x80057fb;
UI_READ_ALL_DI = 0x800598f;
UI_CFG = 0x80059c7;
UI_CFG_SET_RANGE = 0x8005a2f;
UI_CFG_SET_B = 0x8005a57;
RELAY_SET = 0x8007a6d;
RELAY_TOGGLE = 0x8007a89;
RELAYS_TOGGLE = 0x8007a9d;
RELAYS_SET = 0x8007ac1;
RELAYS_SET = 0x8007ac1;
MB_READ_LOCAL_REG = 0x800b62b;
MB_WRITE_LOCAL_REG = 0x800b64f;
MB_GET_ERROR = 0x800b61b;
MB_READ_REMOTE_REG = 0x800b425;
MB_WRITE_REMOTE_REG = 0x800b5b1;
MODBUS_CFG = 0x800b665;
UART_CFG = 0x8005a71;
SET_BUTTON_HANDLER = 0x80053b7;
DelayMs = 0x8006c95;
Print = 0x80054fd;
Println = 0x800554d;
EEmb_IntToString = 0x8011047;
EEmb_FpToString = 0x8011055;
EEmb_GetStringSize = 0x8011035;
GetGlobalTicks = 0x80054f5;
FONT_DEFAULT = 0x800e680;
img_default_switchOn = 0x800ecec;
img_default_switchOff = 0x800ec70;
img_default_car = 0x800ebf4;
img_default_ctrl = 0x800e940;
__eg_set_color = 0x8002233;
__eg_set_font = 0x8002275;
__eg_row_begin = 0x800288d;
__eg_row_draw = 0x8002a15;
__eg_layout_begin = 0x8002a4f;
__eg_list_begin = 0x8002d8d;
__eg_layout_draw = 0x8003177;
__eg_flow_layout_begin = 0x8002c01;
__eg_flow_layout_draw = 0x800319d;
__eg_label_draw = 0x8003221;
__eg_list_draw = 0x800313d;
__eg_img_draw = 0x8003447;
__eg_switcher_draw = 0x8003bd5;
__eg_input_int_draw = 0x8003cb9;
__eg_input_float_draw = 0x800419d;
__eg_fill_draw = 0x8003539;
__eg_button_draw = 0x8003581;
__eg_combo_box_draw = 0x8003813;
__eg_ghostStepInParent = 0x800275f;
__eg_set_borders = 0x8002131;
__eg_set_unit = 0x800213d;
EEMB_GUI_CONTEXT_PTR = 0x200006dc;
EEMB_GUI_PARENT_CONTEXT_PTR = 0x200006e0;
GUI_buttonHandler = 0x80023dd;
GUI_buttonsHandler = 0x8002587;
GUI_setDraw = 0x8002145;
GUI_clearContext = 0x80022a9;
GUI_rowStartStep = 0x8002843;
DrawImgWithSize = 0x8004923;
GetTextSize = 0x8004aaf;
GetNextLine = 0x8004a87;
GetCharHeight = 0x8004a99;
MB_WRITE_H_REG_WITH_ADDR = 0x800b68d;
MB_READ_H_REG_FROM_ADDR = 0x800b689;
rtc_setYears = 0x8009e97;
rtc_setMonths = 0x8009e7d;
rtc_setDays = 0x8009e63;
rtc_setDay = 0x8009e5d;
rtc_setHours = 0x8009e27;
rtc_setMins = 0x8009e0d;
rtc_setSeconds = 0x8009df3;
RTC_SET_DATE = 0x8009cdb;
RTC_SET_DATE_2 = 0x8009eb1;
RTC_GET_DATE = 0x8009a5d;
rtc_getYears = 0x8009fad;
rtc_getMonths = 0x8009f8d;
rtc_getDays = 0x8009f6d;
rtc_getDay = 0x8009f67;
rtc_getHours = 0x8009f33;
rtc_getMins = 0x8009f13;
rtc_getSeconds = 0x8009ef3;
EEmb_GetValFromBindVar = 0x8005f3d;
EEmb_WriteValToBindVar = 0x8005f99;
MB_REMOTE_MODULE_ADD_INSTANCE = 0x800af49;
MB_WRITE_REMOTE_REG_WITH_INST = 0x800b47d;
MB_READ_REMOTE_REG_WITH_INST = 0x800b2df;
xTimerGenericCommand = 0x800ba99;
xTimerCreate = 0x800ba1b;
xTimerIsTimerActive = 0x800be31;
xTimerGetPeriod = 0x800bafb;
pcTimerGetName = 0x800bb2b;
pcTimerSetName = 0x800bb43;
xTimerGetExpiryTime = 0x800bb13;
xTaskGetTickCount = 0x8006f59;
vTimerSetTimerID = 0x800be83;
pvTimerGetTimerID = 0x800be5f;
EEmb_MemAlloc = 0x801118d;
EEmb_MemFree = 0x8011191;
EEmb_Panic = 0x8010e79;
MemGetFreeHeapSize = 0x80068bf;
MemGetMinimumEverFreeHeapSize = 0x80068c5;
uxTaskGetStackHighWaterMark = 0x80072d3;
EEmb_getSerialNumber = 0x8011185;
EEmb_getDeviceVerInfo = 0x8011189;
DEV_reboot = 0x8005adb;
IWDG_setTimeout = 0x8010fc1;
IWDG_reload = 0x8010fe5;
DisplaySetBrights = 0x8007711;
DisplaySetAutoBrights = 0x800772f;
MSG_pushMessage = 0x8004ea1;
MB_FORCE_READ_REMOTE_REGS = 0x800b1d5;
MB_FORCE_WRITE_REMOTE_REGS = 0x800b253;


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


