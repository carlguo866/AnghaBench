; ModuleID = '/home/carl/AnghaBench/linux/net/8021q/extr_vlan.c_vlan_stacked_transfer_operstate.c'
source_filename = "/home/carl/AnghaBench/linux/net/8021q/extr_vlan.c_vlan_stacked_transfer_operstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.vlan_dev_priv = type { i32 }

@VLAN_FLAG_BRIDGE_BINDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.net_device*, %struct.vlan_dev_priv*)* @vlan_stacked_transfer_operstate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlan_stacked_transfer_operstate(%struct.net_device* %0, %struct.net_device* %1, %struct.vlan_dev_priv* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.vlan_dev_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store %struct.vlan_dev_priv* %2, %struct.vlan_dev_priv** %6, align 8
  %7 = load %struct.vlan_dev_priv*, %struct.vlan_dev_priv** %6, align 8
  %8 = getelementptr inbounds %struct.vlan_dev_priv, %struct.vlan_dev_priv* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @VLAN_FLAG_BRIDGE_BINDING, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = call i32 @netif_stacked_transfer_operstate(%struct.net_device* %14, %struct.net_device* %15)
  br label %17

17:                                               ; preds = %13, %3
  ret void
}

declare dso_local i32 @netif_stacked_transfer_operstate(%struct.net_device*, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
