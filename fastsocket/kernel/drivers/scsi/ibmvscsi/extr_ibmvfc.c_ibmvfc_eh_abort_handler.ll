; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_eh_abort_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_eh_abort_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.scsi_device* }
%struct.scsi_device = type { i32 }
%struct.ibmvfc_host = type { i32 }

@FAILED = common dso_local global i32 0, align 4
@ENTER = common dso_local global i32 0, align 4
@IBMVFC_TMF_ABORT_TASK_SET = common dso_local global i32 0, align 4
@ibmvfc_match_lun = common dso_local global i32 0, align 4
@LEAVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @ibmvfc_eh_abort_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmvfc_eh_abort_handler(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca %struct.scsi_cmnd*, align 8
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.ibmvfc_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %2, align 8
  %8 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %9 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %8, i32 0, i32 0
  %10 = load %struct.scsi_device*, %struct.scsi_device** %9, align 8
  store %struct.scsi_device* %10, %struct.scsi_device** %3, align 8
  %11 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %12 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.ibmvfc_host* @shost_priv(i32 %13)
  store %struct.ibmvfc_host* %14, %struct.ibmvfc_host** %4, align 8
  %15 = load i32, i32* @FAILED, align 4
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* @ENTER, align 4
  %17 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %18 = call i32 @fc_block_scsi_eh(%struct.scsi_cmnd* %17)
  %19 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %20 = call i32 @ibmvfc_wait_while_resetting(%struct.ibmvfc_host* %19)
  %21 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %22 = load i32, i32* @IBMVFC_TMF_ABORT_TASK_SET, align 4
  %23 = call i32 @ibmvfc_cancel_all(%struct.scsi_device* %21, i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %25 = call i32 @ibmvfc_abort_task_set(%struct.scsi_device* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %1
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %28
  %32 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %33 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %34 = load i32, i32* @ibmvfc_match_lun, align 4
  %35 = call i32 @ibmvfc_wait_for_ops(%struct.ibmvfc_host* %32, %struct.scsi_device* %33, i32 %34)
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %31, %28, %1
  %37 = load i32, i32* @LEAVE, align 4
  %38 = load i32, i32* %7, align 4
  ret i32 %38
}

declare dso_local %struct.ibmvfc_host* @shost_priv(i32) #1

declare dso_local i32 @fc_block_scsi_eh(%struct.scsi_cmnd*) #1

declare dso_local i32 @ibmvfc_wait_while_resetting(%struct.ibmvfc_host*) #1

declare dso_local i32 @ibmvfc_cancel_all(%struct.scsi_device*, i32) #1

declare dso_local i32 @ibmvfc_abort_task_set(%struct.scsi_device*) #1

declare dso_local i32 @ibmvfc_wait_for_ops(%struct.ibmvfc_host*, %struct.scsi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
