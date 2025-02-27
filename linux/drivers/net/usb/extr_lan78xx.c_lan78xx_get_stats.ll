; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_get_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_stats = type { i32 }
%struct.lan78xx_net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_stats*, i32*)* @lan78xx_get_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lan78xx_get_stats(%struct.net_device* %0, %struct.ethtool_stats* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_stats*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.lan78xx_net*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_stats* %1, %struct.ethtool_stats** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.lan78xx_net* @netdev_priv(%struct.net_device* %8)
  store %struct.lan78xx_net* %9, %struct.lan78xx_net** %7, align 8
  %10 = load %struct.lan78xx_net*, %struct.lan78xx_net** %7, align 8
  %11 = call i32 @lan78xx_update_stats(%struct.lan78xx_net* %10)
  %12 = load %struct.lan78xx_net*, %struct.lan78xx_net** %7, align 8
  %13 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load i32*, i32** %6, align 8
  %17 = load %struct.lan78xx_net*, %struct.lan78xx_net** %7, align 8
  %18 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = call i32 @memcpy(i32* %16, i32* %19, i32 4)
  %21 = load %struct.lan78xx_net*, %struct.lan78xx_net** %7, align 8
  %22 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @mutex_unlock(i32* %23)
  ret void
}

declare dso_local %struct.lan78xx_net* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @lan78xx_update_stats(%struct.lan78xx_net*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
