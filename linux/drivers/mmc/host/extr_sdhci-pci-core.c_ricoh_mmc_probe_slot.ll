; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-pci-core.c_ricoh_mmc_probe_slot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-pci-core.c_ricoh_mmc_probe_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_pci_slot = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SDHCI_TIMEOUT_CLK_SHIFT = common dso_local global i32 0, align 4
@SDHCI_TIMEOUT_CLK_MASK = common dso_local global i32 0, align 4
@SDHCI_CLOCK_BASE_SHIFT = common dso_local global i32 0, align 4
@SDHCI_CLOCK_BASE_MASK = common dso_local global i32 0, align 4
@SDHCI_TIMEOUT_CLK_UNIT = common dso_local global i32 0, align 4
@SDHCI_CAN_VDD_330 = common dso_local global i32 0, align 4
@SDHCI_CAN_DO_HISPD = common dso_local global i32 0, align 4
@SDHCI_CAN_DO_SDMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdhci_pci_slot*)* @ricoh_mmc_probe_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ricoh_mmc_probe_slot(%struct.sdhci_pci_slot* %0) #0 {
  %2 = alloca %struct.sdhci_pci_slot*, align 8
  store %struct.sdhci_pci_slot* %0, %struct.sdhci_pci_slot** %2, align 8
  %3 = load i32, i32* @SDHCI_TIMEOUT_CLK_SHIFT, align 4
  %4 = shl i32 33, %3
  %5 = load i32, i32* @SDHCI_TIMEOUT_CLK_MASK, align 4
  %6 = and i32 %4, %5
  %7 = load i32, i32* @SDHCI_CLOCK_BASE_SHIFT, align 4
  %8 = shl i32 33, %7
  %9 = load i32, i32* @SDHCI_CLOCK_BASE_MASK, align 4
  %10 = and i32 %8, %9
  %11 = or i32 %6, %10
  %12 = load i32, i32* @SDHCI_TIMEOUT_CLK_UNIT, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @SDHCI_CAN_VDD_330, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @SDHCI_CAN_DO_HISPD, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @SDHCI_CAN_DO_SDMA, align 4
  %19 = or i32 %17, %18
  %20 = load %struct.sdhci_pci_slot*, %struct.sdhci_pci_slot** %2, align 8
  %21 = getelementptr inbounds %struct.sdhci_pci_slot, %struct.sdhci_pci_slot* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 %19, i32* %23, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
