; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_natsemi.c_get_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_natsemi.c_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device_stats = type { i32 }
%struct.net_device = type { i32 }
%struct.netdev_private = type { %struct.net_device_stats, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device_stats* (%struct.net_device*)* @get_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device_stats* @get_stats(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.netdev_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.netdev_private* @netdev_priv(%struct.net_device* %4)
  store %struct.netdev_private* %5, %struct.netdev_private** %3, align 8
  %6 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %7 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %6, i32 0, i32 1
  %8 = call i32 @spin_lock_irq(i32* %7)
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call i64 @netif_running(%struct.net_device* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %14 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = call i32 @__get_stats(%struct.net_device* %18)
  br label %20

20:                                               ; preds = %17, %12, %1
  %21 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %22 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %21, i32 0, i32 1
  %23 = call i32 @spin_unlock_irq(i32* %22)
  %24 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %25 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %24, i32 0, i32 0
  ret %struct.net_device_stats* %25
}

declare dso_local %struct.netdev_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @__get_stats(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
