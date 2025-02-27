; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_smu8_smumgr.c_smu8_smu_construct_toc_for_clock_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_smu8_smumgr.c_smu8_smu_construct_toc_for_clock_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.smu8_smumgr* }
%struct.smu8_smumgr = type { i32, i32 }

@SMU8_SCRATCH_ENTRY_SMU8_FUSION_CLKTABLE = common dso_local global i32 0, align 4
@TASK_TYPE_INITIALIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @smu8_smu_construct_toc_for_clock_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu8_smu_construct_toc_for_clock_table(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca %struct.smu8_smumgr*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %4 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %5 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %4, i32 0, i32 0
  %6 = load %struct.smu8_smumgr*, %struct.smu8_smumgr** %5, align 8
  store %struct.smu8_smumgr* %6, %struct.smu8_smumgr** %3, align 8
  %7 = load %struct.smu8_smumgr*, %struct.smu8_smumgr** %3, align 8
  %8 = getelementptr inbounds %struct.smu8_smumgr, %struct.smu8_smumgr* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.smu8_smumgr*, %struct.smu8_smumgr** %3, align 8
  %11 = getelementptr inbounds %struct.smu8_smumgr, %struct.smu8_smumgr* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 4
  %12 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %13 = load i32, i32* @SMU8_SCRATCH_ENTRY_SMU8_FUSION_CLKTABLE, align 4
  %14 = load i32, i32* @TASK_TYPE_INITIALIZE, align 4
  %15 = call i32 @smu8_smu_populate_single_scratch_task(%struct.pp_hwmgr* %12, i32 %13, i32 %14, i32 1)
  ret i32 0
}

declare dso_local i32 @smu8_smu_populate_single_scratch_task(%struct.pp_hwmgr*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
