; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_b44.c_b44_set_rx_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_b44.c_b44_set_rx_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.b44 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @b44_set_rx_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b44_set_rx_mode(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.b44*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.b44* @netdev_priv(%struct.net_device* %4)
  store %struct.b44* %5, %struct.b44** %3, align 8
  %6 = load %struct.b44*, %struct.b44** %3, align 8
  %7 = getelementptr inbounds %struct.b44, %struct.b44* %6, i32 0, i32 0
  %8 = call i32 @spin_lock_irq(i32* %7)
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call i32 @__b44_set_rx_mode(%struct.net_device* %9)
  %11 = load %struct.b44*, %struct.b44** %3, align 8
  %12 = getelementptr inbounds %struct.b44, %struct.b44* %11, i32 0, i32 0
  %13 = call i32 @spin_unlock_irq(i32* %12)
  ret void
}

declare dso_local %struct.b44* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @__b44_set_rx_mode(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
