; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_natsemi.c_drain_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_natsemi.c_drain_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netdev_private = type { i32, i32**, i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }

@RX_RING_SIZE = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @drain_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drain_rx(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.netdev_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.netdev_private* @netdev_priv(%struct.net_device* %6)
  store %struct.netdev_private* %7, %struct.netdev_private** %3, align 8
  %8 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %9 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %68, %1
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @RX_RING_SIZE, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %71

15:                                               ; preds = %11
  %16 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %17 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %16, i32 0, i32 4
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store i64 0, i64* %22, align 8
  %23 = call i32 @cpu_to_le32(i32 -1159790384)
  %24 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %25 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %24, i32 0, i32 4
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 %23, i32* %30, align 8
  %31 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %32 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %31, i32 0, i32 1
  %33 = load i32**, i32*** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32*, i32** %33, i64 %35
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %61

39:                                               ; preds = %15
  %40 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %41 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %44 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %52 = call i32 @pci_unmap_single(i32 %42, i32 %49, i32 %50, i32 %51)
  %53 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %54 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %53, i32 0, i32 1
  %55 = load i32**, i32*** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32*, i32** %55, i64 %57
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @dev_kfree_skb(i32* %59)
  br label %61

61:                                               ; preds = %39, %15
  %62 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %63 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %62, i32 0, i32 1
  %64 = load i32**, i32*** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32*, i32** %64, i64 %66
  store i32* null, i32** %67, align 8
  br label %68

68:                                               ; preds = %61
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %5, align 4
  br label %11

71:                                               ; preds = %11
  ret void
}

declare dso_local %struct.netdev_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
