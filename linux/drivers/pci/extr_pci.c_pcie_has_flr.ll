; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pcie_has_flr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pcie_has_flr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@PCI_DEV_FLAGS_NO_FLR_RESET = common dso_local global i32 0, align 4
@PCI_EXP_DEVCAP = common dso_local global i32 0, align 4
@PCI_EXP_DEVCAP_FLR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcie_has_flr(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %6 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @PCI_DEV_FLAGS_NO_FLR_RESET, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %19

12:                                               ; preds = %1
  %13 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %14 = load i32, i32* @PCI_EXP_DEVCAP, align 4
  %15 = call i32 @pcie_capability_read_dword(%struct.pci_dev* %13, i32 %14, i32* %4)
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @PCI_EXP_DEVCAP_FLR, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %2, align 4
  br label %19

19:                                               ; preds = %12, %11
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local i32 @pcie_capability_read_dword(%struct.pci_dev*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
