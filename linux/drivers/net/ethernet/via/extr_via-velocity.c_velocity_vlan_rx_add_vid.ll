; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/via/extr_via-velocity.c_velocity_vlan_rx_add_vid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/via/extr_via-velocity.c_velocity_vlan_rx_add_vid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.velocity_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32)* @velocity_vlan_rx_add_vid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @velocity_vlan_rx_add_vid(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.velocity_info*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.velocity_info* @netdev_priv(%struct.net_device* %8)
  store %struct.velocity_info* %9, %struct.velocity_info** %7, align 8
  %10 = load %struct.velocity_info*, %struct.velocity_info** %7, align 8
  %11 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %10, i32 0, i32 0
  %12 = call i32 @spin_lock_irq(i32* %11)
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.velocity_info*, %struct.velocity_info** %7, align 8
  %15 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @set_bit(i32 %13, i32 %16)
  %18 = load %struct.velocity_info*, %struct.velocity_info** %7, align 8
  %19 = call i32 @velocity_init_cam_filter(%struct.velocity_info* %18)
  %20 = load %struct.velocity_info*, %struct.velocity_info** %7, align 8
  %21 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %20, i32 0, i32 0
  %22 = call i32 @spin_unlock_irq(i32* %21)
  ret i32 0
}

declare dso_local %struct.velocity_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @velocity_init_cam_filter(%struct.velocity_info*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
