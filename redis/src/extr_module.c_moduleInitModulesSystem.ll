; ModuleID = '/home/carl/AnghaBench/redis/src/extr_module.c_moduleInitModulesSystem.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_module.c_moduleInitModulesSystem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i8* }
%struct.TYPE_5__ = type { i32*, i32 }

@moduleUnblockedClients = common dso_local global i8* null, align 8
@server = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@modulesDictType = common dso_local global i32 0, align 4
@modules = common dso_local global i32 0, align 4
@moduleKeyspaceSubscribers = common dso_local global i8* null, align 8
@moduleFreeContextReusedClient = common dso_local global %struct.TYPE_5__* null, align 8
@CLIENT_MODULE = common dso_local global i32 0, align 4
@moduleCommandFilters = common dso_local global i8* null, align 8
@LL_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Can't create the pipe for module blocking commands: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@Timers = common dso_local global i32 0, align 4
@RedisModule_EventListeners = common dso_local global i8* null, align 8
@moduleGIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @moduleInitModulesSystem() #0 {
  %1 = call i8* (...) @listCreate()
  store i8* %1, i8** @moduleUnblockedClients, align 8
  %2 = call i8* (...) @listCreate()
  store i8* %2, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @server, i32 0, i32 1), align 8
  %3 = call i32 @dictCreate(i32* @modulesDictType, i32* null)
  store i32 %3, i32* @modules, align 4
  %4 = call i8* (...) @listCreate()
  store i8* %4, i8** @moduleKeyspaceSubscribers, align 8
  %5 = call %struct.TYPE_5__* @createClient(i32* null)
  store %struct.TYPE_5__* %5, %struct.TYPE_5__** @moduleFreeContextReusedClient, align 8
  %6 = load i32, i32* @CLIENT_MODULE, align 4
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** @moduleFreeContextReusedClient, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = or i32 %9, %6
  store i32 %10, i32* %8, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** @moduleFreeContextReusedClient, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  store i32* null, i32** %12, align 8
  %13 = call i8* (...) @listCreate()
  store i8* %13, i8** @moduleCommandFilters, align 8
  %14 = call i32 (...) @moduleRegisterCoreAPI()
  %15 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @server, i32 0, i32 0), align 8
  %16 = call i32 @pipe(i32* %15)
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %24

18:                                               ; preds = %0
  %19 = load i32, i32* @LL_WARNING, align 4
  %20 = load i32, i32* @errno, align 4
  %21 = call i32 @strerror(i32 %20)
  %22 = call i32 @serverLog(i32 %19, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = call i32 @exit(i32 1) #3
  unreachable

24:                                               ; preds = %0
  %25 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @server, i32 0, i32 0), align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @anetNonBlock(i32* null, i32 %27)
  %29 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @server, i32 0, i32 0), align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @anetNonBlock(i32* null, i32 %31)
  %33 = call i32 (...) @raxNew()
  store i32 %33, i32* @Timers, align 4
  %34 = call i8* (...) @listCreate()
  store i8* %34, i8** @RedisModule_EventListeners, align 8
  %35 = call i32 @pthread_mutex_lock(i32* @moduleGIL)
  ret void
}

declare dso_local i8* @listCreate(...) #1

declare dso_local i32 @dictCreate(i32*, i32*) #1

declare dso_local %struct.TYPE_5__* @createClient(i32*) #1

declare dso_local i32 @moduleRegisterCoreAPI(...) #1

declare dso_local i32 @pipe(i32*) #1

declare dso_local i32 @serverLog(i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @anetNonBlock(i32*, i32) #1

declare dso_local i32 @raxNew(...) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
