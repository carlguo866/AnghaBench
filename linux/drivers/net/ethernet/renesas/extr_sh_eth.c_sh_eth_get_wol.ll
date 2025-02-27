; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_sh_eth.c_sh_eth_get_wol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_sh_eth.c_sh_eth_get_wol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_wolinfo = type { i8*, i8* }
%struct.sh_eth_private = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@WAKE_MAGIC = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_wolinfo*)* @sh_eth_get_wol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh_eth_get_wol(%struct.net_device* %0, %struct.ethtool_wolinfo* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_wolinfo*, align 8
  %5 = alloca %struct.sh_eth_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_wolinfo* %1, %struct.ethtool_wolinfo** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.sh_eth_private* @netdev_priv(%struct.net_device* %6)
  store %struct.sh_eth_private* %7, %struct.sh_eth_private** %5, align 8
  %8 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %9 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %8, i32 0, i32 1
  store i8* null, i8** %9, align 8
  %10 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %11 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %10, i32 0, i32 0
  store i8* null, i8** %11, align 8
  %12 = load %struct.sh_eth_private*, %struct.sh_eth_private** %5, align 8
  %13 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %2
  %19 = load i8*, i8** @WAKE_MAGIC, align 8
  %20 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %21 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %20, i32 0, i32 1
  store i8* %19, i8** %21, align 8
  %22 = load %struct.sh_eth_private*, %struct.sh_eth_private** %5, align 8
  %23 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load i8*, i8** @WAKE_MAGIC, align 8
  br label %29

28:                                               ; preds = %18
  br label %29

29:                                               ; preds = %28, %26
  %30 = phi i8* [ %27, %26 ], [ null, %28 ]
  %31 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %32 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %31, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  br label %33

33:                                               ; preds = %29, %2
  ret void
}

declare dso_local %struct.sh_eth_private* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
