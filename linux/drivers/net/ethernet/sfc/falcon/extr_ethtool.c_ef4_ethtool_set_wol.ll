; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_ethtool.c_ef4_ethtool_set_wol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_ethtool.c_ef4_ethtool_set_wol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_wolinfo = type { i32 }
%struct.ef4_nic = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.ef4_nic*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_wolinfo*)* @ef4_ethtool_set_wol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ef4_ethtool_set_wol(%struct.net_device* %0, %struct.ethtool_wolinfo* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_wolinfo*, align 8
  %5 = alloca %struct.ef4_nic*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_wolinfo* %1, %struct.ethtool_wolinfo** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.ef4_nic* @netdev_priv(%struct.net_device* %6)
  store %struct.ef4_nic* %7, %struct.ef4_nic** %5, align 8
  %8 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %9 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32 (%struct.ef4_nic*, i32)*, i32 (%struct.ef4_nic*, i32)** %11, align 8
  %13 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %14 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %15 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 %12(%struct.ef4_nic* %13, i32 %16)
  ret i32 %17
}

declare dso_local %struct.ef4_nic* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
