; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ipg.c_ipg_nway_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ipg.c_ipg_nway_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ipg_nic_private = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ipg_nway_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipg_nway_reset(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ipg_nic_private*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.ipg_nic_private* @netdev_priv(%struct.net_device* %5)
  store %struct.ipg_nic_private* %6, %struct.ipg_nic_private** %3, align 8
  %7 = load %struct.ipg_nic_private*, %struct.ipg_nic_private** %3, align 8
  %8 = getelementptr inbounds %struct.ipg_nic_private, %struct.ipg_nic_private* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.ipg_nic_private*, %struct.ipg_nic_private** %3, align 8
  %11 = getelementptr inbounds %struct.ipg_nic_private, %struct.ipg_nic_private* %10, i32 0, i32 1
  %12 = call i32 @mii_nway_restart(i32* %11)
  store i32 %12, i32* %4, align 4
  %13 = load %struct.ipg_nic_private*, %struct.ipg_nic_private** %3, align 8
  %14 = getelementptr inbounds %struct.ipg_nic_private, %struct.ipg_nic_private* %13, i32 0, i32 0
  %15 = call i32 @mutex_unlock(i32* %14)
  %16 = load i32, i32* %4, align 4
  ret i32 %16
}

declare dso_local %struct.ipg_nic_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mii_nway_restart(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
