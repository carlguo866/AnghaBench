; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_cm.c_ipoib_cm_free_rx_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_cm.c_ipoib_cm_free_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ipoib_cm_rx_buf = type { i64, i32 }
%struct.ipoib_dev_priv = type { i32 }

@ipoib_recvq_size = common dso_local global i32 0, align 4
@IPOIB_CM_RX_SG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ipoib_cm_rx_buf*)* @ipoib_cm_free_rx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipoib_cm_free_rx_ring(%struct.net_device* %0, %struct.ipoib_cm_rx_buf* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ipoib_cm_rx_buf*, align 8
  %5 = alloca %struct.ipoib_dev_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ipoib_cm_rx_buf* %1, %struct.ipoib_cm_rx_buf** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.ipoib_dev_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.ipoib_dev_priv* %8, %struct.ipoib_dev_priv** %5, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %40, %2
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @ipoib_recvq_size, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %43

13:                                               ; preds = %9
  %14 = load %struct.ipoib_cm_rx_buf*, %struct.ipoib_cm_rx_buf** %4, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.ipoib_cm_rx_buf, %struct.ipoib_cm_rx_buf* %14, i64 %16
  %18 = getelementptr inbounds %struct.ipoib_cm_rx_buf, %struct.ipoib_cm_rx_buf* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %39

21:                                               ; preds = %13
  %22 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %23 = load i64, i64* @IPOIB_CM_RX_SG, align 8
  %24 = sub nsw i64 %23, 1
  %25 = load %struct.ipoib_cm_rx_buf*, %struct.ipoib_cm_rx_buf** %4, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.ipoib_cm_rx_buf, %struct.ipoib_cm_rx_buf* %25, i64 %27
  %29 = getelementptr inbounds %struct.ipoib_cm_rx_buf, %struct.ipoib_cm_rx_buf* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @ipoib_cm_dma_unmap_rx(%struct.ipoib_dev_priv* %22, i64 %24, i32 %30)
  %32 = load %struct.ipoib_cm_rx_buf*, %struct.ipoib_cm_rx_buf** %4, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.ipoib_cm_rx_buf, %struct.ipoib_cm_rx_buf* %32, i64 %34
  %36 = getelementptr inbounds %struct.ipoib_cm_rx_buf, %struct.ipoib_cm_rx_buf* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @dev_kfree_skb_any(i64 %37)
  br label %39

39:                                               ; preds = %21, %13
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %9

43:                                               ; preds = %9
  %44 = load %struct.ipoib_cm_rx_buf*, %struct.ipoib_cm_rx_buf** %4, align 8
  %45 = call i32 @vfree(%struct.ipoib_cm_rx_buf* %44)
  ret void
}

declare dso_local %struct.ipoib_dev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ipoib_cm_dma_unmap_rx(%struct.ipoib_dev_priv*, i64, i32) #1

declare dso_local i32 @dev_kfree_skb_any(i64) #1

declare dso_local i32 @vfree(%struct.ipoib_cm_rx_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
