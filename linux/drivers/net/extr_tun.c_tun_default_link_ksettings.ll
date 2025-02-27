; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_tun_default_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_tun_default_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i32, i32, i32 }

@supported = common dso_local global i32 0, align 4
@advertising = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@PORT_TP = common dso_local global i32 0, align 4
@AUTONEG_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_link_ksettings*)* @tun_default_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tun_default_link_ksettings(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_link_ksettings*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %4, align 8
  %5 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %6 = load i32, i32* @supported, align 4
  %7 = call i32 @ethtool_link_ksettings_zero_link_mode(%struct.ethtool_link_ksettings* %5, i32 %6)
  %8 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %9 = load i32, i32* @advertising, align 4
  %10 = call i32 @ethtool_link_ksettings_zero_link_mode(%struct.ethtool_link_ksettings* %8, i32 %9)
  %11 = load i32, i32* @SPEED_10, align 4
  %12 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %13 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 4
  store i32 %11, i32* %14, align 8
  %15 = load i32, i32* @DUPLEX_FULL, align 4
  %16 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %17 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 3
  store i32 %15, i32* %18, align 4
  %19 = load i32, i32* @PORT_TP, align 4
  %20 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %21 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  store i32 %19, i32* %22, align 8
  %23 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %24 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  store i64 0, i64* %25, align 8
  %26 = load i32, i32* @AUTONEG_DISABLE, align 4
  %27 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %28 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 8
  ret void
}

declare dso_local i32 @ethtool_link_ksettings_zero_link_mode(%struct.ethtool_link_ksettings*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
