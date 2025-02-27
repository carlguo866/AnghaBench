; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_r8169.c_rtl8169_net_suspend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_r8169.c_rtl8169_net_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.rtl8169_private = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@RTL_FLAG_TASK_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @rtl8169_net_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8169_net_suspend(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.rtl8169_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.rtl8169_private* @netdev_priv(%struct.net_device* %4)
  store %struct.rtl8169_private* %5, %struct.rtl8169_private** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call i32 @netif_running(%struct.net_device* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %30

10:                                               ; preds = %1
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = call i32 @netif_device_detach(%struct.net_device* %11)
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = call i32 @netif_stop_queue(%struct.net_device* %13)
  %15 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %16 = call i32 @rtl_lock_work(%struct.rtl8169_private* %15)
  %17 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %18 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %17, i32 0, i32 1
  %19 = call i32 @napi_disable(i32* %18)
  %20 = load i32, i32* @RTL_FLAG_TASK_ENABLED, align 4
  %21 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %22 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @clear_bit(i32 %20, i32 %24)
  %26 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %27 = call i32 @rtl_unlock_work(%struct.rtl8169_private* %26)
  %28 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %29 = call i32 @rtl_pll_power_down(%struct.rtl8169_private* %28)
  br label %30

30:                                               ; preds = %10, %9
  ret void
}

declare dso_local %struct.rtl8169_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @netif_device_detach(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @rtl_lock_work(%struct.rtl8169_private*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @rtl_unlock_work(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl_pll_power_down(%struct.rtl8169_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
