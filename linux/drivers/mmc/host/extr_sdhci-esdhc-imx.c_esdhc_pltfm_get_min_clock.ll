; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-esdhc-imx.c_esdhc_pltfm_get_min_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-esdhc-imx.c_esdhc_pltfm_get_min_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32 }
%struct.sdhci_pltfm_host = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdhci_host*)* @esdhc_pltfm_get_min_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esdhc_pltfm_get_min_clock(%struct.sdhci_host* %0) #0 {
  %2 = alloca %struct.sdhci_host*, align 8
  %3 = alloca %struct.sdhci_pltfm_host*, align 8
  store %struct.sdhci_host* %0, %struct.sdhci_host** %2, align 8
  %4 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %5 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %4)
  store %struct.sdhci_pltfm_host* %5, %struct.sdhci_pltfm_host** %3, align 8
  %6 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %3, align 8
  %7 = getelementptr inbounds %struct.sdhci_pltfm_host, %struct.sdhci_pltfm_host* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = sdiv i32 %8, 256
  %10 = sdiv i32 %9, 16
  ret i32 %10
}

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
