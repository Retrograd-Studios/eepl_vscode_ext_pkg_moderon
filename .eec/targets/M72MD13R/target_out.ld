/* Entry Point */
ENTRY(__entryPoint__)

/* Highest address of the user mode stack */
//_estack = 0x20005000;    /* end of RAM */
/* Generate a link error if heap and stack don't fit into RAM */
_Min_Heap_Size = 0x200;      /* required amount of heap  */
_Min_Stack_Size = 0x400; /* required amount of stack */

/*ld.lld.exe output.o --format=elf --Map=target.map -Ttarget.ld -o target.o --gcc-toolchain=./libs -nostdlib */

DrawText = 0x8004f35;
DrawImg = 0x8004bf1;
_DrawRect = 0x8004b75;
AO_OUTPUT = 0x800cfb5;
UI_READ_DI = 0x800e199;
UI_READ_AI = 0x800cfc5;
UI_READ_ALL_DI = 0x800d1fb;
UI_CFG = 0x800d235;
UI_CFG_SET_RANGE = 0x800d2f3;
UI_CFG_SET_B = 0x800d31b;
RELAY_SET = 0x800e111;
RELAY_TOGGLE = 0x800e12d;
RELAYS_TOGGLE = 0x800e141;
RELAYS_SET = 0x800e165;
RELAYS_SET = 0x800e165;
MB_READ_LOCAL_REG = 0x80099f5;
MB_WRITE_LOCAL_REG = 0x8009a19;
MB_GET_ERROR = 0x80099e5;
MB_WRITE_REMOTE_REG = 0x80097d9;
MODBUS_CFG = 0x8009a2f;
UART_CFG = 0x800d335;
SET_BUTTON_HANDLER = 0x800ca17;
DelayMs = 0x8005ad5;
Print = 0x800cb75;
Println = 0x800cbc5;
GetGlobalTicks = 0x800cb6d;
FONT_DEFAULT = 0x80100f0;
img_default_switchOn = 0x801075c;
img_default_switchOff = 0x80106e0;
img_default_car = 0x8010664;
img_default_ctrl = 0x80103b0;
__eg_set_color = 0x8002237;
__eg_set_font = 0x8002279;
__eg_row_begin = 0x80028e7;
__eg_row_draw = 0x8002aa7;
__eg_layout_begin = 0x8002af9;
__eg_list_begin = 0x8002f81;
__eg_layout_draw = 0x800335b;
__eg_flow_layout_begin = 0x8002d85;
__eg_flow_layout_draw = 0x8003381;
__eg_label_draw = 0x80034ab;
__eg_list_draw = 0x8003321;
__eg_img_draw = 0x8003671;
__eg_switcher_draw = 0x8003fa9;
__eg_input_int_draw = 0x800409d;
__eg_input_float_draw = 0x800457d;
__eg_fill_draw = 0x8003903;
__eg_button_draw = 0x8003949;
__eg_combo_box_draw = 0x8003bdb;
__eg_ghostStepInParent = 0x80027a9;
__eg_set_borders = 0x8002131;
__eg_set_unit = 0x800213d;
EEMB_GUI_CONTEXT_PTR = 0x20001304;
EEMB_GUI_PARENT_CONTEXT_PTR = 0x20001308;
GUI_buttonHandler = 0x800241f;
GUI_buttonsHandler = 0x8002599;
GUI_setDraw = 0x8002145;
GUI_clearContext = 0x80022ad;
GUI_rowStartStep = 0x800289d;
DrawImgWithSize = 0x8004d2b;
GetTextSize = 0x8004eb3;
GetCharHeight = 0x8004e9d;
MB_WRITE_H_REG_WITH_ADDR = 0x8009a57;
MB_READ_H_REG_FROM_ADDR = 0x8009a53;
rtc_setYears = 0x800f1d3;
rtc_setMonths = 0x800f1b9;
rtc_setDays = 0x800f19f;
rtc_setDay = 0x800f199;
rtc_setHours = 0x800f163;
rtc_setMins = 0x800f149;
rtc_setSeconds = 0x800f12f;
RTC_SET_DATE = 0x800f017;
RTC_SET_DATE_2 = 0x800f1ed;
RTC_GET_DATE = 0x800ed99;
rtc_getYears = 0x800f2e9;
rtc_getMonths = 0x800f2c9;
rtc_getDays = 0x800f2a9;
rtc_getDay = 0x800f2a3;
rtc_getHours = 0x800f26f;
rtc_getMins = 0x800f24f;
rtc_getSeconds = 0x800f22f;
MB_REMOTE_MODULE_ADD_INSTANCE = 0x8008c4d;
MB_WRITE_REMOTE_REG_WITH_INST = 0x80095cd;
xTimerGenericCommand = 0x8008511;
xTimerCreate = 0x8008493;
xTimerIsTimerActive = 0x80088a9;
xTimerGetPeriod = 0x8008573;
pcTimerGetName = 0x80085a3;
pcTimerSetName = 0x80085bb;
xTimerGetExpiryTime = 0x800858b;
xTaskGetTickCount = 0x8005d99;
vTimerSetTimerID = 0x80088fb;
pvTimerGetTimerID = 0x80088d7;
EEmb_MemAlloc = 0x8012ba5;
EEmb_MemFree = 0x8012ba9;
EEmb_Panic = 0x8008bdd;
MemGetFreeHeapSize = 0x80070f3;
MemGetMinimumEverFreeHeapSize = 0x80070f9;
uxTaskGetStackHighWaterMark = 0x8006113;
EEmb_getSerialNumber = 0x8007211;
EEmb_getDeviceVerInfo = 0x800722d;
DEV_reboot = 0x800d3bd;
IWDG_setTimeout = 0x8012a5d;
IWDG_reload = 0x8012a81;
DisplaySetBrights = 0x800e011;
DisplaySetAutoBrights = 0x800e02f;
MSG_pushMessage = 0x8005271;
MB_FORCE_READ_REMOTE_REGS = 0x80092b3;
MB_FORCE_WRITE_REMOTE_REGS = 0x80093d7;
LED_SET = 0x8012af9;
LEDS_SET = 0x8012b01;
LED_TOGGLE = 0x8012af5;
LEDS_TOGGLE = 0x8012afd;
__eg_canvas_draw = 0x80033a7;
__eg_fixed_layout_begin = 0x8002cf7;
__eg_fixed_flow_layout_begin = 0x8002f43;
__eg_canvas_begin = 0x8002f71;
UART_SET_FRAME_CFG = 0x800d355;
EEmb_buttonHandler = 0x800d6ad;
FSR_setPowerLevel = 0x8012b05;
FSR_changeState = 0x8012b09;
FSR_getResetErrorCode = 0x8012b0d;
FSR_setupParams = 0x8012b11;
BTN_GET_STATUS = 0x800e23d;
MB_GET_REMOTE_REG_GRP_FROM_PTR = 0x800985d;
MB_GET_INPUT_REG_GRP_FROM_PTR = 0x80098af;
MB_GET_HOLDING_REG_GRP_FROM_PTR = 0x800990d;
MB_STORE_DATA_TO_REG = 0x80099bd;
MB_GET_ACTUAL_DATA_PTR = 0x8009859;
DEV_EEmbFrameworkCfg = 0x20003484;
__eg_dyn_label_draw = 0x800344b;
__eg_animation_draw = 0x8003763;
MODBUS_SET_LOCAL_CHANGED_CALLBACK = 0x8009ca7;
MODBUS_CHECK_LOCAL_CHANGED = 0x8009caf;


__aeabi_unwind_cpp_pr0 = 0x0;
__aeabi_unwind_cpp_pr1 = 0x0;


/* Specify the memory areas */
MEMORY
{
RAM (xrw)      : ORIGIN = 0x200037f8, LENGTH = 0xc808
FLASH (rx)      : ORIGIN = 0x8013200, LENGTH = 0x2cc00
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


