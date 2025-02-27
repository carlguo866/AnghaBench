; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_b44.c_b44_get_pauseparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_b44.c_b44_get_pauseparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_pauseparam = type { i32, i32, i32 }
%struct.b44 = type { i32 }

@B44_FLAG_PAUSE_AUTO = common dso_local global i32 0, align 4
@B44_FLAG_RX_PAUSE = common dso_local global i32 0, align 4
@B44_FLAG_TX_PAUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_pauseparam*)* @b44_get_pauseparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b44_get_pauseparam(%struct.net_device* %0, %struct.ethtool_pauseparam* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_pauseparam*, align 8
  %5 = alloca %struct.b44*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_pauseparam* %1, %struct.ethtool_pauseparam** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.b44* @netdev_priv(%struct.net_device* %6)
  store %struct.b44* %7, %struct.b44** %5, align 8
  %8 = load %struct.b44*, %struct.b44** %5, align 8
  %9 = getelementptr inbounds %struct.b44, %struct.b44* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @B44_FLAG_PAUSE_AUTO, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %16 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.b44*, %struct.b44** %5, align 8
  %18 = getelementptr inbounds %struct.b44, %struct.b44* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @B44_FLAG_RX_PAUSE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %25 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.b44*, %struct.b44** %5, align 8
  %27 = getelementptr inbounds %struct.b44, %struct.b44* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @B44_FLAG_TX_PAUSE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i32
  %33 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %34 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  ret void
}

declare dso_local %struct.b44* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
