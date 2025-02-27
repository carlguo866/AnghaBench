; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_base.c__base_get_high_iops_msix_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_base.c__base_get_high_iops_msix_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPT3SAS_ADAPTER = type { i32 }
%struct.scsi_cmnd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MPT3SAS_DEVICE_HIGH_IOPS_DEPTH = common dso_local global i64 0, align 8
@MPT3SAS_HIGH_IOPS_BATCH_COUNT = common dso_local global i32 0, align 4
@MPT3SAS_HIGH_IOPS_REPLY_QUEUES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.MPT3SAS_ADAPTER*, %struct.scsi_cmnd*)* @_base_get_high_iops_msix_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_base_get_high_iops_msix_index(%struct.MPT3SAS_ADAPTER* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  store %struct.MPT3SAS_ADAPTER* %0, %struct.MPT3SAS_ADAPTER** %4, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %5, align 8
  %6 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %7 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = call i64 @atomic_read(i32* %9)
  %11 = load i64, i64* @MPT3SAS_DEVICE_HIGH_IOPS_DEPTH, align 8
  %12 = icmp sgt i64 %10, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %15 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %14, i32 0, i32 0
  %16 = call i32 @atomic64_add_return(i32 1, i32* %15)
  %17 = load i32, i32* @MPT3SAS_HIGH_IOPS_BATCH_COUNT, align 4
  %18 = sdiv i32 %16, %17
  %19 = load i32, i32* @MPT3SAS_HIGH_IOPS_REPLY_QUEUES, align 4
  %20 = call i32 @base_mod64(i32 %18, i32 %19)
  store i32 %20, i32* %3, align 4
  br label %25

21:                                               ; preds = %2
  %22 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %23 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %24 = call i32 @_base_get_msix_index(%struct.MPT3SAS_ADAPTER* %22, %struct.scsi_cmnd* %23)
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %21, %13
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @base_mod64(i32, i32) #1

declare dso_local i32 @atomic64_add_return(i32, i32*) #1

declare dso_local i32 @_base_get_msix_index(%struct.MPT3SAS_ADAPTER*, %struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
