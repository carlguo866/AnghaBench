; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_util.c_randomize_stack_top.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_util.c_randomize_stack_top.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@PF_RANDOMIZE = common dso_local global i32 0, align 4
@STACK_RND_MASK = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @randomize_stack_top(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  store i64 0, i64* %3, align 8
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @PF_RANDOMIZE, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = call i64 (...) @get_random_long()
  store i64 %11, i64* %3, align 8
  %12 = load i64, i64* @STACK_RND_MASK, align 8
  %13 = load i64, i64* %3, align 8
  %14 = and i64 %13, %12
  store i64 %14, i64* %3, align 8
  %15 = load i64, i64* @PAGE_SHIFT, align 8
  %16 = load i64, i64* %3, align 8
  %17 = shl i64 %16, %15
  store i64 %17, i64* %3, align 8
  br label %18

18:                                               ; preds = %10, %1
  %19 = load i64, i64* %2, align 8
  %20 = call i64 @PAGE_ALIGN(i64 %19)
  %21 = load i64, i64* %3, align 8
  %22 = sub i64 %20, %21
  ret i64 %22
}

declare dso_local i64 @get_random_long(...) #1

declare dso_local i64 @PAGE_ALIGN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
