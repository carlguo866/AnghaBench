; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_dev.c_netdev_has_upper_dev_all_rcu.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_dev.c_netdev_has_upper_dev_all_rcu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@____netdev_has_upper_dev = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netdev_has_upper_dev_all_rcu(%struct.net_device* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.net_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %5 = load %struct.net_device*, %struct.net_device** %3, align 8
  %6 = load i32, i32* @____netdev_has_upper_dev, align 4
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call i32 @netdev_walk_all_upper_dev_rcu(%struct.net_device* %5, i32 %6, %struct.net_device* %7)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  ret i32 %12
}

declare dso_local i32 @netdev_walk_all_upper_dev_rcu(%struct.net_device*, i32, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
