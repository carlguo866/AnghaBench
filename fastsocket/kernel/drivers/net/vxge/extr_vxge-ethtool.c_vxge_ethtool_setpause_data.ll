; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vxge/extr_vxge-ethtool.c_vxge_ethtool_setpause_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vxge/extr_vxge-ethtool.c_vxge_ethtool_setpause_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_pauseparam = type { i32, i32 }
%struct.vxgedev = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.__vxge_hw_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_pauseparam*)* @vxge_ethtool_setpause_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxge_ethtool_setpause_data(%struct.net_device* %0, %struct.ethtool_pauseparam* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_pauseparam*, align 8
  %5 = alloca %struct.vxgedev*, align 8
  %6 = alloca %struct.__vxge_hw_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_pauseparam* %1, %struct.ethtool_pauseparam** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call i64 @netdev_priv(%struct.net_device* %7)
  %9 = inttoptr i64 %8 to %struct.vxgedev*
  store %struct.vxgedev* %9, %struct.vxgedev** %5, align 8
  %10 = load %struct.vxgedev*, %struct.vxgedev** %5, align 8
  %11 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @pci_get_drvdata(i32 %12)
  %14 = inttoptr i64 %13 to %struct.__vxge_hw_device*
  store %struct.__vxge_hw_device* %14, %struct.__vxge_hw_device** %6, align 8
  %15 = load %struct.__vxge_hw_device*, %struct.__vxge_hw_device** %6, align 8
  %16 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %17 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %20 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @vxge_hw_device_setpause_data(%struct.__vxge_hw_device* %15, i32 0, i32 %18, i32 %21)
  %23 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %24 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.vxgedev*, %struct.vxgedev** %5, align 8
  %27 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  store i32 %25, i32* %28, align 4
  %29 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %30 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.vxgedev*, %struct.vxgedev** %5, align 8
  %33 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 4
  ret i32 0
}

declare dso_local i64 @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @pci_get_drvdata(i32) #1

declare dso_local i32 @vxge_hw_device_setpause_data(%struct.__vxge_hw_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
