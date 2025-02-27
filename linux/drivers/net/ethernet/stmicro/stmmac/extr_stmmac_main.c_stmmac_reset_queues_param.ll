; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_main.c_stmmac_reset_queues_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_main.c_stmmac_reset_queues_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmmac_priv = type { %struct.stmmac_tx_queue*, %struct.stmmac_rx_queue*, %struct.TYPE_2__* }
%struct.stmmac_tx_queue = type { i64, i64, i64 }
%struct.stmmac_rx_queue = type { i64, i64 }
%struct.TYPE_2__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stmmac_priv*)* @stmmac_reset_queues_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stmmac_reset_queues_param(%struct.stmmac_priv* %0) #0 {
  %2 = alloca %struct.stmmac_priv*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.stmmac_rx_queue*, align 8
  %7 = alloca %struct.stmmac_tx_queue*, align 8
  store %struct.stmmac_priv* %0, %struct.stmmac_priv** %2, align 8
  %8 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %9 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %3, align 8
  %13 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %14 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %4, align 8
  store i64 0, i64* %5, align 8
  br label %18

18:                                               ; preds = %32, %1
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* %3, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %18
  %23 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %24 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %23, i32 0, i32 1
  %25 = load %struct.stmmac_rx_queue*, %struct.stmmac_rx_queue** %24, align 8
  %26 = load i64, i64* %5, align 8
  %27 = getelementptr inbounds %struct.stmmac_rx_queue, %struct.stmmac_rx_queue* %25, i64 %26
  store %struct.stmmac_rx_queue* %27, %struct.stmmac_rx_queue** %6, align 8
  %28 = load %struct.stmmac_rx_queue*, %struct.stmmac_rx_queue** %6, align 8
  %29 = getelementptr inbounds %struct.stmmac_rx_queue, %struct.stmmac_rx_queue* %28, i32 0, i32 1
  store i64 0, i64* %29, align 8
  %30 = load %struct.stmmac_rx_queue*, %struct.stmmac_rx_queue** %6, align 8
  %31 = getelementptr inbounds %struct.stmmac_rx_queue, %struct.stmmac_rx_queue* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  br label %32

32:                                               ; preds = %22
  %33 = load i64, i64* %5, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %5, align 8
  br label %18

35:                                               ; preds = %18
  store i64 0, i64* %5, align 8
  br label %36

36:                                               ; preds = %52, %35
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* %4, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %55

40:                                               ; preds = %36
  %41 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %42 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %41, i32 0, i32 0
  %43 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %42, align 8
  %44 = load i64, i64* %5, align 8
  %45 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %43, i64 %44
  store %struct.stmmac_tx_queue* %45, %struct.stmmac_tx_queue** %7, align 8
  %46 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %7, align 8
  %47 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %46, i32 0, i32 2
  store i64 0, i64* %47, align 8
  %48 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %7, align 8
  %49 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %48, i32 0, i32 1
  store i64 0, i64* %49, align 8
  %50 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %7, align 8
  %51 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %50, i32 0, i32 0
  store i64 0, i64* %51, align 8
  br label %52

52:                                               ; preds = %40
  %53 = load i64, i64* %5, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %5, align 8
  br label %36

55:                                               ; preds = %36
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
