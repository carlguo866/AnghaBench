; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta.c_mvneta_rxq_short_pool_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta.c_mvneta_rxq_short_pool_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvneta_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mvneta_rx_queue = type { i32 }

@MVNETA_RXQ_SHORT_POOL_ID_MASK = common dso_local global i32 0, align 4
@MVNETA_RXQ_SHORT_POOL_ID_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvneta_port*, %struct.mvneta_rx_queue*)* @mvneta_rxq_short_pool_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvneta_rxq_short_pool_set(%struct.mvneta_port* %0, %struct.mvneta_rx_queue* %1) #0 {
  %3 = alloca %struct.mvneta_port*, align 8
  %4 = alloca %struct.mvneta_rx_queue*, align 8
  %5 = alloca i32, align 4
  store %struct.mvneta_port* %0, %struct.mvneta_port** %3, align 8
  store %struct.mvneta_rx_queue* %1, %struct.mvneta_rx_queue** %4, align 8
  %6 = load %struct.mvneta_port*, %struct.mvneta_port** %3, align 8
  %7 = load %struct.mvneta_rx_queue*, %struct.mvneta_rx_queue** %4, align 8
  %8 = getelementptr inbounds %struct.mvneta_rx_queue, %struct.mvneta_rx_queue* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @MVNETA_RXQ_CONFIG_REG(i32 %9)
  %11 = call i32 @mvreg_read(%struct.mvneta_port* %6, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @MVNETA_RXQ_SHORT_POOL_ID_MASK, align 4
  %13 = xor i32 %12, -1
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %5, align 4
  %16 = load %struct.mvneta_port*, %struct.mvneta_port** %3, align 8
  %17 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @MVNETA_RXQ_SHORT_POOL_ID_SHIFT, align 4
  %22 = shl i32 %20, %21
  %23 = load i32, i32* %5, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %5, align 4
  %25 = load %struct.mvneta_port*, %struct.mvneta_port** %3, align 8
  %26 = load %struct.mvneta_rx_queue*, %struct.mvneta_rx_queue** %4, align 8
  %27 = getelementptr inbounds %struct.mvneta_rx_queue, %struct.mvneta_rx_queue* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @MVNETA_RXQ_CONFIG_REG(i32 %28)
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @mvreg_write(%struct.mvneta_port* %25, i32 %29, i32 %30)
  ret void
}

declare dso_local i32 @mvreg_read(%struct.mvneta_port*, i32) #1

declare dso_local i32 @MVNETA_RXQ_CONFIG_REG(i32) #1

declare dso_local i32 @mvreg_write(%struct.mvneta_port*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
