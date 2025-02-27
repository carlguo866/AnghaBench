; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_fe_tx_dma_write_desc.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_fe_tx_dma_write_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fe_tx_ring = type { i32* }
%struct.fe_map_state = type { i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fe_tx_ring*, %struct.fe_map_state*)* @fe_tx_dma_write_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fe_tx_dma_write_desc(%struct.fe_tx_ring* %0, %struct.fe_map_state* %1) #0 {
  %3 = alloca %struct.fe_tx_ring*, align 8
  %4 = alloca %struct.fe_map_state*, align 8
  store %struct.fe_tx_ring* %0, %struct.fe_tx_ring** %3, align 8
  store %struct.fe_map_state* %1, %struct.fe_map_state** %4, align 8
  %5 = load %struct.fe_map_state*, %struct.fe_map_state** %4, align 8
  %6 = getelementptr inbounds %struct.fe_map_state, %struct.fe_map_state* %5, i32 0, i32 2
  %7 = load %struct.fe_tx_ring*, %struct.fe_tx_ring** %3, align 8
  %8 = getelementptr inbounds %struct.fe_tx_ring, %struct.fe_tx_ring* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = load %struct.fe_map_state*, %struct.fe_map_state** %4, align 8
  %11 = getelementptr inbounds %struct.fe_map_state, %struct.fe_map_state* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds i32, i32* %9, i64 %12
  %14 = call i32 @fe_set_txd(%struct.TYPE_3__* %6, i32* %13)
  %15 = load %struct.fe_map_state*, %struct.fe_map_state** %4, align 8
  %16 = getelementptr inbounds %struct.fe_map_state, %struct.fe_map_state* %15, i32 0, i32 2
  %17 = call i32 @memset(%struct.TYPE_3__* %16, i32 0, i32 4)
  %18 = load %struct.fe_map_state*, %struct.fe_map_state** %4, align 8
  %19 = getelementptr inbounds %struct.fe_map_state, %struct.fe_map_state* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.fe_map_state*, %struct.fe_map_state** %4, align 8
  %22 = getelementptr inbounds %struct.fe_map_state, %struct.fe_map_state* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 4
  %24 = load %struct.fe_map_state*, %struct.fe_map_state** %4, align 8
  %25 = getelementptr inbounds %struct.fe_map_state, %struct.fe_map_state* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i64 @NEXT_TX_DESP_IDX(i64 %26)
  %28 = load %struct.fe_map_state*, %struct.fe_map_state** %4, align 8
  %29 = getelementptr inbounds %struct.fe_map_state, %struct.fe_map_state* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  ret void
}

declare dso_local i32 @fe_set_txd(%struct.TYPE_3__*, i32*) #1

declare dso_local i32 @memset(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i64 @NEXT_TX_DESP_IDX(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
