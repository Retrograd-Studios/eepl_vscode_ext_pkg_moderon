


func MemSetFromInt32(p: pointer, val: int32, valSize: uint8, isSigned: uint8) {

    if isSigned < 2 {

        if valSize == 1 {
            let origPtr: mut &int8 = p
            origPtr = val
        } else if valSize == 2 {
            let origPtr: mut &int16 = p
            origPtr = val
        } else if valSize == 4 {
            let origPtr: mut &int32 = p
            origPtr = val
        } else if valSize == 8 {
            let origPtr: mut &int64 = p
            origPtr = val
        } else {
            Panic("Error: Memory is corrupt")
        }


    } else  {

        if valSize == 4 {
            let origPtr: mut &fp32 = p
            origPtr = val
        } else if valSize == 8 {
            let origPtr: mut &fp64 = p
            origPtr = val
        } else {
            Panic("Error: Memory is corrupt")
        }

    }

}

func MemSetFromInt64(p: pointer, val: int64, valSize: uint8, isSigned: uint8) {

    if valSize < 8 {
        MemSetFromInt32(p, val, valSize, isSigned)
        return
    } 

    if isSigned == 2 {

        let origPtr: mut &fp64 = p
        origPtr = val

    } else {
        let origPtr: mut &int64 = p
        origPtr = val
    }


}



func MemSetFromFp32(p: pointer, val: fp32, valSize: uint8, isSigned: uint8) {

    if isSigned < 2 {

        MemSetFromInt32(p, val, valSize, isSigned)

    } else  {

        if valSize == 4 {
            let origPtr: mut &fp32 = p
            origPtr = val
        } else if valSize == 8 {
            let origPtr: mut &fp64 = p
            origPtr = val
        } else {
            Panic("Error: Memory is corrupt")
        }

    }

}


func MemSetFromFp64(p: pointer, val: fp64, valSize: uint8, isSigned: uint8) {

    if isSigned < 2 {

        MemSetFromInt64(p, val, valSize, isSigned)

    } else  {

        if valSize == 4 {
            let origPtr: mut &fp32 = p
            origPtr = val
        } else if valSize == 8 {
            let origPtr: mut &fp64 = p
            origPtr = val
        } else {
            Panic("Error: Memory is corrupt")
        }

    }

}









func MemGetInt32(p: pointer, valSize: uint8, isSigned: uint8) -> int32 {

    if isSigned == 1 {

        if valSize == 1 {
            let origPtr: &int8 = p
            return origPtr
        } else if valSize == 2 {
            let origPtr: &int16 = p
            return origPtr
        } else if valSize == 4 {
            let origPtr: &int32 = p
            return origPtr
        } else if valSize == 8 {
            let origPtr: &int64 = p
            return origPtr
        } else {
            Panic("Error: Memory is corrupt")
        }


    } else if isSigned == 2 {

        if valSize == 4 {
            let origPtr: &fp32 = p
            return origPtr
        } else if valSize == 8 {
            let origPtr: &fp64 = p
            return origPtr
        } else {
            Panic("Error: Memory is corrupt")
        }

    } else {

        if valSize == 1 {
            let origPtr: &uint8 = p
            return origPtr
        } else if valSize == 2 {
            let origPtr: &uint16 = p
            return origPtr
        } else if valSize == 4 {
            let origPtr: &uint32 = p
            return origPtr
        } else if valSize == 8 {
            let origPtr: &uint64 = p
            return origPtr
        } else {
            Panic("Error: Can't cast to int")
        }

    }

    return -1

}

func MemGetInt64(p: pointer, valSize: uint8, isSigned: uint8) -> int64 {

    if valSize < 8 {
        let val: int32 = MemGetInt32(p, valSize, isSigned)
        return val
    } 
        
    if isSigned == 1 {

        let origPtr: &int64 = p
        return origPtr

    } else if isSigned == 2 {

        let origPtr: &fp64 = p
        return origPtr

    } else {
        let origPtr: &uint64 = p
        return origPtr
    }

    return -1

}


func MemGetFp32(p: pointer, valSize: uint8, isSigned: uint8) -> fp32 {

    if isSigned < 2 {

        if valSize < 8 {
            return MemGetInt32(p, valSize, isSigned)
        } else {
            return MemGetInt64(p, valSize, isSigned)
        }

    } else  {

        if valSize == 4 {
            let origPtr: &fp32 = p
            return origPtr
        } else if valSize == 8 {
            let origPtr: &fp64 = p
            return origPtr
        } else {
            Panic("Error: Memory is corrupt")
        }

    }

    return -1.0f

}


func MemGetFp64(p: pointer, valSize: uint8, isSigned: uint8) -> fp32 {

    if valSize < 8 {
        return MemGetFp32(p, valSize, isSigned)
    } else {
        if isSigned < 2 {
            return MemGetInt64(p, valSize, isSigned)
        } else {
            let origPtr: &fp64 = p
            return origPtr
        }
    }

    return -1.0

}






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
