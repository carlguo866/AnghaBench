; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_smu7_smumgr.c_smu7_send_msg_to_smc_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_smu7_smumgr.c_smu7_send_msg_to_smc_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32 }

@mmSMC_MSG_ARG_0 = common dso_local global i32 0, align 4
@mmSMC_MESSAGE_0 = common dso_local global i32 0, align 4
@PPSMC_MSG_Test = common dso_local global i32 0, align 4
@SMC_RESP_0 = common dso_local global i32 0, align 4
@SMC_RESP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Failed to send Message.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smu7_send_msg_to_smc_offset(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %3 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %4 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @mmSMC_MSG_ARG_0, align 4
  %7 = call i32 @cgs_write_register(i32 %5, i32 %6, i32 131072)
  %8 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %9 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @mmSMC_MESSAGE_0, align 4
  %12 = load i32, i32* @PPSMC_MSG_Test, align 4
  %13 = call i32 @cgs_write_register(i32 %10, i32 %11, i32 %12)
  %14 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %15 = load i32, i32* @SMC_RESP_0, align 4
  %16 = load i32, i32* @SMC_RESP, align 4
  %17 = call i32 @PHM_WAIT_FIELD_UNEQUAL(%struct.pp_hwmgr* %14, i32 %15, i32 %16, i32 0)
  %18 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %19 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @SMC_RESP_0, align 4
  %22 = load i32, i32* @SMC_RESP, align 4
  %23 = call i32 @PHM_READ_FIELD(i32 %20, i32 %21, i32 %22)
  %24 = icmp ne i32 1, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = call i32 @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %1
  ret i32 0
}

declare dso_local i32 @cgs_write_register(i32, i32, i32) #1

declare dso_local i32 @PHM_WAIT_FIELD_UNEQUAL(%struct.pp_hwmgr*, i32, i32, i32) #1

declare dso_local i32 @PHM_READ_FIELD(i32, i32, i32) #1

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
