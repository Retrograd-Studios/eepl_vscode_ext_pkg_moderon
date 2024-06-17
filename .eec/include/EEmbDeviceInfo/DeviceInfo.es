

func GetSerialNumber() -> uint32[3] {
    return EEmb_getSerialNumber()
}


func GetDeviceId() -> uint16 {
    return EEmb_getDeviceVerInfo() >> 16
}


func GetFrameWorkVer() -> uint16 {
    return EEmb_getDeviceVerInfo() & 0xFFFF
}


extern demangle func EEmb_getSerialNumber() -> pointer
extern demangle func EEmb_getDeviceVerInfo() -> uint32

