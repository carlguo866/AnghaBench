; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_ethtool.c_ice_get_msglevel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_ethtool.c_ice_get_msglevel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ice_netdev_priv = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ice_pf* }
%struct.ice_pf = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [23 x i8] c"hw debug_mask: 0x%llX\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ice_get_msglevel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_get_msglevel(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ice_netdev_priv*, align 8
  %4 = alloca %struct.ice_pf*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.ice_netdev_priv* @netdev_priv(%struct.net_device* %5)
  store %struct.ice_netdev_priv* %6, %struct.ice_netdev_priv** %3, align 8
  %7 = load %struct.ice_netdev_priv*, %struct.ice_netdev_priv** %3, align 8
  %8 = getelementptr inbounds %struct.ice_netdev_priv, %struct.ice_netdev_priv* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.ice_pf*, %struct.ice_pf** %10, align 8
  store %struct.ice_pf* %11, %struct.ice_pf** %4, align 8
  %12 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %13 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %20 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @netdev_info(%struct.net_device* %18, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %22)
  br label %24

24:                                               ; preds = %17, %1
  %25 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %26 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  ret i32 %27
}

declare dso_local %struct.ice_netdev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
