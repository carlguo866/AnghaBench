; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_probe.c_pci_enable_crs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_probe.c_pci_enable_crs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@PCI_EXP_RTCAP = common dso_local global i32 0, align 4
@PCI_EXP_RTCAP_CRSVIS = common dso_local global i32 0, align 4
@PCI_EXP_RTCTL = common dso_local global i32 0, align 4
@PCI_EXP_RTCTL_CRSSVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @pci_enable_crs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_enable_crs(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = load i32, i32* @PCI_EXP_RTCAP, align 4
  %6 = call i32 @pcie_capability_read_word(%struct.pci_dev* %4, i32 %5, i32* %3)
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @PCI_EXP_RTCAP_CRSVIS, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %13 = load i32, i32* @PCI_EXP_RTCTL, align 4
  %14 = load i32, i32* @PCI_EXP_RTCTL_CRSSVE, align 4
  %15 = call i32 @pcie_capability_set_word(%struct.pci_dev* %12, i32 %13, i32 %14)
  br label %16

16:                                               ; preds = %11, %1
  ret void
}

declare dso_local i32 @pcie_capability_read_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pcie_capability_set_word(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
