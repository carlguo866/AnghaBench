; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tulip/extr_winbond-840.c_netdev_get_settings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tulip/extr_winbond-840.c_netdev_get_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_cmd = type { i32 }
%struct.netdev_private = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_cmd*)* @netdev_get_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netdev_get_settings(%struct.net_device* %0, %struct.ethtool_cmd* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_cmd*, align 8
  %5 = alloca %struct.netdev_private*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_cmd* %1, %struct.ethtool_cmd** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.netdev_private* @netdev_priv(%struct.net_device* %7)
  store %struct.netdev_private* %8, %struct.netdev_private** %5, align 8
  %9 = load %struct.netdev_private*, %struct.netdev_private** %5, align 8
  %10 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %9, i32 0, i32 0
  %11 = call i32 @spin_lock_irq(i32* %10)
  %12 = load %struct.netdev_private*, %struct.netdev_private** %5, align 8
  %13 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %12, i32 0, i32 1
  %14 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %15 = call i32 @mii_ethtool_gset(i32* %13, %struct.ethtool_cmd* %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.netdev_private*, %struct.netdev_private** %5, align 8
  %17 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %16, i32 0, i32 0
  %18 = call i32 @spin_unlock_irq(i32* %17)
  %19 = load i32, i32* %6, align 4
  ret i32 %19
}

declare dso_local %struct.netdev_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @mii_ethtool_gset(i32*, %struct.ethtool_cmd*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
