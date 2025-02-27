; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_io_error_detected_s4.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_io_error_detected_s4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.Scsi_Host = type { i64 }
%struct.lpfc_hba = type { i32 }
%struct.lpfc_vport = type { %struct.lpfc_hba* }

@PCI_ERS_RESULT_CAN_RECOVER = common dso_local global i32 0, align 4
@PCI_ERS_RESULT_NEED_RESET = common dso_local global i32 0, align 4
@PCI_ERS_RESULT_DISCONNECT = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"2825 Unknown PCI error state: x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32)* @lpfc_io_error_detected_s4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_io_error_detected_s4(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca %struct.lpfc_hba*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %9 = call %struct.Scsi_Host* @pci_get_drvdata(%struct.pci_dev* %8)
  store %struct.Scsi_Host* %9, %struct.Scsi_Host** %6, align 8
  %10 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %11 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.lpfc_vport*
  %14 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %13, i32 0, i32 0
  %15 = load %struct.lpfc_hba*, %struct.lpfc_hba** %14, align 8
  store %struct.lpfc_hba* %15, %struct.lpfc_hba** %7, align 8
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %29 [
    i32 129, label %17
    i32 130, label %21
    i32 128, label %25
  ]

17:                                               ; preds = %2
  %18 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %19 = call i32 @lpfc_sli4_prep_dev_for_recover(%struct.lpfc_hba* %18)
  %20 = load i32, i32* @PCI_ERS_RESULT_CAN_RECOVER, align 4
  store i32 %20, i32* %3, align 4
  br label %38

21:                                               ; preds = %2
  %22 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %23 = call i32 @lpfc_sli4_prep_dev_for_reset(%struct.lpfc_hba* %22)
  %24 = load i32, i32* @PCI_ERS_RESULT_NEED_RESET, align 4
  store i32 %24, i32* %3, align 4
  br label %38

25:                                               ; preds = %2
  %26 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %27 = call i32 @lpfc_sli4_prep_dev_for_perm_failure(%struct.lpfc_hba* %26)
  %28 = load i32, i32* @PCI_ERS_RESULT_DISCONNECT, align 4
  store i32 %28, i32* %3, align 4
  br label %38

29:                                               ; preds = %2
  %30 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %31 = load i32, i32* @KERN_ERR, align 4
  %32 = load i32, i32* @LOG_INIT, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %30, i32 %31, i32 %32, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %36 = call i32 @lpfc_sli4_prep_dev_for_reset(%struct.lpfc_hba* %35)
  %37 = load i32, i32* @PCI_ERS_RESULT_NEED_RESET, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %29, %25, %21, %17
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.Scsi_Host* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @lpfc_sli4_prep_dev_for_recover(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_sli4_prep_dev_for_reset(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_sli4_prep_dev_for_perm_failure(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
