; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_hardwaremanager.c_phm_disable_smc_firmware_ctf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_hardwaremanager.c_phm_disable_smc_firmware_ctf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @phm_disable_smc_firmware_ctf(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pp_hwmgr*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  %4 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %5 = call i32 @PHM_FUNC_CHECK(%struct.pp_hwmgr* %4)
  %6 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %7 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = bitcast {}** %9 to i32 (%struct.pp_hwmgr*)**
  %11 = load i32 (%struct.pp_hwmgr*)*, i32 (%struct.pp_hwmgr*)** %10, align 8
  %12 = icmp eq i32 (%struct.pp_hwmgr*)* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %25

16:                                               ; preds = %1
  %17 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %18 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = bitcast {}** %20 to i32 (%struct.pp_hwmgr*)**
  %22 = load i32 (%struct.pp_hwmgr*)*, i32 (%struct.pp_hwmgr*)** %21, align 8
  %23 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %24 = call i32 %22(%struct.pp_hwmgr* %23)
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %16, %13
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @PHM_FUNC_CHECK(%struct.pp_hwmgr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
