; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_if.c_br_port_set_promisc.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_if.c_br_port_set_promisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge_port = type { i32, i32, i32 }

@BR_PROMISC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_bridge_port*)* @br_port_set_promisc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @br_port_set_promisc(%struct.net_bridge_port* %0) #0 {
  %2 = alloca %struct.net_bridge_port*, align 8
  %3 = alloca i32, align 4
  store %struct.net_bridge_port* %0, %struct.net_bridge_port** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %5 = call i64 @br_promisc_port(%struct.net_bridge_port* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %27

8:                                                ; preds = %1
  %9 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %10 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @dev_set_promiscuity(i32 %11, i32 1)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %8
  br label %27

16:                                               ; preds = %8
  %17 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %18 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %21 = call i32 @br_fdb_unsync_static(i32 %19, %struct.net_bridge_port* %20)
  %22 = load i32, i32* @BR_PROMISC, align 4
  %23 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %24 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  br label %27

27:                                               ; preds = %16, %15, %7
  ret void
}

declare dso_local i64 @br_promisc_port(%struct.net_bridge_port*) #1

declare dso_local i32 @dev_set_promiscuity(i32, i32) #1

declare dso_local i32 @br_fdb_unsync_static(i32, %struct.net_bridge_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
