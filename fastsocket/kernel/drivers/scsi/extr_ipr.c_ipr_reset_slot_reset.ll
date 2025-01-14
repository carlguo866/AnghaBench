; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_reset_slot_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_reset_slot_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipr_cmnd = type { i32, %struct.ipr_ioa_cfg* }
%struct.ipr_ioa_cfg = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@ENTER = common dso_local global i32 0, align 4
@pcie_warm_reset = common dso_local global i32 0, align 4
@ipr_reset_slot_reset_done = common dso_local global i32 0, align 4
@IPR_PCI_RESET_TIMEOUT = common dso_local global i32 0, align 4
@LEAVE = common dso_local global i32 0, align 4
@IPR_RC_JOB_RETURN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipr_cmnd*)* @ipr_reset_slot_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipr_reset_slot_reset(%struct.ipr_cmnd* %0) #0 {
  %2 = alloca %struct.ipr_cmnd*, align 8
  %3 = alloca %struct.ipr_ioa_cfg*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  store %struct.ipr_cmnd* %0, %struct.ipr_cmnd** %2, align 8
  %5 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %6 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %5, i32 0, i32 1
  %7 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %6, align 8
  store %struct.ipr_ioa_cfg* %7, %struct.ipr_ioa_cfg** %3, align 8
  %8 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %9 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %8, i32 0, i32 0
  %10 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  store %struct.pci_dev* %10, %struct.pci_dev** %4, align 8
  %11 = load i32, i32* @ENTER, align 4
  %12 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %13 = load i32, i32* @pcie_warm_reset, align 4
  %14 = call i32 @pci_set_pcie_reset_state(%struct.pci_dev* %12, i32 %13)
  %15 = load i32, i32* @ipr_reset_slot_reset_done, align 4
  %16 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %17 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %19 = load i32, i32* @IPR_PCI_RESET_TIMEOUT, align 4
  %20 = call i32 @ipr_reset_start_timer(%struct.ipr_cmnd* %18, i32 %19)
  %21 = load i32, i32* @LEAVE, align 4
  %22 = load i32, i32* @IPR_RC_JOB_RETURN, align 4
  ret i32 %22
}

declare dso_local i32 @pci_set_pcie_reset_state(%struct.pci_dev*, i32) #1

declare dso_local i32 @ipr_reset_start_timer(%struct.ipr_cmnd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
