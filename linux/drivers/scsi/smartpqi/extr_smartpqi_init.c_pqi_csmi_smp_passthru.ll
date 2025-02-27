; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_csmi_smp_passthru.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_csmi_smp_passthru.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_ctrl_info = type { i32 }
%struct.bmic_csmi_smp_passthru_buffer = type { i32 }
%struct.pqi_raid_error_info = type { i32 }

@BMIC_CSMI_PASSTHRU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pqi_csmi_smp_passthru(%struct.pqi_ctrl_info* %0, %struct.bmic_csmi_smp_passthru_buffer* %1, i64 %2, %struct.pqi_raid_error_info* %3) #0 {
  %5 = alloca %struct.pqi_ctrl_info*, align 8
  %6 = alloca %struct.bmic_csmi_smp_passthru_buffer*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.pqi_raid_error_info*, align 8
  store %struct.pqi_ctrl_info* %0, %struct.pqi_ctrl_info** %5, align 8
  store %struct.bmic_csmi_smp_passthru_buffer* %1, %struct.bmic_csmi_smp_passthru_buffer** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.pqi_raid_error_info* %3, %struct.pqi_raid_error_info** %8, align 8
  %9 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %5, align 8
  %10 = load i32, i32* @BMIC_CSMI_PASSTHRU, align 4
  %11 = load %struct.bmic_csmi_smp_passthru_buffer*, %struct.bmic_csmi_smp_passthru_buffer** %6, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load %struct.pqi_raid_error_info*, %struct.pqi_raid_error_info** %8, align 8
  %14 = call i32 @pqi_send_ctrl_raid_with_error(%struct.pqi_ctrl_info* %9, i32 %10, %struct.bmic_csmi_smp_passthru_buffer* %11, i64 %12, %struct.pqi_raid_error_info* %13)
  ret i32 %14
}

declare dso_local i32 @pqi_send_ctrl_raid_with_error(%struct.pqi_ctrl_info*, i32, %struct.bmic_csmi_smp_passthru_buffer*, i64, %struct.pqi_raid_error_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
