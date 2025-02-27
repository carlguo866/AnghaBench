; ModuleID = '/home/carl/AnghaBench/lede/target/linux/mcs814x/files-3.18/drivers/net/ethernet/mcs8140/extr_nuport_mac.c_nuport_mac_disable_rx_dma.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/mcs814x/files-3.18/drivers/net/ethernet/mcs8140/extr_nuport_mac.c_nuport_mac_disable_rx_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nuport_mac_priv = type { i32 }

@RX_DMA_ENH = common dso_local global i32 0, align 4
@RX_DMA_INT_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nuport_mac_priv*)* @nuport_mac_disable_rx_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nuport_mac_disable_rx_dma(%struct.nuport_mac_priv* %0) #0 {
  %2 = alloca %struct.nuport_mac_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.nuport_mac_priv* %0, %struct.nuport_mac_priv** %2, align 8
  %4 = load i32, i32* @RX_DMA_ENH, align 4
  %5 = call i32 @nuport_mac_readl(i32 %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* @RX_DMA_INT_ENABLE, align 4
  %7 = xor i32 %6, -1
  %8 = load i32, i32* %3, align 4
  %9 = and i32 %8, %7
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @RX_DMA_ENH, align 4
  %12 = call i32 @nuport_mac_writel(i32 %10, i32 %11)
  ret void
}

declare dso_local i32 @nuport_mac_readl(i32) #1

declare dso_local i32 @nuport_mac_writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
