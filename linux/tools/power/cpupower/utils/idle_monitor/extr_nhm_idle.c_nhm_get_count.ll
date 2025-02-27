; ModuleID = '/home/carl/AnghaBench/linux/tools/power/cpupower/utils/idle_monitor/extr_nhm_idle.c_nhm_get_count.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/cpupower/utils/idle_monitor/extr_nhm_idle.c_nhm_get_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSR_CORE_C3_RESIDENCY = common dso_local global i32 0, align 4
@MSR_CORE_C6_RESIDENCY = common dso_local global i32 0, align 4
@MSR_PKG_C3_RESIDENCY = common dso_local global i32 0, align 4
@MSR_PKG_C6_RESIDENCY = common dso_local global i32 0, align 4
@MSR_TSC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64*, i32)* @nhm_get_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nhm_get_count(i32 %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %20 [
    i32 132, label %10
    i32 131, label %12
    i32 130, label %14
    i32 129, label %16
    i32 128, label %18
  ]

10:                                               ; preds = %3
  %11 = load i32, i32* @MSR_CORE_C3_RESIDENCY, align 4
  store i32 %11, i32* %8, align 4
  br label %21

12:                                               ; preds = %3
  %13 = load i32, i32* @MSR_CORE_C6_RESIDENCY, align 4
  store i32 %13, i32* %8, align 4
  br label %21

14:                                               ; preds = %3
  %15 = load i32, i32* @MSR_PKG_C3_RESIDENCY, align 4
  store i32 %15, i32* %8, align 4
  br label %21

16:                                               ; preds = %3
  %17 = load i32, i32* @MSR_PKG_C6_RESIDENCY, align 4
  store i32 %17, i32* %8, align 4
  br label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @MSR_TSC, align 4
  store i32 %19, i32* %8, align 4
  br label %21

20:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %29

21:                                               ; preds = %18, %16, %14, %12, %10
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i64*, i64** %6, align 8
  %25 = call i64 @read_msr(i32 %22, i32 %23, i64* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 -1, i32* %4, align 4
  br label %29

28:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %28, %27, %20
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i64 @read_msr(i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
