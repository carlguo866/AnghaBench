; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/netlogic/extr_xlr_net.c_xlr_set_rx_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/netlogic/extr_xlr_net.c_xlr_set_rx_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.xlr_net_priv = type { i32 }

@R_MAC_FILTER_CONFIG = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@O_MAC_FILTER_CONFIG__BROADCAST_EN = common dso_local global i32 0, align 4
@O_MAC_FILTER_CONFIG__PAUSE_FRAME_EN = common dso_local global i32 0, align 4
@O_MAC_FILTER_CONFIG__ALL_MCAST_EN = common dso_local global i32 0, align 4
@O_MAC_FILTER_CONFIG__ALL_UCAST_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @xlr_set_rx_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlr_set_rx_mode(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.xlr_net_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.xlr_net_priv* @netdev_priv(%struct.net_device* %5)
  store %struct.xlr_net_priv* %6, %struct.xlr_net_priv** %3, align 8
  %7 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %3, align 8
  %8 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @R_MAC_FILTER_CONFIG, align 4
  %11 = call i32 @xlr_nae_rdreg(i32 %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @IFF_PROMISC, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %1
  %19 = load i32, i32* @O_MAC_FILTER_CONFIG__BROADCAST_EN, align 4
  %20 = shl i32 1, %19
  %21 = load i32, i32* @O_MAC_FILTER_CONFIG__PAUSE_FRAME_EN, align 4
  %22 = shl i32 1, %21
  %23 = or i32 %20, %22
  %24 = load i32, i32* @O_MAC_FILTER_CONFIG__ALL_MCAST_EN, align 4
  %25 = shl i32 1, %24
  %26 = or i32 %23, %25
  %27 = load i32, i32* @O_MAC_FILTER_CONFIG__ALL_UCAST_EN, align 4
  %28 = shl i32 1, %27
  %29 = or i32 %26, %28
  %30 = load i32, i32* %4, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %4, align 4
  br label %41

32:                                               ; preds = %1
  %33 = load i32, i32* @O_MAC_FILTER_CONFIG__PAUSE_FRAME_EN, align 4
  %34 = shl i32 1, %33
  %35 = load i32, i32* @O_MAC_FILTER_CONFIG__ALL_UCAST_EN, align 4
  %36 = shl i32 1, %35
  %37 = or i32 %34, %36
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %4, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %32, %18
  %42 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %3, align 8
  %43 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @R_MAC_FILTER_CONFIG, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @xlr_nae_wreg(i32 %44, i32 %45, i32 %46)
  ret void
}

declare dso_local %struct.xlr_net_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @xlr_nae_rdreg(i32, i32) #1

declare dso_local i32 @xlr_nae_wreg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
