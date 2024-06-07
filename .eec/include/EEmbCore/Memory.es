



func MemGetFreeStack() -> uint {
    return uxTaskGetStackHighWaterMark(null)
}



//-- size: uint32
extern demangle func EEmb_MemAlloc(uint32) -> pointer
//-- mem_ptr: pointer
extern demangle func EEmb_MemFree(pointer)

extern demangle func MemGetFreeHeapSize() -> uint

extern demangle func MemGetMinimumEverFreeHeapSize() -> uint

extern demangle func uxTaskGetStackHighWaterMark(pointer) -> uint
