

SetPackageName(EEmbCore)


SetSources("./EEmbCore.es")
SetSources("./../../EEmbCore/Memory.es")
SetSources("./../../EEmbCore/Exception.es")
SetSources("./../../EEmbCore/String.es", "./../../EEmbCore/Integer.es")
SetSources("./../../EEmbCore/Logs.es")
SetSources("./../../EEmbCore/Display.es")
SetSources("./../../EEmbCore/Modbus.es")
SetSources("./../../EEmbCore/RealTimeClock.es")
SetSources("./../../EEmbCore/BindVariable.es")
SetSources("./../../EEmbCore/EasyFont.es")
SetSources("./../../EEmbCore/EasyImage.es")
SetSources("./../../EEmbCore/EasyGUI.es")


BuildLib()

