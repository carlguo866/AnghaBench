; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_pci.c_ath10k_pci_htt_rx_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_pci.c_ath10k_pci_htt_rx_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_ce_pipe = type { i32 }

@ath10k_pci_htt_rx_deliver = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k_ce_pipe*)* @ath10k_pci_htt_rx_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_pci_htt_rx_cb(%struct.ath10k_ce_pipe* %0) #0 {
  %2 = alloca %struct.ath10k_ce_pipe*, align 8
  store %struct.ath10k_ce_pipe* %0, %struct.ath10k_ce_pipe** %2, align 8
  %3 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %2, align 8
  %4 = getelementptr inbounds %struct.ath10k_ce_pipe, %struct.ath10k_ce_pipe* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @ath10k_ce_per_engine_service(i32 %5, i32 4)
  %7 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %2, align 8
  %8 = load i32, i32* @ath10k_pci_htt_rx_deliver, align 4
  %9 = call i32 @ath10k_pci_process_htt_rx_cb(%struct.ath10k_ce_pipe* %7, i32 %8)
  ret void
}

declare dso_local i32 @ath10k_ce_per_engine_service(i32, i32) #1

declare dso_local i32 @ath10k_pci_process_htt_rx_cb(%struct.ath10k_ce_pipe*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
