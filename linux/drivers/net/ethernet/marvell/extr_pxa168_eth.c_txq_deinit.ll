; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_pxa168_eth.c_txq_deinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_pxa168_eth.c_txq_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.pxa168_eth_private = type { i64, i64, i32, i32, i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @txq_deinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @txq_deinit(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.pxa168_eth_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.pxa168_eth_private* @netdev_priv(%struct.net_device* %4)
  store %struct.pxa168_eth_private* %5, %struct.pxa168_eth_private** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call i32 @txq_reclaim(%struct.net_device* %6, i32 1)
  %8 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %3, align 8
  %9 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %3, align 8
  %12 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %10, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %3, align 8
  %18 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %1
  %22 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %3, align 8
  %23 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %22, i32 0, i32 6
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %3, align 8
  %29 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %3, align 8
  %32 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %3, align 8
  %35 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dma_free_coherent(i32 %27, i32 %30, i64 %33, i32 %36)
  br label %38

38:                                               ; preds = %21, %1
  %39 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %3, align 8
  %40 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @kfree(i32 %41)
  ret void
}

declare dso_local %struct.pxa168_eth_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @txq_reclaim(%struct.net_device*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i64, i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
