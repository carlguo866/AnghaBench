; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_nvme.c_lpfc_nvme_delete_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_nvme.c_lpfc_nvme_delete_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_fc_local_port = type { i64 }
%struct.lpfc_nvme_lport = type { %struct.lpfc_vport* }
%struct.lpfc_vport = type { i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@LOG_NVME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"6001 ENTER.  lpfc_pnvme x%px, qidx x%x qhandle x%px\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_fc_local_port*, i32, i8*)* @lpfc_nvme_delete_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_nvme_delete_queue(%struct.nvme_fc_local_port* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.nvme_fc_local_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.lpfc_nvme_lport*, align 8
  %8 = alloca %struct.lpfc_vport*, align 8
  store %struct.nvme_fc_local_port* %0, %struct.nvme_fc_local_port** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load %struct.nvme_fc_local_port*, %struct.nvme_fc_local_port** %4, align 8
  %10 = getelementptr inbounds %struct.nvme_fc_local_port, %struct.nvme_fc_local_port* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %31

14:                                               ; preds = %3
  %15 = load %struct.nvme_fc_local_port*, %struct.nvme_fc_local_port** %4, align 8
  %16 = getelementptr inbounds %struct.nvme_fc_local_port, %struct.nvme_fc_local_port* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.lpfc_nvme_lport*
  store %struct.lpfc_nvme_lport* %18, %struct.lpfc_nvme_lport** %7, align 8
  %19 = load %struct.lpfc_nvme_lport*, %struct.lpfc_nvme_lport** %7, align 8
  %20 = getelementptr inbounds %struct.lpfc_nvme_lport, %struct.lpfc_nvme_lport* %19, i32 0, i32 0
  %21 = load %struct.lpfc_vport*, %struct.lpfc_vport** %20, align 8
  store %struct.lpfc_vport* %21, %struct.lpfc_vport** %8, align 8
  %22 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %23 = load i32, i32* @KERN_INFO, align 4
  %24 = load i32, i32* @LOG_NVME, align 4
  %25 = load %struct.lpfc_nvme_lport*, %struct.lpfc_nvme_lport** %7, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %22, i32 %23, i32 %24, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), %struct.lpfc_nvme_lport* %25, i32 %26, i8* %27)
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @kfree(i8* %29)
  br label %31

31:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, %struct.lpfc_nvme_lport*, i32, i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
