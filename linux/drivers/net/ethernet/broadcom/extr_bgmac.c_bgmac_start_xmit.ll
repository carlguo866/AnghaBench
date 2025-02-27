; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bgmac.c_bgmac_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bgmac.c_bgmac_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.bgmac = type { %struct.bgmac_dma_ring* }
%struct.bgmac_dma_ring = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @bgmac_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bgmac_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.bgmac*, align 8
  %6 = alloca %struct.bgmac_dma_ring*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.bgmac* @netdev_priv(%struct.net_device* %7)
  store %struct.bgmac* %8, %struct.bgmac** %5, align 8
  %9 = load %struct.bgmac*, %struct.bgmac** %5, align 8
  %10 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %9, i32 0, i32 0
  %11 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %10, align 8
  %12 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %11, i64 0
  store %struct.bgmac_dma_ring* %12, %struct.bgmac_dma_ring** %6, align 8
  %13 = load %struct.bgmac*, %struct.bgmac** %5, align 8
  %14 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %6, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %16 = call i32 @bgmac_dma_tx_add(%struct.bgmac* %13, %struct.bgmac_dma_ring* %14, %struct.sk_buff* %15)
  ret i32 %16
}

declare dso_local %struct.bgmac* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @bgmac_dma_tx_add(%struct.bgmac*, %struct.bgmac_dma_ring*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
