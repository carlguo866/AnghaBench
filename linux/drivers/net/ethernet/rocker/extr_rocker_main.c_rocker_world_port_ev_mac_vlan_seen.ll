; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_world_port_ev_mac_vlan_seen.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_world_port_ev_mac_vlan_seen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rocker_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.rocker_world_ops* }
%struct.rocker_world_ops = type { i32 (%struct.rocker_port.0*, i8*, i32)* }
%struct.rocker_port.0 = type opaque

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rocker_port*, i8*, i32)* @rocker_world_port_ev_mac_vlan_seen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rocker_world_port_ev_mac_vlan_seen(%struct.rocker_port* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rocker_port*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rocker_world_ops*, align 8
  store %struct.rocker_port* %0, %struct.rocker_port** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.rocker_port*, %struct.rocker_port** %5, align 8
  %10 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.rocker_world_ops*, %struct.rocker_world_ops** %12, align 8
  store %struct.rocker_world_ops* %13, %struct.rocker_world_ops** %8, align 8
  %14 = load %struct.rocker_world_ops*, %struct.rocker_world_ops** %8, align 8
  %15 = getelementptr inbounds %struct.rocker_world_ops, %struct.rocker_world_ops* %14, i32 0, i32 0
  %16 = load i32 (%struct.rocker_port.0*, i8*, i32)*, i32 (%struct.rocker_port.0*, i8*, i32)** %15, align 8
  %17 = icmp ne i32 (%struct.rocker_port.0*, i8*, i32)* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @EOPNOTSUPP, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %30

21:                                               ; preds = %3
  %22 = load %struct.rocker_world_ops*, %struct.rocker_world_ops** %8, align 8
  %23 = getelementptr inbounds %struct.rocker_world_ops, %struct.rocker_world_ops* %22, i32 0, i32 0
  %24 = load i32 (%struct.rocker_port.0*, i8*, i32)*, i32 (%struct.rocker_port.0*, i8*, i32)** %23, align 8
  %25 = load %struct.rocker_port*, %struct.rocker_port** %5, align 8
  %26 = bitcast %struct.rocker_port* %25 to %struct.rocker_port.0*
  %27 = load i8*, i8** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 %24(%struct.rocker_port.0* %26, i8* %27, i32 %28)
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %21, %18
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
