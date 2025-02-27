; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmgenet.c_bcmgenet_netif_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmgenet.c_bcmgenet_netif_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.bcmgenet_priv = type { i32, i32, i32, i32, i32 }

@CMD_RX_EN = common dso_local global i32 0, align 4
@CMD_TX_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @bcmgenet_netif_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcmgenet_netif_stop(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.bcmgenet_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.bcmgenet_priv* @netdev_priv(%struct.net_device* %4)
  store %struct.bcmgenet_priv* %5, %struct.bcmgenet_priv** %3, align 8
  %6 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %7 = call i32 @bcmgenet_disable_tx_napi(%struct.bcmgenet_priv* %6)
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call i32 @netif_tx_disable(%struct.net_device* %8)
  %10 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %11 = load i32, i32* @CMD_RX_EN, align 4
  %12 = call i32 @umac_enable_set(%struct.bcmgenet_priv* %10, i32 %11, i32 0)
  %13 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %14 = call i32 @bcmgenet_dma_teardown(%struct.bcmgenet_priv* %13)
  %15 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %16 = load i32, i32* @CMD_TX_EN, align 4
  %17 = call i32 @umac_enable_set(%struct.bcmgenet_priv* %15, i32 %16, i32 0)
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @phy_stop(i32 %20)
  %22 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %23 = call i32 @bcmgenet_disable_rx_napi(%struct.bcmgenet_priv* %22)
  %24 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %25 = call i32 @bcmgenet_intr_disable(%struct.bcmgenet_priv* %24)
  %26 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %27 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %26, i32 0, i32 4
  %28 = call i32 @cancel_work_sync(i32* %27)
  %29 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %30 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %29, i32 0, i32 0
  store i32 -1, i32* %30, align 4
  %31 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %32 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %31, i32 0, i32 1
  store i32 -1, i32* %32, align 4
  %33 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %34 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %33, i32 0, i32 2
  store i32 -1, i32* %34, align 4
  %35 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %36 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %35, i32 0, i32 3
  store i32 -1, i32* %36, align 4
  %37 = load %struct.net_device*, %struct.net_device** %2, align 8
  %38 = call i32 @bcmgenet_tx_reclaim_all(%struct.net_device* %37)
  %39 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %40 = call i32 @bcmgenet_fini_dma(%struct.bcmgenet_priv* %39)
  ret void
}

declare dso_local %struct.bcmgenet_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @bcmgenet_disable_tx_napi(%struct.bcmgenet_priv*) #1

declare dso_local i32 @netif_tx_disable(%struct.net_device*) #1

declare dso_local i32 @umac_enable_set(%struct.bcmgenet_priv*, i32, i32) #1

declare dso_local i32 @bcmgenet_dma_teardown(%struct.bcmgenet_priv*) #1

declare dso_local i32 @phy_stop(i32) #1

declare dso_local i32 @bcmgenet_disable_rx_napi(%struct.bcmgenet_priv*) #1

declare dso_local i32 @bcmgenet_intr_disable(%struct.bcmgenet_priv*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @bcmgenet_tx_reclaim_all(%struct.net_device*) #1

declare dso_local i32 @bcmgenet_fini_dma(%struct.bcmgenet_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
