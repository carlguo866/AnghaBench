; ModuleID = '/home/carl/AnghaBench/disque/src/extr_debug.c_logCurrentClient.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_debug.c_logCurrentClient.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32* }
%struct.TYPE_7__ = type { i64 }

@server = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@LL_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"--- CURRENT CLIENT INFO\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"client: %s\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"argv[%d]: '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @logCurrentClient() #0 {
  %1 = alloca %struct.TYPE_8__*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @server, i32 0, i32 0), align 8
  %6 = icmp eq %struct.TYPE_8__* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %47

8:                                                ; preds = %0
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @server, i32 0, i32 0), align 8
  store %struct.TYPE_8__* %9, %struct.TYPE_8__** %1, align 8
  %10 = load i32, i32* @LL_WARNING, align 4
  %11 = call i32 (i32, i8*, ...) @serverLog(i32 %10, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 (...) @sdsempty()
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %14 = call i32 @catClientInfoString(i32 %12, %struct.TYPE_8__* %13)
  store i32 %14, i32* %2, align 4
  %15 = load i32, i32* @LL_WARNING, align 4
  %16 = load i32, i32* %2, align 4
  %17 = call i32 (i32, i8*, ...) @serverLog(i32 %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @sdsfree(i32 %18)
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %44, %8
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %47

26:                                               ; preds = %20
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.TYPE_7__* @getDecodedObject(i32 %33)
  store %struct.TYPE_7__* %34, %struct.TYPE_7__** %4, align 8
  %35 = load i32, i32* @LL_WARNING, align 4
  %36 = load i32, i32* %3, align 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to i8*
  %41 = call i32 (i32, i8*, ...) @serverLog(i32 %35, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %36, i8* %40)
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %43 = call i32 @decrRefCount(%struct.TYPE_7__* %42)
  br label %44

44:                                               ; preds = %26
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %20

47:                                               ; preds = %7, %20
  ret void
}

declare dso_local i32 @serverLog(i32, i8*, ...) #1

declare dso_local i32 @catClientInfoString(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @sdsempty(...) #1

declare dso_local i32 @sdsfree(i32) #1

declare dso_local %struct.TYPE_7__* @getDecodedObject(i32) #1

declare dso_local i32 @decrRefCount(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
