; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_main.c_netxen_nic_up.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_main.c_netxen_nic_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netxen_adapter = type { i32 }
%struct.net_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netxen_adapter*, %struct.net_device*)* @netxen_nic_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netxen_nic_up(%struct.netxen_adapter* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.netxen_adapter*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  store %struct.netxen_adapter* %0, %struct.netxen_adapter** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = call i32 (...) @rtnl_lock()
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call i64 @netif_running(%struct.net_device* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call i32 @__netxen_nic_up(%struct.netxen_adapter* %11, %struct.net_device* %12)
  store i32 %13, i32* %5, align 4
  br label %14

14:                                               ; preds = %10, %2
  %15 = call i32 (...) @rtnl_unlock()
  %16 = load i32, i32* %5, align 4
  ret i32 %16
}

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @__netxen_nic_up(%struct.netxen_adapter*, %struct.net_device*) #1

declare dso_local i32 @rtnl_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
