SetPackageName( main )


//-- set sources for build
SetSources("./main.es")

 
//-- function for entry point
SetEntryPoint( init )

//-- alloc memory (bytes) for heap (dynamic strings, timers, all tasks)
SetHeapMemoryInBytes( 24*1024 )

//-- alloc memory (bytes) for stack of Main task (loop function)
SetStackForMainTask( 4*1024 )

//-- alloc memory (bytes) for stack of Draw tasks
SetStackForDrawTask( 4*1024 )


//-- build executable application
BuildApp(M72OD20R_Slave)

