; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_fealnx.c_allocate_rx_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_fealnx.c_allocate_rx_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netdev_private = type { i64, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, %struct.sk_buff*, %struct.TYPE_2__* }
%struct.sk_buff = type { i32 }

@RX_RING_SIZE = common dso_local global i64 0, align 8
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@RXOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @allocate_rx_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @allocate_rx_buffers(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.netdev_private*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.netdev_private* @netdev_priv(%struct.net_device* %5)
  store %struct.netdev_private* %6, %struct.netdev_private** %3, align 8
  br label %7

7:                                                ; preds = %38, %1
  %8 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %9 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @RX_RING_SIZE, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %68

13:                                               ; preds = %7
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %16 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.sk_buff* @netdev_alloc_skb(%struct.net_device* %14, i32 %17)
  store %struct.sk_buff* %18, %struct.sk_buff** %4, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = icmp eq %struct.sk_buff* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  br label %68

22:                                               ; preds = %13
  br label %23

23:                                               ; preds = %30, %22
  %24 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %25 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load %struct.sk_buff*, %struct.sk_buff** %27, align 8
  %29 = icmp ne %struct.sk_buff* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %23
  %31 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %32 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 3
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %37 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %36, i32 0, i32 1
  store %struct.TYPE_2__* %35, %struct.TYPE_2__** %37, align 8
  br label %23

38:                                               ; preds = %23
  %39 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %40 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %41 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  store %struct.sk_buff* %39, %struct.sk_buff** %43, align 8
  %44 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %45 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %51 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %54 = call i32 @pci_map_single(i32 %46, i32 %49, i32 %52, i32 %53)
  %55 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %56 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  store i32 %54, i32* %58, align 4
  %59 = load i32, i32* @RXOWN, align 4
  %60 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %61 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i32 %59, i32* %63, align 8
  %64 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %65 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, 1
  store i64 %67, i64* %65, align 8
  br label %7

68:                                               ; preds = %21, %7
  ret void
}

declare dso_local %struct.netdev_private* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.net_device*, i32) #1

declare dso_local i32 @pci_map_single(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
