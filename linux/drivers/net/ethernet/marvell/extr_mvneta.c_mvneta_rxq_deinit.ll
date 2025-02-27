; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta.c_mvneta_rxq_deinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta.c_mvneta_rxq_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvneta_port = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.mvneta_rx_queue = type { i32, i64, i32*, i64, i64, i64, i64, i64, i32* }

@MVNETA_DESC_ALIGNED_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvneta_port*, %struct.mvneta_rx_queue*)* @mvneta_rxq_deinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvneta_rxq_deinit(%struct.mvneta_port* %0, %struct.mvneta_rx_queue* %1) #0 {
  %3 = alloca %struct.mvneta_port*, align 8
  %4 = alloca %struct.mvneta_rx_queue*, align 8
  store %struct.mvneta_port* %0, %struct.mvneta_port** %3, align 8
  store %struct.mvneta_rx_queue* %1, %struct.mvneta_rx_queue** %4, align 8
  %5 = load %struct.mvneta_port*, %struct.mvneta_port** %3, align 8
  %6 = load %struct.mvneta_rx_queue*, %struct.mvneta_rx_queue** %4, align 8
  %7 = call i32 @mvneta_rxq_drop_pkts(%struct.mvneta_port* %5, %struct.mvneta_rx_queue* %6)
  %8 = load %struct.mvneta_rx_queue*, %struct.mvneta_rx_queue** %4, align 8
  %9 = getelementptr inbounds %struct.mvneta_rx_queue, %struct.mvneta_rx_queue* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.mvneta_rx_queue*, %struct.mvneta_rx_queue** %4, align 8
  %14 = getelementptr inbounds %struct.mvneta_rx_queue, %struct.mvneta_rx_queue* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @dev_kfree_skb_any(i32* %15)
  br label %17

17:                                               ; preds = %12, %2
  %18 = load %struct.mvneta_rx_queue*, %struct.mvneta_rx_queue** %4, align 8
  %19 = getelementptr inbounds %struct.mvneta_rx_queue, %struct.mvneta_rx_queue* %18, i32 0, i32 8
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %41

22:                                               ; preds = %17
  %23 = load %struct.mvneta_port*, %struct.mvneta_port** %3, align 8
  %24 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.mvneta_rx_queue*, %struct.mvneta_rx_queue** %4, align 8
  %30 = getelementptr inbounds %struct.mvneta_rx_queue, %struct.mvneta_rx_queue* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @MVNETA_DESC_ALIGNED_SIZE, align 4
  %33 = mul nsw i32 %31, %32
  %34 = load %struct.mvneta_rx_queue*, %struct.mvneta_rx_queue** %4, align 8
  %35 = getelementptr inbounds %struct.mvneta_rx_queue, %struct.mvneta_rx_queue* %34, i32 0, i32 8
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.mvneta_rx_queue*, %struct.mvneta_rx_queue** %4, align 8
  %38 = getelementptr inbounds %struct.mvneta_rx_queue, %struct.mvneta_rx_queue* %37, i32 0, i32 5
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @dma_free_coherent(i32 %28, i32 %33, i32* %36, i64 %39)
  br label %41

41:                                               ; preds = %22, %17
  %42 = load %struct.mvneta_rx_queue*, %struct.mvneta_rx_queue** %4, align 8
  %43 = getelementptr inbounds %struct.mvneta_rx_queue, %struct.mvneta_rx_queue* %42, i32 0, i32 8
  store i32* null, i32** %43, align 8
  %44 = load %struct.mvneta_rx_queue*, %struct.mvneta_rx_queue** %4, align 8
  %45 = getelementptr inbounds %struct.mvneta_rx_queue, %struct.mvneta_rx_queue* %44, i32 0, i32 7
  store i64 0, i64* %45, align 8
  %46 = load %struct.mvneta_rx_queue*, %struct.mvneta_rx_queue** %4, align 8
  %47 = getelementptr inbounds %struct.mvneta_rx_queue, %struct.mvneta_rx_queue* %46, i32 0, i32 6
  store i64 0, i64* %47, align 8
  %48 = load %struct.mvneta_rx_queue*, %struct.mvneta_rx_queue** %4, align 8
  %49 = getelementptr inbounds %struct.mvneta_rx_queue, %struct.mvneta_rx_queue* %48, i32 0, i32 5
  store i64 0, i64* %49, align 8
  %50 = load %struct.mvneta_rx_queue*, %struct.mvneta_rx_queue** %4, align 8
  %51 = getelementptr inbounds %struct.mvneta_rx_queue, %struct.mvneta_rx_queue* %50, i32 0, i32 4
  store i64 0, i64* %51, align 8
  %52 = load %struct.mvneta_rx_queue*, %struct.mvneta_rx_queue** %4, align 8
  %53 = getelementptr inbounds %struct.mvneta_rx_queue, %struct.mvneta_rx_queue* %52, i32 0, i32 3
  store i64 0, i64* %53, align 8
  %54 = load %struct.mvneta_rx_queue*, %struct.mvneta_rx_queue** %4, align 8
  %55 = getelementptr inbounds %struct.mvneta_rx_queue, %struct.mvneta_rx_queue* %54, i32 0, i32 2
  store i32* null, i32** %55, align 8
  %56 = load %struct.mvneta_rx_queue*, %struct.mvneta_rx_queue** %4, align 8
  %57 = getelementptr inbounds %struct.mvneta_rx_queue, %struct.mvneta_rx_queue* %56, i32 0, i32 1
  store i64 0, i64* %57, align 8
  ret void
}

declare dso_local i32 @mvneta_rxq_drop_pkts(%struct.mvneta_port*, %struct.mvneta_rx_queue*) #1

declare dso_local i32 @dev_kfree_skb_any(i32*) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
