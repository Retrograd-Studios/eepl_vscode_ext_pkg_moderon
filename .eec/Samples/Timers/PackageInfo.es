

SetPackageName( main )


SetSources("./App7.es")


 
//-- указываем название функции, которая вызывается при запуске приложения
SetEntryPoint( init )

//-- выделить память под кучу
SetHeapMemoryInBytes( 30 * 1024 )

//-- выделить память под стек основного таска
SetStackForMainTask( 4*1024 )
//-- выделить память под стек таска отрисовки
SetStackForDrawTask( 4*1024 )


//-- говорим что хотим создать приложение
BuildApp(app)

