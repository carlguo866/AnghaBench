; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_pci.c_ath10k_pci_hif_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_pci.c_ath10k_pci_hif_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_pci = type { i32, i32 }

@ATH10K_DBG_BOOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"boot hif start\0A\00", align 1
@PCI_EXP_LNKCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*)* @ath10k_pci_hif_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_pci_hif_start(%struct.ath10k* %0) #0 {
  %2 = alloca %struct.ath10k*, align 8
  %3 = alloca %struct.ath10k_pci*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %2, align 8
  %4 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %5 = call %struct.ath10k_pci* @ath10k_pci_priv(%struct.ath10k* %4)
  store %struct.ath10k_pci* %5, %struct.ath10k_pci** %3, align 8
  %6 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %7 = load i32, i32* @ATH10K_DBG_BOOT, align 4
  %8 = call i32 @ath10k_dbg(%struct.ath10k* %6, i32 %7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %10 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %9, i32 0, i32 0
  %11 = call i32 @napi_enable(i32* %10)
  %12 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %13 = call i32 @ath10k_pci_irq_enable(%struct.ath10k* %12)
  %14 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %15 = call i32 @ath10k_pci_rx_post(%struct.ath10k* %14)
  %16 = load %struct.ath10k_pci*, %struct.ath10k_pci** %3, align 8
  %17 = getelementptr inbounds %struct.ath10k_pci, %struct.ath10k_pci* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @PCI_EXP_LNKCTL, align 4
  %20 = load %struct.ath10k_pci*, %struct.ath10k_pci** %3, align 8
  %21 = getelementptr inbounds %struct.ath10k_pci, %struct.ath10k_pci* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @pcie_capability_write_word(i32 %18, i32 %19, i32 %22)
  ret i32 0
}

declare dso_local %struct.ath10k_pci* @ath10k_pci_priv(%struct.ath10k*) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @ath10k_pci_irq_enable(%struct.ath10k*) #1

declare dso_local i32 @ath10k_pci_rx_post(%struct.ath10k*) #1

declare dso_local i32 @pcie_capability_write_word(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
