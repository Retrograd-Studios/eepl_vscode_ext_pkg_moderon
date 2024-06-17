



export func DEV_getDeviceName() -> c_string {
    return DEV_deviceName
}


export func DEV_getManufacturerName() -> c_string {
    return DEV_manufacturerName
}




extern demangle func DEV_reboot()

