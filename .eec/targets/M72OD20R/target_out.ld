/* Entry Point */
ENTRY(__entryPoint__)

/* Highest address of the user mode stack */
//_estack = 0x20005000;    /* end of RAM */
/* Generate a link error if heap and stack don't fit into RAM */
_Min_Heap_Size = 0x200;      /* required amount of heap  */
_Min_Stack_Size = 0x400; /* required amount of stack */

/*ld.lld.exe output.o --format=elf --Map=target.map -Ttarget.ld -o target.o --gcc-toolchain=./libs -nostdlib */

DrawText = 0x8004b3d;
DrawImg = 0x80047f1;
DrawRect = 0x8004775;
AO_OUTPUT = 0x80057fd;
UI_READ_DI = 0x8007c25;
UI_READ_AI = 0x800580b;
UI_READ_ALL_DI = 0x800599f;
UI_CFG = 0x80059d7;
UI_CFG_SET_RANGE = 0x8005a3f;
UI_CFG_SET_B = 0x8005a67;
RELAY_SET = 0x8007b9d;
RELAY_TOGGLE = 0x8007bb9;
RELAYS_TOGGLE = 0x8007bcd;
RELAYS_SET = 0x8007bf1;
RELAYS_SET = 0x8007bf1;
MB_READ_LOCAL_REG = 0x800b7e7;
MB_WRITE_LOCAL_REG = 0x800b80b;
MB_GET_ERROR = 0x800b7d7;
MB_READ_REMOTE_REG = 0x800b5e1;
MB_WRITE_REMOTE_REG = 0x800b76d;
MODBUS_CFG = 0x800b821;
UART_CFG = 0x8005a81;
SET_BUTTON_HANDLER = 0x80053c7;
DelayMs = 0x8006dc5;
Print = 0x800550d;
Println = 0x800555d;
EEmb_IntToString = 0x8011443;
EEmb_FpToString = 0x8011451;
EEmb_GetStringSize = 0x8011431;
GetGlobalTicks = 0x8005505;
FONT_DEFAULT = 0x800e9e0;
img_default_switchOn = 0x800f04c;
img_default_switchOff = 0x800efd0;
img_default_car = 0x800ef54;
img_default_ctrl = 0x800eca0;
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
EEMB_GUI_CONTEXT_PTR = 0x20000710;
EEMB_GUI_PARENT_CONTEXT_PTR = 0x20000714;
GUI_buttonHandler = 0x80023dd;
GUI_buttonsHandler = 0x8002587;
GUI_setDraw = 0x8002145;
GUI_clearContext = 0x80022a9;
GUI_rowStartStep = 0x8002843;
DrawImgWithSize = 0x800492b;
GetTextSize = 0x8004abb;
GetNextLine = 0x8004a93;
GetCharHeight = 0x8004aa5;
MB_WRITE_H_REG_WITH_ADDR = 0x800b849;
MB_READ_H_REG_FROM_ADDR = 0x800b845;
rtc_setYears = 0x8009fb7;
rtc_setMonths = 0x8009f9d;
rtc_setDays = 0x8009f83;
rtc_setDay = 0x8009f7d;
rtc_setHours = 0x8009f47;
rtc_setMins = 0x8009f2d;
rtc_setSeconds = 0x8009f13;
RTC_SET_DATE = 0x8009dfb;
RTC_SET_DATE_2 = 0x8009fd1;
RTC_GET_DATE = 0x8009b7d;
rtc_getYears = 0x800a0cd;
rtc_getMonths = 0x800a0ad;
rtc_getDays = 0x800a08d;
rtc_getDay = 0x800a087;
rtc_getHours = 0x800a053;
rtc_getMins = 0x800a033;
rtc_getSeconds = 0x800a013;
EEmb_GetValFromBindVar = 0x8005fb9;
EEmb_WriteValToBindVar = 0x8006015;
MB_REMOTE_MODULE_ADD_INSTANCE = 0x800b069;
MB_WRITE_REMOTE_REG_WITH_INST = 0x800b639;
MB_READ_REMOTE_REG_WITH_INST = 0x800b485;
xTimerGenericCommand = 0x800bc65;
xTimerCreate = 0x800bbe7;
xTimerIsTimerActive = 0x800bffd;
xTimerGetPeriod = 0x800bcc7;
pcTimerGetName = 0x800bcf7;
pcTimerSetName = 0x800bd0f;
xTimerGetExpiryTime = 0x800bcdf;
xTaskGetTickCount = 0x8007089;
vTimerSetTimerID = 0x800c04f;
pvTimerGetTimerID = 0x800c02b;
EEmb_MemAlloc = 0x80115b5;
EEmb_MemFree = 0x80115b9;
EEmb_Panic = 0x8011275;
MemGetFreeHeapSize = 0x80069ef;
MemGetMinimumEverFreeHeapSize = 0x80069f5;
uxTaskGetStackHighWaterMark = 0x8007403;
EEmb_getSerialNumber = 0x80115ad;
EEmb_getDeviceVerInfo = 0x80115b1;
DEV_reboot = 0x8005aeb;
IWDG_setTimeout = 0x80113bd;
IWDG_reload = 0x80113e1;
DisplaySetBrights = 0x8007841;
DisplaySetAutoBrights = 0x800785f;
MSG_pushMessage = 0x8004eb1;
MB_FORCE_READ_REMOTE_REGS = 0x800b36f;
MB_FORCE_WRITE_REMOTE_REGS = 0x800b3f3;
LED_SET = 0x801157d;
LEDS_SET = 0x8011585;
LED_TOGGLE = 0x8011579;
LEDS_TOGGLE = 0x8011581;


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


