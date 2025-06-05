



export func DEV_getDeviceName() -> c_string {
    return DEV_deviceName
}


export func DEV_getManufacturerName() -> c_string {
    return DEV_manufacturerName
}



struct EEmbFrameworkCfg {
    initFunc: pointer
    loopFunc: pointer
    holdingsGrps: pointer
    inputsGrps: pointer
    romDataSize: uint32
    holdingGrpCount: uint32 
    inputGrpCount: uint32
    exeAddr: uint32
    exeSize: uint32
    exeCRC: uint32
    resAddr: pointer
    resCRC: uint32
    isReinit: uint32
    isMBLInit: uint32
    modbusRegsAddr: uint32
    frameworkVer: uint32
    memState: uint32
    heapMemAddr: pointer
    heapSize: uint32
    userTaskStackSize: uint32
    drawTaskStackSize: uint32
    romSize: uint32
    pageSize: uint32
    ramSize: uint32
    frameworkSize: uint32
    romMemCrc: uint32
    mmKey: uint32

    discreteGrps: pointer
	doGrpCount: uint32
    diGrpCount: uint32 
}

extern demangle var DEV_EEmbFrameworkCfg: &EEmbFrameworkCfg

extern demangle func DEV_reboot()

