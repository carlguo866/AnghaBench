; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/mmgr/extr_mcxt.c_palloc0.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/mmgr/extr_mcxt.c_palloc0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i8* (%struct.TYPE_9__*, i32)* }

@CurrentMemoryContext = common dso_local global %struct.TYPE_9__* null, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"invalid memory alloc request size %zu\00", align 1
@TopMemoryContext = common dso_local global i32 0, align 4
@ERRCODE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"Failed on request of size %zu in memory context \22%s\22.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @palloc0(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** @CurrentMemoryContext, align 8
  store %struct.TYPE_9__* %5, %struct.TYPE_9__** %4, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %7 = call i32 @MemoryContextIsValid(%struct.TYPE_9__* %6)
  %8 = call i32 @AssertArg(i32 %7)
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %10 = call i32 @AssertNotInCriticalSection(%struct.TYPE_9__* %9)
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @AllocSizeIsValid(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ERROR, align 4
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @elog(i32 %15, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %18

18:                                               ; preds = %14, %1
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  store i32 0, i32* %20, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i8* (%struct.TYPE_9__*, i32)*, i8* (%struct.TYPE_9__*, i32)** %24, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %27 = load i32, i32* %2, align 4
  %28 = call i8* %25(%struct.TYPE_9__* %26, i32 %27)
  store i8* %28, i8** %3, align 8
  %29 = load i8*, i8** %3, align 8
  %30 = icmp eq i8* %29, null
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %18
  %35 = load i32, i32* @TopMemoryContext, align 4
  %36 = call i32 @MemoryContextStats(i32 %35)
  %37 = load i32, i32* @ERROR, align 4
  %38 = load i32, i32* @ERRCODE_OUT_OF_MEMORY, align 4
  %39 = call i32 @errcode(i32 %38)
  %40 = call i32 @errmsg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* %2, align 4
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @errdetail(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %41, i32 %44)
  %46 = call i32 @ereport(i32 %37, i32 %45)
  br label %47

47:                                               ; preds = %34, %18
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %49 = load i8*, i8** %3, align 8
  %50 = load i32, i32* %2, align 4
  %51 = call i32 @VALGRIND_MEMPOOL_ALLOC(%struct.TYPE_9__* %48, i8* %49, i32 %50)
  %52 = load i8*, i8** %3, align 8
  %53 = load i32, i32* %2, align 4
  %54 = call i32 @MemSetAligned(i8* %52, i32 0, i32 %53)
  %55 = load i8*, i8** %3, align 8
  ret i8* %55
}

declare dso_local i32 @AssertArg(i32) #1

declare dso_local i32 @MemoryContextIsValid(%struct.TYPE_9__*) #1

declare dso_local i32 @AssertNotInCriticalSection(%struct.TYPE_9__*) #1

declare dso_local i32 @AllocSizeIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @MemoryContextStats(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @errdetail(i8*, i32, i32) #1

declare dso_local i32 @VALGRIND_MEMPOOL_ALLOC(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32 @MemSetAligned(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
