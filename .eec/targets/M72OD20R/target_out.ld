/* Entry Point */
ENTRY(__entryPoint__)

/* Highest address of the user mode stack */
//_estack = 0x20005000;    /* end of RAM */
/* Generate a link error if heap and stack don't fit into RAM */
_Min_Heap_Size = 0x200;      /* required amount of heap  */
_Min_Stack_Size = 0x400; /* required amount of stack */

/*ld.lld.exe output.o --format=elf --Map=target.map -Ttarget.ld -o target.o --gcc-toolchain=./libs -nostdlib */

DrawText = 0x8004ad5;
DrawImg = 0x8004791;
DrawRect = 0x8004719;
AO_OUTPUT = 0x800bee9;
UI_READ_DI = 0x800c8c1;
UI_READ_AI = 0x800bef7;
UI_READ_ALL_DI = 0x800c08b;
UI_CFG = 0x800c0c3;
UI_CFG_SET_RANGE = 0x800c14f;
UI_CFG_SET_B = 0x800c177;
RELAY_SET = 0x800c839;
RELAY_TOGGLE = 0x800c855;
RELAYS_TOGGLE = 0x800c869;
RELAYS_SET = 0x800c88d;
RELAYS_SET = 0x800c88d;
MB_READ_LOCAL_REG = 0x8007fbb;
MB_WRITE_LOCAL_REG = 0x8007fdf;
MB_GET_ERROR = 0x8007fab;
MB_READ_REMOTE_REG = 0x8007db5;
MB_WRITE_REMOTE_REG = 0x8007f41;
MODBUS_CFG = 0x8007ff5;
UART_CFG = 0x800c191;
SET_BUTTON_HANDLER = 0x800bab7;
DelayMs = 0x8005edd;
Print = 0x800bbf9;
Println = 0x800bc49;
EEmb_IntToString = 0x8011117;
EEmb_FpToString = 0x8011125;
EEmb_GetStringSize = 0x8011105;
GetGlobalTicks = 0x800bbf1;
FONT_DEFAULT = 0x800e6ec;
img_default_switchOn = 0x800ed58;
img_default_switchOff = 0x800ecdc;
img_default_car = 0x800ec60;
img_default_ctrl = 0x800e9ac;
__eg_set_color = 0x8002233;
__eg_set_font = 0x8002275;
__eg_row_begin = 0x800289b;
__eg_row_draw = 0x8002a23;
__eg_layout_begin = 0x8002a5d;
__eg_list_begin = 0x8002d99;
__eg_layout_draw = 0x8003183;
__eg_flow_layout_begin = 0x8002c0f;
__eg_flow_layout_draw = 0x80031a9;
__eg_label_draw = 0x8003229;
__eg_list_draw = 0x8003149;
__eg_img_draw = 0x800344f;
__eg_switcher_draw = 0x8003bcd;
__eg_input_int_draw = 0x8003cb5;
__eg_input_float_draw = 0x8004171;
__eg_fill_draw = 0x8003539;
__eg_button_draw = 0x8003581;
__eg_combo_box_draw = 0x800380f;
__eg_ghostStepInParent = 0x800276d;
__eg_set_borders = 0x8002131;
__eg_set_unit = 0x800213d;
EEMB_GUI_CONTEXT_PTR = 0x200006f8;
EEMB_GUI_PARENT_CONTEXT_PTR = 0x200006fc;
GUI_buttonHandler = 0x80023dd;
GUI_buttonsHandler = 0x800259d;
GUI_setDraw = 0x8002145;
GUI_clearContext = 0x80022a9;
GUI_rowStartStep = 0x8002851;
DrawImgWithSize = 0x80048c7;
GetTextSize = 0x8004a53;
GetNextLine = 0x8004a2b;
GetCharHeight = 0x8004a3d;
MB_WRITE_H_REG_WITH_ADDR = 0x800801d;
MB_READ_H_REG_FROM_ADDR = 0x8008019;
rtc_setYears = 0x800d8cb;
rtc_setMonths = 0x800d8b1;
rtc_setDays = 0x800d897;
rtc_setDay = 0x800d891;
rtc_setHours = 0x800d85b;
rtc_setMins = 0x800d841;
rtc_setSeconds = 0x800d827;
RTC_SET_DATE = 0x800d70f;
RTC_SET_DATE_2 = 0x800d8e5;
RTC_GET_DATE = 0x800d491;
rtc_getYears = 0x800d9e1;
rtc_getMonths = 0x800d9c1;
rtc_getDays = 0x800d9a1;
rtc_getDay = 0x800d99b;
rtc_getHours = 0x800d967;
rtc_getMins = 0x800d947;
rtc_getSeconds = 0x800d927;
EEmb_GetValFromBindVar = 0x8005185;
EEmb_WriteValToBindVar = 0x80051e1;
MB_REMOTE_MODULE_ADD_INSTANCE = 0x80078d9;
MB_WRITE_REMOTE_REG_WITH_INST = 0x8007e0d;
MB_READ_REMOTE_REG_WITH_INST = 0x8007c6f;
xTimerGenericCommand = 0x8008429;
xTimerCreate = 0x80083ab;
xTimerIsTimerActive = 0x80087c1;
xTimerGetPeriod = 0x800848b;
pcTimerGetName = 0x80084bb;
pcTimerSetName = 0x80084d3;
xTimerGetExpiryTime = 0x80084a3;
xTaskGetTickCount = 0x80061a1;
vTimerSetTimerID = 0x8008813;
pvTimerGetTimerID = 0x80087ef;
EEmb_MemAlloc = 0x8011279;
EEmb_MemFree = 0x801127d;
EEmb_Panic = 0x8010f49;
MemGetFreeHeapSize = 0x8005b07;
MemGetMinimumEverFreeHeapSize = 0x8005b0d;
uxTaskGetStackHighWaterMark = 0x800651b;
EEmb_getSerialNumber = 0x8011271;
EEmb_getDeviceVerInfo = 0x8011275;
DEV_reboot = 0x800c1fb;
IWDG_setTimeout = 0x8011091;
IWDG_reload = 0x80110b5;
DisplaySetBrights = 0x800c739;
DisplaySetAutoBrights = 0x800c757;
MSG_pushMessage = 0x8004e45;
MB_FORCE_READ_REMOTE_REGS = 0x8007b65;
MB_FORCE_WRITE_REMOTE_REGS = 0x8007be3;


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


