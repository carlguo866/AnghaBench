; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_vlan.c_br_vlan_port_event.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_vlan.c_br_vlan_port_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge_port = type { i32 }

@BROPT_VLAN_BRIDGE_BINDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_vlan_port_event(%struct.net_bridge_port* %0, i64 %1) #0 {
  %3 = alloca %struct.net_bridge_port*, align 8
  %4 = alloca i64, align 8
  store %struct.net_bridge_port* %0, %struct.net_bridge_port** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %6 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @BROPT_VLAN_BRIDGE_BINDING, align 4
  %9 = call i32 @br_opt_get(i32 %7, i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %17

12:                                               ; preds = %2
  %13 = load i64, i64* %4, align 8
  switch i64 %13, label %17 [
    i64 130, label %14
    i64 129, label %14
    i64 128, label %14
  ]

14:                                               ; preds = %12, %12, %12
  %15 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %16 = call i32 @br_vlan_set_all_vlan_dev_state(%struct.net_bridge_port* %15)
  br label %17

17:                                               ; preds = %11, %12, %14
  ret void
}

declare dso_local i32 @br_opt_get(i32, i32) #1

declare dso_local i32 @br_vlan_set_all_vlan_dev_state(%struct.net_bridge_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
