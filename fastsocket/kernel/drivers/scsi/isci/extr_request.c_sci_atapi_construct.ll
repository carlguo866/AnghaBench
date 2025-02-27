; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_request.c_sci_atapi_construct.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_request.c_sci_atapi_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_request = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, %struct.host_to_dev_fis }
%struct.TYPE_3__ = type { i64 }
%struct.host_to_dev_fis = type { i32 }
%struct.sas_task = type { i64, i64 }

@ATAPI_PKT_DMA = common dso_local global i32 0, align 4
@DMA_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isci_request*)* @sci_atapi_construct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sci_atapi_construct(%struct.isci_request* %0) #0 {
  %2 = alloca %struct.isci_request*, align 8
  %3 = alloca %struct.host_to_dev_fis*, align 8
  %4 = alloca %struct.sas_task*, align 8
  store %struct.isci_request* %0, %struct.isci_request** %2, align 8
  %5 = load %struct.isci_request*, %struct.isci_request** %2, align 8
  %6 = getelementptr inbounds %struct.isci_request, %struct.isci_request* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  store %struct.host_to_dev_fis* %7, %struct.host_to_dev_fis** %3, align 8
  %8 = load i32, i32* @ATAPI_PKT_DMA, align 4
  %9 = load %struct.host_to_dev_fis*, %struct.host_to_dev_fis** %3, align 8
  %10 = getelementptr inbounds %struct.host_to_dev_fis, %struct.host_to_dev_fis* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = or i32 %11, %8
  store i32 %12, i32* %10, align 4
  %13 = load %struct.isci_request*, %struct.isci_request** %2, align 8
  %14 = call i32 @scu_stp_raw_request_construct_task_context(%struct.isci_request* %13)
  %15 = load %struct.isci_request*, %struct.isci_request** %2, align 8
  %16 = call %struct.sas_task* @isci_request_access_task(%struct.isci_request* %15)
  store %struct.sas_task* %16, %struct.sas_task** %4, align 8
  %17 = load %struct.sas_task*, %struct.sas_task** %4, align 8
  %18 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @DMA_NONE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load %struct.sas_task*, %struct.sas_task** %4, align 8
  %24 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %23, i32 0, i32 1
  store i64 0, i64* %24, align 8
  br label %25

25:                                               ; preds = %22, %1
  %26 = load %struct.isci_request*, %struct.isci_request** %2, align 8
  %27 = getelementptr inbounds %struct.isci_request, %struct.isci_request* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  ret void
}

declare dso_local i32 @scu_stp_raw_request_construct_task_context(%struct.isci_request*) #1

declare dso_local %struct.sas_task* @isci_request_access_task(%struct.isci_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
