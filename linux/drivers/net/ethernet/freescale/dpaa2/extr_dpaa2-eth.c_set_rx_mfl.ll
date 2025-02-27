; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_set_rx_mfl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_set_rx_mfl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpaa2_eth_priv = type { i32, i32, i32 }

@DPAA2_ETH_MFL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"dpni_set_max_frame_length failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpaa2_eth_priv*, i32, i32)* @set_rx_mfl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_rx_mfl(%struct.dpaa2_eth_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dpaa2_eth_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dpaa2_eth_priv* %0, %struct.dpaa2_eth_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @DPAA2_ETH_L2_MAX_FRM(i32 %13)
  store i32 %14, i32* %8, align 4
  br label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @DPAA2_ETH_MFL, align 4
  store i32 %16, i32* %8, align 4
  br label %17

17:                                               ; preds = %15, %12
  %18 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %5, align 8
  %19 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %5, align 8
  %22 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @dpni_set_max_frame_length(i32 %20, i32 0, i32 %23, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %17
  %29 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %5, align 8
  %30 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @netdev_err(i32 %31, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %4, align 4
  br label %35

34:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %34, %28
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @DPAA2_ETH_L2_MAX_FRM(i32) #1

declare dso_local i32 @dpni_set_max_frame_length(i32, i32, i32, i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
