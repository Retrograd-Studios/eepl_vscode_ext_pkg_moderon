

SetPackageName( main )




SetSources("./win64.es")


//-- указываем название функции, которая вызывается при запуске приложения
SetEntryPoint( init )

//-- выделить память под кучу
// SetHeapMemoryInBytes( 24*1024 )

// //-- выделить память под стек основного таска
// SetStackForMainTask( 8*1024 )
// //-- выделить память под стек таска отрисовки
// SetStackForDrawTask( 4*1024 )


SetHeapMemoryInBytes( 30 * 1024 )

//-- выделить память под стек основного таска
SetStackForMainTask( 0 )
//-- выделить память под стек таска отрисовки
SetStackForDrawTask( 0 )


//-- говорим что хотим создать приложение
BuildApp(app)

