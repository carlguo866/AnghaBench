; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_request.c_sci_io_request_construct_basic_sata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_request.c_sci_io_request_construct_basic_sata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_request = type { i32, i32 }
%struct.sas_task = type { i64, i32 }

@SAS_PROTOCOL_STP = common dso_local global i32 0, align 4
@DMA_NONE = common dso_local global i64 0, align 8
@SCI_SUCCESS = common dso_local global i32 0, align 4
@SCI_REQ_CONSTRUCTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isci_request*)* @sci_io_request_construct_basic_sata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sci_io_request_construct_basic_sata(%struct.isci_request* %0) #0 {
  %2 = alloca %struct.isci_request*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.sas_task*, align 8
  store %struct.isci_request* %0, %struct.isci_request** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.isci_request*, %struct.isci_request** %2, align 8
  %7 = call %struct.sas_task* @isci_request_access_task(%struct.isci_request* %6)
  store %struct.sas_task* %7, %struct.sas_task** %5, align 8
  %8 = load i32, i32* @SAS_PROTOCOL_STP, align 4
  %9 = load %struct.isci_request*, %struct.isci_request** %2, align 8
  %10 = getelementptr inbounds %struct.isci_request, %struct.isci_request* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 4
  %11 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %12 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @DMA_NONE, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 0, i32 1
  store i32 %17, i32* %4, align 4
  %18 = load %struct.isci_request*, %struct.isci_request** %2, align 8
  %19 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %20 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %23 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @sci_io_request_construct_sata(%struct.isci_request* %18, i32 %21, i64 %24, i32 %25)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @SCI_SUCCESS, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %1
  %31 = load %struct.isci_request*, %struct.isci_request** %2, align 8
  %32 = getelementptr inbounds %struct.isci_request, %struct.isci_request* %31, i32 0, i32 0
  %33 = load i32, i32* @SCI_REQ_CONSTRUCTED, align 4
  %34 = call i32 @sci_change_state(i32* %32, i32 %33)
  br label %35

35:                                               ; preds = %30, %1
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local %struct.sas_task* @isci_request_access_task(%struct.isci_request*) #1

declare dso_local i32 @sci_io_request_construct_sata(%struct.isci_request*, i32, i64, i32) #1

declare dso_local i32 @sci_change_state(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
