; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_debug_issue_ssp_tmf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_debug_issue_ssp_tmf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.domain_device = type { i32 }
%struct.hisi_sas_tmf_task = type { i32 }
%struct.sas_ssp_task = type { i32 }

@SAS_PROTOCOL_SSP = common dso_local global i32 0, align 4
@TMF_RESP_FUNC_ESUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.domain_device*, i32*, %struct.hisi_sas_tmf_task*)* @hisi_sas_debug_issue_ssp_tmf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hisi_sas_debug_issue_ssp_tmf(%struct.domain_device* %0, i32* %1, %struct.hisi_sas_tmf_task* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.domain_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.hisi_sas_tmf_task*, align 8
  %8 = alloca %struct.sas_ssp_task, align 4
  store %struct.domain_device* %0, %struct.domain_device** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.hisi_sas_tmf_task* %2, %struct.hisi_sas_tmf_task** %7, align 8
  %9 = load %struct.domain_device*, %struct.domain_device** %5, align 8
  %10 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @SAS_PROTOCOL_SSP, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @TMF_RESP_FUNC_ESUPP, align 4
  store i32 %16, i32* %4, align 4
  br label %25

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.sas_ssp_task, %struct.sas_ssp_task* %8, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @memcpy(i32 %19, i32* %20, i32 8)
  %22 = load %struct.domain_device*, %struct.domain_device** %5, align 8
  %23 = load %struct.hisi_sas_tmf_task*, %struct.hisi_sas_tmf_task** %7, align 8
  %24 = call i32 @hisi_sas_exec_internal_tmf_task(%struct.domain_device* %22, %struct.sas_ssp_task* %8, i32 4, %struct.hisi_sas_tmf_task* %23)
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %17, %15
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @hisi_sas_exec_internal_tmf_task(%struct.domain_device*, %struct.sas_ssp_task*, i32, %struct.hisi_sas_tmf_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
