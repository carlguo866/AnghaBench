; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac-ethtool.c_emac_get_pauseparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac-ethtool.c_emac_get_pauseparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_pauseparam = type { i32, i32, i32 }
%struct.emac_adapter = type { i64, i64, i64 }

@AUTONEG_ENABLE = common dso_local global i32 0, align 4
@AUTONEG_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_pauseparam*)* @emac_get_pauseparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emac_get_pauseparam(%struct.net_device* %0, %struct.ethtool_pauseparam* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_pauseparam*, align 8
  %5 = alloca %struct.emac_adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_pauseparam* %1, %struct.ethtool_pauseparam** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.emac_adapter* @netdev_priv(%struct.net_device* %6)
  store %struct.emac_adapter* %7, %struct.emac_adapter** %5, align 8
  %8 = load %struct.emac_adapter*, %struct.emac_adapter** %5, align 8
  %9 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @AUTONEG_ENABLE, align 4
  br label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @AUTONEG_DISABLE, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i32 [ %13, %12 ], [ %15, %14 ]
  %18 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %19 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  %20 = load %struct.emac_adapter*, %struct.emac_adapter** %5, align 8
  %21 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 1, i32 0
  %26 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %27 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.emac_adapter*, %struct.emac_adapter** %5, align 8
  %29 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 1, i32 0
  %34 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %35 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  ret void
}

declare dso_local %struct.emac_adapter* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
