; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_get_socclocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_get_socclocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64 }
%struct.pp_clock_levels_with_latency = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64 }
%struct.phm_ppt_v2_information = type { %struct.phm_ppt_v1_clock_voltage_dependency_table* }
%struct.phm_ppt_v1_clock_voltage_dependency_table = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pp_hwmgr*, %struct.pp_clock_levels_with_latency*)* @vega10_get_socclocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vega10_get_socclocks(%struct.pp_hwmgr* %0, %struct.pp_clock_levels_with_latency* %1) #0 {
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca %struct.pp_clock_levels_with_latency*, align 8
  %5 = alloca %struct.phm_ppt_v2_information*, align 8
  %6 = alloca %struct.phm_ppt_v1_clock_voltage_dependency_table*, align 8
  %7 = alloca i64, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  store %struct.pp_clock_levels_with_latency* %1, %struct.pp_clock_levels_with_latency** %4, align 8
  %8 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %9 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.phm_ppt_v2_information*
  store %struct.phm_ppt_v2_information* %11, %struct.phm_ppt_v2_information** %5, align 8
  %12 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %5, align 8
  %13 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %12, i32 0, i32 0
  %14 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %13, align 8
  store %struct.phm_ppt_v1_clock_voltage_dependency_table* %14, %struct.phm_ppt_v1_clock_voltage_dependency_table** %6, align 8
  store i64 0, i64* %7, align 8
  br label %15

15:                                               ; preds = %46, %2
  %16 = load i64, i64* %7, align 8
  %17 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %6, align 8
  %18 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ult i64 %16, %19
  br i1 %20, label %21, label %49

21:                                               ; preds = %15
  %22 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %6, align 8
  %23 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = load i64, i64* %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = mul nsw i32 %28, 10
  %30 = load %struct.pp_clock_levels_with_latency*, %struct.pp_clock_levels_with_latency** %4, align 8
  %31 = getelementptr inbounds %struct.pp_clock_levels_with_latency, %struct.pp_clock_levels_with_latency* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = load i64, i64* %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i32 %29, i32* %35, align 8
  %36 = load %struct.pp_clock_levels_with_latency*, %struct.pp_clock_levels_with_latency** %4, align 8
  %37 = getelementptr inbounds %struct.pp_clock_levels_with_latency, %struct.pp_clock_levels_with_latency* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = load i64, i64* %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  store i64 0, i64* %41, align 8
  %42 = load %struct.pp_clock_levels_with_latency*, %struct.pp_clock_levels_with_latency** %4, align 8
  %43 = getelementptr inbounds %struct.pp_clock_levels_with_latency, %struct.pp_clock_levels_with_latency* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 8
  br label %46

46:                                               ; preds = %21
  %47 = load i64, i64* %7, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %7, align 8
  br label %15

49:                                               ; preds = %15
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
