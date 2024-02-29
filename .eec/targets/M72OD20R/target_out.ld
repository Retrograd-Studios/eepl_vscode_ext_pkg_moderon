/* Entry Point */
ENTRY(__entryPoint__)

/* Highest address of the user mode stack */
//_estack = 0x20005000;    /* end of RAM */
/* Generate a link error if heap and stack don't fit into RAM */
_Min_Heap_Size = 0x200;      /* required amount of heap  */
_Min_Stack_Size = 0x400; /* required amount of stack */

/*ld.lld.exe output.o --format=elf --Map=target.map -Ttarget.ld -o target.o --gcc-toolchain=./libs -nostdlib */

DrawText = 0x8004807;
DrawImg = 0x8004505;
DrawRect = 0x800448d;
AO_OUTPUT = 0x8009ab1;
UI_READ_DI = 0x8009abf;
UI_READ_AI = 0x8009ae5;
UI_READ_ALL_DI = 0x8009c8d;
UI_CFG = 0x8009cd5;
UI_CFG_SET_RANGE = 0x8009db9;
UI_CFG_SET_B = 0x8009de1;
RELAY_SET = 0x8009a25;
RELAY_TOGGLE = 0x8009a41;
RELAYS_TOGGLE = 0x8009a57;
RELAYS_SET = 0x8009a7d;
RELAYS_SET = 0x8009a7d;
MB_READ_LOCAL_REG = 0x8009e0d;
MB_WRITE_LOCAL_REG = 0x8009e35;
MB_GET_ERROR = 0x8009dfb;
MB_READ_REMOTE_REG = 0x8009ea9;
MB_WRITE_REMOTE_REG = 0x8009f69;
MODBUS_CFG = 0x8009e4f;
UART_CFG = 0x8009e71;
SET_BUTTON_HANDLER = 0x800950d;
DelayMs = 0x800a6e7;
Print = 0x800977b;
Println = 0x8009799;
EEmb_StringStartBuild = 0x8009659;
EEmb_StringPush = 0x800966d;
EEmb_StringEndBuild = 0x8009693;
EEmb_IntToString = 0x80096b9;
EEmb_FpToString = 0x800972b;
EEmb_CharToString = 0x80096ef;
EEmb_GetStringSize = 0x8009725;
GetGlobalTicks = 0x8009773;
FONT_DEFAULT = 0x800f900;
img_default_switchOn = 0x8006330;
img_default_switchOff = 0x80062b4;
img_default_car = 0x8006238;
img_default_ctrl = 0x8005f84;
__eg_set_color = 0x8002233;
__eg_set_font = 0x8002275;
__eg_row_begin = 0x8002843;
__eg_row_draw = 0x80029cb;
__eg_layout_begin = 0x8002a05;
__eg_list_begin = 0x8002bc1;
__eg_layout_draw = 0x8002fab;
__eg_flow_layout_draw = 0x8002fd1;
__eg_label_draw = 0x800304b;
__eg_list_draw = 0x8002f71;
__eg_img_draw = 0x8003261;
__eg_switcher_draw = 0x80039b1;
__eg_input_int_draw = 0x8003a75;
__eg_input_float_draw = 0x8003f0d;
__eg_fill_draw = 0x800334b;
__eg_button_draw = 0x8003393;
__eg_combo_box_draw = 0x8003617;
__eg_ghostStepInParent = 0x800271d;
__eg_set_borders = 0x8002131;
__eg_set_unit = 0x800213d;
EEMB_GUI_CONTEXT_PTR = 0x200006c4;
EEMB_GUI_PARENT_CONTEXT_PTR = 0x200006c8;
GUI_buttonHandler = 0x8002391;
GUI_buttonsHandler = 0x8002551;
GUI_setDraw = 0x8002145;
GUI_clearContext = 0x80022a9;
GUI_rowStartStep = 0x80027f9;
DrawImgWithSize = 0x800463b;
GetTextSize = 0x80047c7;
GetNextLine = 0x800479f;
GetCharHeight = 0x80047b1;
MB_WRITE_H_REG_WITH_ADDR = 0x8009e95;
MB_READ_H_REG_FROM_ADDR = 0x8009e91;
rtc_setYears = 0x8005923;
rtc_setMonths = 0x8005909;
rtc_setDays = 0x80058ef;
rtc_setDay = 0x80058e9;
rtc_setHours = 0x80058b3;
rtc_setMins = 0x8005899;
rtc_setSeconds = 0x800587f;
RTC_SET_DATE = 0x8005767;
RTC_SET_DATE_2 = 0x800593d;
RTC_GET_DATE = 0x80054e9;
rtc_getYears = 0x8005a39;
rtc_getMonths = 0x8005a19;
rtc_getDays = 0x80059f9;
rtc_getDay = 0x80059f3;
rtc_getHours = 0x80059bf;
rtc_getMins = 0x800599f;
rtc_getSeconds = 0x800597f;
EEmb_GetValFromBindVar = 0x8004bb5;
EEmb_WriteValToBindVar = 0x8004c11;
EEMB_HardFaultHandler = 0x8009ff9;
MB_REMOTE_MODULE_ADD_INSTANCE = 0x800a1bd;
MB_WRITE_REMOTE_REG_WITH_INST = 0x8009f11;
xTimerGenericCommand = 0x800dc99;
xTimerCreate = 0x800dc1b;
xTimerIsTimerActive = 0x800e02d;
xTimerGetPeriod = 0x800dcfb;
pcTimerGetName = 0x800dd2b;
xTimerGetExpiryTime = 0x800dd13;
xTaskGetTickCount = 0x800a87d;
pvTimerGetTimerID = 0x800e05b;
vTimerSetTimerID = 0x800e07f;
xPortGetFreeHeapSize = 0x8005b9b;


__aeabi_unwind_cpp_pr0 = 0x0;


/* Specify the memory areas */
MEMORY
{
RAM (xrw)      : ORIGIN = 0x20005100, LENGTH = 0x2f00
FLASH (rx)      : ORIGIN = 0x8012000, LENGTH = 0x2de00
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


