; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_perf.c_scmi_perf_fc_size_is_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_perf.c_scmi_perf_fc_size_is_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PERF_LEVEL_GET = common dso_local global i64 0, align 8
@PERF_LEVEL_SET = common dso_local global i64 0, align 8
@PERF_LIMITS_GET = common dso_local global i64 0, align 8
@PERF_LIMITS_SET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @scmi_perf_fc_size_is_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scmi_perf_fc_size_is_valid(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* @PERF_LEVEL_GET, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @PERF_LEVEL_SET, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %9, %2
  %14 = load i64, i64* %5, align 8
  %15 = icmp eq i64 %14, 4
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 1, i32* %3, align 4
  br label %30

17:                                               ; preds = %13, %9
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* @PERF_LIMITS_GET, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* @PERF_LIMITS_SET, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %21, %17
  %26 = load i64, i64* %5, align 8
  %27 = icmp eq i64 %26, 8
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 1, i32* %3, align 4
  br label %30

29:                                               ; preds = %25, %21
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %29, %28, %16
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
