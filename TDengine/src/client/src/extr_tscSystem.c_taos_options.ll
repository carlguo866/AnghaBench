; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSystem.c_taos_options.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSystem.c_taos_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@taos_options.lock = internal global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"haven't acquire lock after spin %d times.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @taos_options(i32 %0, i8* %1, ...) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store i32 1, i32* %5, align 4
  br label %7

7:                                                ; preds = %19, %2
  %8 = call i64 @atomic_val_compare_exchange_32(i32* @taos_options.lock, i32 0, i32 1)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %7
  %11 = load i32, i32* %5, align 4
  %12 = srem i32 %11, 1000
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @tscPrint(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = call i32 (...) @sched_yield()
  br label %18

18:                                               ; preds = %14, %10
  br label %19

19:                                               ; preds = %18
  %20 = load i32, i32* %5, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %5, align 4
  br label %7

22:                                               ; preds = %7
  %23 = load i32, i32* %3, align 4
  %24 = load i8*, i8** %4, align 8
  %25 = call i32 @taos_options_imp(i32 %23, i8* %24)
  store i32 %25, i32* %6, align 4
  %26 = call i32 @atomic_store_32(i32* @taos_options.lock, i32 0)
  %27 = load i32, i32* %6, align 4
  ret i32 %27
}

declare dso_local i64 @atomic_val_compare_exchange_32(i32*, i32, i32) #1

declare dso_local i32 @tscPrint(i8*, i32) #1

declare dso_local i32 @sched_yield(...) #1

declare dso_local i32 @taos_options_imp(i32, i8*) #1

declare dso_local i32 @atomic_store_32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
