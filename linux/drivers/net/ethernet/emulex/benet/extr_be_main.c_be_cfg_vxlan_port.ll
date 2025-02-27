; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_cfg_vxlan_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_cfg_vxlan_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.udp_tunnel_info = type { i64, i32 }
%struct.work_struct = type opaque
%struct.be_adapter = type { i32 }
%struct.be_cmd_work = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.work_struct.0 = type opaque

@UDP_TUNNEL_TYPE_VXLAN = common dso_local global i64 0, align 8
@be_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.udp_tunnel_info*, void (%struct.work_struct*)*)* @be_cfg_vxlan_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @be_cfg_vxlan_port(%struct.net_device* %0, %struct.udp_tunnel_info* %1, void (%struct.work_struct*)* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.udp_tunnel_info*, align 8
  %6 = alloca void (%struct.work_struct*)*, align 8
  %7 = alloca %struct.be_adapter*, align 8
  %8 = alloca %struct.be_cmd_work*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.udp_tunnel_info* %1, %struct.udp_tunnel_info** %5, align 8
  store void (%struct.work_struct*)* %2, void (%struct.work_struct*)** %6, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.be_adapter* @netdev_priv(%struct.net_device* %9)
  store %struct.be_adapter* %10, %struct.be_adapter** %7, align 8
  %11 = load %struct.udp_tunnel_info*, %struct.udp_tunnel_info** %5, align 8
  %12 = getelementptr inbounds %struct.udp_tunnel_info, %struct.udp_tunnel_info* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @UDP_TUNNEL_TYPE_VXLAN, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %48

17:                                               ; preds = %3
  %18 = load %struct.be_adapter*, %struct.be_adapter** %7, align 8
  %19 = call i64 @lancer_chip(%struct.be_adapter* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %17
  %22 = load %struct.be_adapter*, %struct.be_adapter** %7, align 8
  %23 = call i64 @BEx_chip(%struct.be_adapter* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load %struct.be_adapter*, %struct.be_adapter** %7, align 8
  %27 = call i64 @be_is_mc(%struct.be_adapter* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25, %21, %17
  br label %48

30:                                               ; preds = %25
  %31 = load %struct.be_adapter*, %struct.be_adapter** %7, align 8
  %32 = load void (%struct.work_struct*)*, void (%struct.work_struct*)** %6, align 8
  %33 = bitcast void (%struct.work_struct*)* %32 to void (%struct.work_struct.0*)*
  %34 = call %struct.be_cmd_work* @be_alloc_work(%struct.be_adapter* %31, void (%struct.work_struct.0*)* %33)
  store %struct.be_cmd_work* %34, %struct.be_cmd_work** %8, align 8
  %35 = load %struct.be_cmd_work*, %struct.be_cmd_work** %8, align 8
  %36 = icmp ne %struct.be_cmd_work* %35, null
  br i1 %36, label %37, label %48

37:                                               ; preds = %30
  %38 = load %struct.udp_tunnel_info*, %struct.udp_tunnel_info** %5, align 8
  %39 = getelementptr inbounds %struct.udp_tunnel_info, %struct.udp_tunnel_info* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.be_cmd_work*, %struct.be_cmd_work** %8, align 8
  %42 = getelementptr inbounds %struct.be_cmd_work, %struct.be_cmd_work* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 4
  %44 = load i32, i32* @be_wq, align 4
  %45 = load %struct.be_cmd_work*, %struct.be_cmd_work** %8, align 8
  %46 = getelementptr inbounds %struct.be_cmd_work, %struct.be_cmd_work* %45, i32 0, i32 0
  %47 = call i32 @queue_work(i32 %44, i32* %46)
  br label %48

48:                                               ; preds = %16, %29, %37, %30
  ret void
}

declare dso_local %struct.be_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @lancer_chip(%struct.be_adapter*) #1

declare dso_local i64 @BEx_chip(%struct.be_adapter*) #1

declare dso_local i64 @be_is_mc(%struct.be_adapter*) #1

declare dso_local %struct.be_cmd_work* @be_alloc_work(%struct.be_adapter*, void (%struct.work_struct.0*)*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
