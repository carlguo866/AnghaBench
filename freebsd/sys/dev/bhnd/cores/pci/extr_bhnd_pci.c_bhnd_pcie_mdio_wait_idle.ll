; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/pci/extr_bhnd_pci.c_bhnd_pcie_mdio_wait_idle.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/pci/extr_bhnd_pci.c_bhnd_pcie_mdio_wait_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_pci_softc = type { i32 }

@BHND_PCIE_MDIO_RETRY_COUNT = common dso_local global i32 0, align 4
@BHND_PCIE_MDIO_CTL = common dso_local global i32 0, align 4
@BHND_PCIE_MDIOCTL_DONE = common dso_local global i32 0, align 4
@BHND_PCIE_MDIO_RETRY_DELAY = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bhnd_pci_softc*)* @bhnd_pcie_mdio_wait_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhnd_pcie_mdio_wait_idle(%struct.bhnd_pci_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bhnd_pci_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bhnd_pci_softc* %0, %struct.bhnd_pci_softc** %3, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %22, %1
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @BHND_PCIE_MDIO_RETRY_COUNT, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %25

10:                                               ; preds = %6
  %11 = load %struct.bhnd_pci_softc*, %struct.bhnd_pci_softc** %3, align 8
  %12 = load i32, i32* @BHND_PCIE_MDIO_CTL, align 4
  %13 = call i32 @BHND_PCI_READ_4(%struct.bhnd_pci_softc* %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @BHND_PCIE_MDIOCTL_DONE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %27

19:                                               ; preds = %10
  %20 = load i32, i32* @BHND_PCIE_MDIO_RETRY_DELAY, align 4
  %21 = call i32 @DELAY(i32 %20)
  br label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %5, align 4
  br label %6

25:                                               ; preds = %6
  %26 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %25, %18
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @BHND_PCI_READ_4(%struct.bhnd_pci_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
