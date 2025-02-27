; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/error/extr_elog.c_errdetail_log_plural.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/error/extr_elog.c_errdetail_log_plural.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@errordata = common dso_local global %struct.TYPE_3__* null, align 8
@errordata_stack_depth = common dso_local global i64 0, align 8
@recursion_depth = common dso_local global i32 0, align 4
@detail_log = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @errdetail_log_plural(i8* %0, i8* %1, i64 %2, ...) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** @errordata, align 8
  %10 = load i64, i64* @errordata_stack_depth, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i64 %10
  store %struct.TYPE_3__* %11, %struct.TYPE_3__** %7, align 8
  %12 = load i32, i32* @recursion_depth, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* @recursion_depth, align 4
  %14 = call i32 (...) @CHECK_STACK_DEPTH()
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @MemoryContextSwitchTo(i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @detail_log, align 4
  %23 = call i32 @EVALUATE_MESSAGE_PLURAL(i32 %21, i32 %22, i32 0)
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @MemoryContextSwitchTo(i32 %24)
  %26 = load i32, i32* @recursion_depth, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* @recursion_depth, align 4
  ret i32 0
}

declare dso_local i32 @CHECK_STACK_DEPTH(...) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @EVALUATE_MESSAGE_PLURAL(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
