; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/kernel/extr_swsusp.c_pfn_is_nosave.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/kernel/extr_swsusp.c_pfn_is_nosave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__nosave_begin = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@__nosave_end = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pfn_is_nosave(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = call i64 @__pa(i32* @__nosave_begin)
  %6 = load i64, i64* @PAGE_SHIFT, align 8
  %7 = lshr i64 %5, %6
  store i64 %7, i64* %3, align 8
  %8 = call i64 @__pa(i32* @__nosave_end)
  %9 = call i64 @PAGE_ALIGN(i64 %8)
  %10 = load i64, i64* @PAGE_SHIFT, align 8
  %11 = lshr i64 %9, %10
  store i64 %11, i64* %4, align 8
  %12 = load i64, i64* %2, align 8
  %13 = load i64, i64* %3, align 8
  %14 = icmp uge i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load i64, i64* %2, align 8
  %17 = load i64, i64* %4, align 8
  %18 = icmp ult i64 %16, %17
  br label %19

19:                                               ; preds = %15, %1
  %20 = phi i1 [ false, %1 ], [ %18, %15 ]
  %21 = zext i1 %20 to i32
  ret i32 %21
}

declare dso_local i64 @__pa(i32*) #1

declare dso_local i64 @PAGE_ALIGN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
