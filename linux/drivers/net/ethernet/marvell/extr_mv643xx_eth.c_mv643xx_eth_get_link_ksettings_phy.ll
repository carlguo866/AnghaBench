; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mv643xx_eth.c_mv643xx_eth_get_link_ksettings_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mv643xx_eth.c_mv643xx_eth_get_link_ksettings_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv643xx_eth_private = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@ETHTOOL_LINK_MODE_1000baseT_Half_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mv643xx_eth_private*, %struct.ethtool_link_ksettings*)* @mv643xx_eth_get_link_ksettings_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv643xx_eth_get_link_ksettings_phy(%struct.mv643xx_eth_private* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca %struct.mv643xx_eth_private*, align 8
  %4 = alloca %struct.ethtool_link_ksettings*, align 8
  %5 = alloca %struct.net_device*, align 8
  store %struct.mv643xx_eth_private* %0, %struct.mv643xx_eth_private** %3, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %4, align 8
  %6 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %7 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %6, i32 0, i32 0
  %8 = load %struct.net_device*, %struct.net_device** %7, align 8
  store %struct.net_device* %8, %struct.net_device** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %5, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %13 = call i32 @phy_ethtool_ksettings_get(i32 %11, %struct.ethtool_link_ksettings* %12)
  %14 = load i32, i32* @ETHTOOL_LINK_MODE_1000baseT_Half_BIT, align 4
  %15 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %16 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @linkmode_clear_bit(i32 %14, i32 %18)
  %20 = load i32, i32* @ETHTOOL_LINK_MODE_1000baseT_Half_BIT, align 4
  %21 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %22 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @linkmode_clear_bit(i32 %20, i32 %24)
  ret i32 0
}

declare dso_local i32 @phy_ethtool_ksettings_get(i32, %struct.ethtool_link_ksettings*) #1

declare dso_local i32 @linkmode_clear_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
