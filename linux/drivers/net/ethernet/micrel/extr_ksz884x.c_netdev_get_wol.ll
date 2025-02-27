; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_netdev_get_wol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_netdev_get_wol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_wolinfo = type { i32, i32, i32 }
%struct.dev_priv = type { %struct.dev_info* }
%struct.dev_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_wolinfo*)* @netdev_get_wol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netdev_get_wol(%struct.net_device* %0, %struct.ethtool_wolinfo* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_wolinfo*, align 8
  %5 = alloca %struct.dev_priv*, align 8
  %6 = alloca %struct.dev_info*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_wolinfo* %1, %struct.ethtool_wolinfo** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.dev_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.dev_priv* %8, %struct.dev_priv** %5, align 8
  %9 = load %struct.dev_priv*, %struct.dev_priv** %5, align 8
  %10 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %9, i32 0, i32 0
  %11 = load %struct.dev_info*, %struct.dev_info** %10, align 8
  store %struct.dev_info* %11, %struct.dev_info** %6, align 8
  %12 = load %struct.dev_info*, %struct.dev_info** %6, align 8
  %13 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %16 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 4
  %17 = load %struct.dev_info*, %struct.dev_info** %6, align 8
  %18 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %21 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %23 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %22, i32 0, i32 0
  %24 = call i32 @memset(i32* %23, i32 0, i32 4)
  ret void
}

declare dso_local %struct.dev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
