; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mpt2sas/extr_mpt2sas_ctl.c__ctl_ioc_reply_queue_count_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mpt2sas/extr_mpt2sas_ctl.c__ctl_ioc_reply_queue_count_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.MPT2SAS_ADAPTER = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MPI2_IOCFACTS_CAPABILITY_MSI_X_INDEX = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @_ctl_ioc_reply_queue_count_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_ctl_ioc_reply_queue_count_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.Scsi_Host*, align 8
  %9 = alloca %struct.MPT2SAS_ADAPTER*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.Scsi_Host* @class_to_shost(%struct.device* %10)
  store %struct.Scsi_Host* %11, %struct.Scsi_Host** %8, align 8
  %12 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %13 = call %struct.MPT2SAS_ADAPTER* @shost_priv(%struct.Scsi_Host* %12)
  store %struct.MPT2SAS_ADAPTER* %13, %struct.MPT2SAS_ADAPTER** %9, align 8
  %14 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %9, align 8
  %15 = getelementptr inbounds %struct.MPT2SAS_ADAPTER, %struct.MPT2SAS_ADAPTER* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @MPI2_IOCFACTS_CAPABILITY_MSI_X_INDEX, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %3
  %22 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %9, align 8
  %23 = getelementptr inbounds %struct.MPT2SAS_ADAPTER, %struct.MPT2SAS_ADAPTER* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %9, align 8
  %28 = getelementptr inbounds %struct.MPT2SAS_ADAPTER, %struct.MPT2SAS_ADAPTER* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %7, align 4
  br label %31

30:                                               ; preds = %21, %3
  store i32 1, i32* %7, align 4
  br label %31

31:                                               ; preds = %30, %26
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* @PAGE_SIZE, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @snprintf(i8* %32, i32 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %34)
  ret i32 %35
}

declare dso_local %struct.Scsi_Host* @class_to_shost(%struct.device*) #1

declare dso_local %struct.MPT2SAS_ADAPTER* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
