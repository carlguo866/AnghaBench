; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/8021q/extr_vlan_netlink.c_vlan_get_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/8021q/extr_vlan_netlink.c_vlan_get_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.vlan_dev_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.net_device*)* @vlan_get_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vlan_get_size(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.vlan_dev_info*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.vlan_dev_info* @vlan_dev_info(%struct.net_device* %4)
  store %struct.vlan_dev_info* %5, %struct.vlan_dev_info** %3, align 8
  %6 = call i64 @nla_total_size(i32 2)
  %7 = add i64 %6, 4
  %8 = load %struct.vlan_dev_info*, %struct.vlan_dev_info** %3, align 8
  %9 = getelementptr inbounds %struct.vlan_dev_info, %struct.vlan_dev_info* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @vlan_qos_map_size(i32 %10)
  %12 = add i64 %7, %11
  %13 = load %struct.vlan_dev_info*, %struct.vlan_dev_info** %3, align 8
  %14 = getelementptr inbounds %struct.vlan_dev_info, %struct.vlan_dev_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @vlan_qos_map_size(i32 %15)
  %17 = add i64 %12, %16
  ret i64 %17
}

declare dso_local %struct.vlan_dev_info* @vlan_dev_info(%struct.net_device*) #1

declare dso_local i64 @nla_total_size(i32) #1

declare dso_local i64 @vlan_qos_map_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
