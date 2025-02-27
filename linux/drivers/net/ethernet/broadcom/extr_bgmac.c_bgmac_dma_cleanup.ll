; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bgmac.c_bgmac_dma_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bgmac.c_bgmac_dma_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bgmac = type { i32*, i32* }

@BGMAC_MAX_TX_RINGS = common dso_local global i32 0, align 4
@BGMAC_MAX_RX_RINGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bgmac*)* @bgmac_dma_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bgmac_dma_cleanup(%struct.bgmac* %0) #0 {
  %2 = alloca %struct.bgmac*, align 8
  %3 = alloca i32, align 4
  store %struct.bgmac* %0, %struct.bgmac** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %17, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @BGMAC_MAX_TX_RINGS, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %20

8:                                                ; preds = %4
  %9 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %10 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %11 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = call i32 @bgmac_dma_tx_ring_free(%struct.bgmac* %9, i32* %15)
  br label %17

17:                                               ; preds = %8
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %3, align 4
  br label %4

20:                                               ; preds = %4
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %34, %20
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @BGMAC_MAX_RX_RINGS, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %21
  %26 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %27 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %28 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = call i32 @bgmac_dma_rx_ring_free(%struct.bgmac* %26, i32* %32)
  br label %34

34:                                               ; preds = %25
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %21

37:                                               ; preds = %21
  ret void
}

declare dso_local i32 @bgmac_dma_tx_ring_free(%struct.bgmac*, i32*) #1

declare dso_local i32 @bgmac_dma_rx_ring_free(%struct.bgmac*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
