; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_base.c_mpt3sas_base_get_sense_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_base.c_mpt3sas_base_get_sense_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPT3SAS_ADAPTER = type { i64 }

@SCSI_SENSE_BUFFERSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mpt3sas_base_get_sense_buffer(%struct.MPT3SAS_ADAPTER* %0, i32 %1) #0 {
  %3 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  %4 = alloca i32, align 4
  store %struct.MPT3SAS_ADAPTER* %0, %struct.MPT3SAS_ADAPTER** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %6 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = sub nsw i32 %8, 1
  %10 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %11 = mul nsw i32 %9, %10
  %12 = sext i32 %11 to i64
  %13 = add nsw i64 %7, %12
  %14 = inttoptr i64 %13 to i8*
  ret i8* %14
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
