; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_intel_pstate.c_intel_pstate_set_update_util_hook.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_intel_pstate.c_intel_pstate_set_update_util_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpudata = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@all_cpu_data = common dso_local global %struct.cpudata** null, align 8
@hwp_active = common dso_local global i64 0, align 8
@hwp_boost = common dso_local global i32 0, align 4
@intel_pstate_update_util_hwp = common dso_local global i32 0, align 4
@intel_pstate_update_util = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @intel_pstate_set_update_util_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_pstate_set_update_util_hook(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpudata*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load %struct.cpudata**, %struct.cpudata*** @all_cpu_data, align 8
  %5 = load i32, i32* %2, align 4
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds %struct.cpudata*, %struct.cpudata** %4, i64 %6
  %8 = load %struct.cpudata*, %struct.cpudata** %7, align 8
  store %struct.cpudata* %8, %struct.cpudata** %3, align 8
  %9 = load i64, i64* @hwp_active, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load i32, i32* @hwp_boost, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  br label %39

15:                                               ; preds = %11, %1
  %16 = load %struct.cpudata*, %struct.cpudata** %3, align 8
  %17 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %39

21:                                               ; preds = %15
  %22 = load %struct.cpudata*, %struct.cpudata** %3, align 8
  %23 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  %25 = load i32, i32* %2, align 4
  %26 = load %struct.cpudata*, %struct.cpudata** %3, align 8
  %27 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %26, i32 0, i32 1
  %28 = load i64, i64* @hwp_active, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = load i32, i32* @intel_pstate_update_util_hwp, align 4
  br label %34

32:                                               ; preds = %21
  %33 = load i32, i32* @intel_pstate_update_util, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  %36 = call i32 @cpufreq_add_update_util_hook(i32 %25, i32* %27, i32 %35)
  %37 = load %struct.cpudata*, %struct.cpudata** %3, align 8
  %38 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %37, i32 0, i32 0
  store i32 1, i32* %38, align 8
  br label %39

39:                                               ; preds = %34, %20, %14
  ret void
}

declare dso_local i32 @cpufreq_add_update_util_hook(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
