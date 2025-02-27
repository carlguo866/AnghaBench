; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_complete_dependency_tables.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_complete_dependency_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.vega10_hwmgr*, i64 }
%struct.vega10_hwmgr = type { i32 }
%struct.phm_ppt_v2_information = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @vega10_complete_dependency_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega10_complete_dependency_tables(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.phm_ppt_v2_information*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %7 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.phm_ppt_v2_information*
  store %struct.phm_ppt_v2_information* %9, %struct.phm_ppt_v2_information** %5, align 8
  %10 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %11 = call i32 @vega10_patch_voltage_dependency_tables_with_lookup_table(%struct.pp_hwmgr* %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %3, align 4
  br label %16

16:                                               ; preds = %14, %1
  %17 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %18 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %5, align 8
  %19 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @vega10_sort_lookup_table(%struct.pp_hwmgr* %17, i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %24, %16
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @vega10_patch_voltage_dependency_tables_with_lookup_table(%struct.pp_hwmgr*) #1

declare dso_local i32 @vega10_sort_lookup_table(%struct.pp_hwmgr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
