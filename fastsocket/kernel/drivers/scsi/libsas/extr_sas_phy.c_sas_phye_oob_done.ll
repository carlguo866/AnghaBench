; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_phy.c_sas_phye_oob_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_phy.c_sas_phye_oob_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_struct = type { i32 }
%struct.asd_sas_event = type { %struct.asd_sas_phy* }
%struct.asd_sas_phy = type { i64, i32 }

@PHYE_OOB_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @sas_phye_oob_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sas_phye_oob_done(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca %struct.asd_sas_event*, align 8
  %4 = alloca %struct.asd_sas_phy*, align 8
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  %5 = load %struct.work_struct*, %struct.work_struct** %2, align 8
  %6 = call %struct.asd_sas_event* @to_asd_sas_event(%struct.work_struct* %5)
  store %struct.asd_sas_event* %6, %struct.asd_sas_event** %3, align 8
  %7 = load %struct.asd_sas_event*, %struct.asd_sas_event** %3, align 8
  %8 = getelementptr inbounds %struct.asd_sas_event, %struct.asd_sas_event* %7, i32 0, i32 0
  %9 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %8, align 8
  store %struct.asd_sas_phy* %9, %struct.asd_sas_phy** %4, align 8
  %10 = load i32, i32* @PHYE_OOB_DONE, align 4
  %11 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %4, align 8
  %12 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %11, i32 0, i32 1
  %13 = call i32 @clear_bit(i32 %10, i32* %12)
  %14 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %4, align 8
  %15 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %14, i32 0, i32 0
  store i64 0, i64* %15, align 8
  ret void
}

declare dso_local %struct.asd_sas_event* @to_asd_sas_event(%struct.work_struct*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
