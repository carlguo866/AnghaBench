; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-pci-core.c_sdhci_pci_hw_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-pci-core.c_sdhci_pci_hw_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32 }
%struct.sdhci_pci_slot = type { i32 (%struct.sdhci_host.0*)* }
%struct.sdhci_host.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*)* @sdhci_pci_hw_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_pci_hw_reset(%struct.sdhci_host* %0) #0 {
  %2 = alloca %struct.sdhci_host*, align 8
  %3 = alloca %struct.sdhci_pci_slot*, align 8
  store %struct.sdhci_host* %0, %struct.sdhci_host** %2, align 8
  %4 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %5 = call %struct.sdhci_pci_slot* @sdhci_priv(%struct.sdhci_host* %4)
  store %struct.sdhci_pci_slot* %5, %struct.sdhci_pci_slot** %3, align 8
  %6 = load %struct.sdhci_pci_slot*, %struct.sdhci_pci_slot** %3, align 8
  %7 = getelementptr inbounds %struct.sdhci_pci_slot, %struct.sdhci_pci_slot* %6, i32 0, i32 0
  %8 = load i32 (%struct.sdhci_host.0*)*, i32 (%struct.sdhci_host.0*)** %7, align 8
  %9 = icmp ne i32 (%struct.sdhci_host.0*)* %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.sdhci_pci_slot*, %struct.sdhci_pci_slot** %3, align 8
  %12 = getelementptr inbounds %struct.sdhci_pci_slot, %struct.sdhci_pci_slot* %11, i32 0, i32 0
  %13 = load i32 (%struct.sdhci_host.0*)*, i32 (%struct.sdhci_host.0*)** %12, align 8
  %14 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %15 = bitcast %struct.sdhci_host* %14 to %struct.sdhci_host.0*
  %16 = call i32 %13(%struct.sdhci_host.0* %15)
  br label %17

17:                                               ; preds = %10, %1
  ret void
}

declare dso_local %struct.sdhci_pci_slot* @sdhci_priv(%struct.sdhci_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
