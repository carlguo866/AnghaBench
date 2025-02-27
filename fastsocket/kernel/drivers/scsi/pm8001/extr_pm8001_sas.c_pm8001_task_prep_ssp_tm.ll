; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_sas.c_pm8001_task_prep_ssp_tm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_sas.c_pm8001_task_prep_ssp_tm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.pm8001_hba_info*, %struct.pm8001_ccb_info*, %struct.pm8001_tmf_task*)* }
%struct.pm8001_hba_info = type { i32 }
%struct.pm8001_ccb_info = type { i32 }
%struct.pm8001_tmf_task = type { i32 }

@PM8001_CHIP_DISP = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pm8001_hba_info*, %struct.pm8001_ccb_info*, %struct.pm8001_tmf_task*)* @pm8001_task_prep_ssp_tm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm8001_task_prep_ssp_tm(%struct.pm8001_hba_info* %0, %struct.pm8001_ccb_info* %1, %struct.pm8001_tmf_task* %2) #0 {
  %4 = alloca %struct.pm8001_hba_info*, align 8
  %5 = alloca %struct.pm8001_ccb_info*, align 8
  %6 = alloca %struct.pm8001_tmf_task*, align 8
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %4, align 8
  store %struct.pm8001_ccb_info* %1, %struct.pm8001_ccb_info** %5, align 8
  store %struct.pm8001_tmf_task* %2, %struct.pm8001_tmf_task** %6, align 8
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @PM8001_CHIP_DISP, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32 (%struct.pm8001_hba_info*, %struct.pm8001_ccb_info*, %struct.pm8001_tmf_task*)*, i32 (%struct.pm8001_hba_info*, %struct.pm8001_ccb_info*, %struct.pm8001_tmf_task*)** %8, align 8
  %10 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %11 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %5, align 8
  %12 = load %struct.pm8001_tmf_task*, %struct.pm8001_tmf_task** %6, align 8
  %13 = call i32 %9(%struct.pm8001_hba_info* %10, %struct.pm8001_ccb_info* %11, %struct.pm8001_tmf_task* %12)
  ret i32 %13
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
