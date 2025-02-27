; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_netdev.c_mlx4_en_del_vxlan_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_netdev.c_mlx4_en_del_vxlan_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.udp_tunnel_info = type { i64, i64, i64 }
%struct.mlx4_en_priv = type { i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@UDP_TUNNEL_TYPE_VXLAN = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i64 0, align 8
@MLX4_TUNNEL_OFFLOAD_MODE_VXLAN = common dso_local global i64 0, align 8
@DRV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"vxlan port %d isn't configured, ignoring\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.udp_tunnel_info*)* @mlx4_en_del_vxlan_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx4_en_del_vxlan_port(%struct.net_device* %0, %struct.udp_tunnel_info* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.udp_tunnel_info*, align 8
  %5 = alloca %struct.mlx4_en_priv*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.udp_tunnel_info* %1, %struct.udp_tunnel_info** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.mlx4_en_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.mlx4_en_priv* %9, %struct.mlx4_en_priv** %5, align 8
  %10 = load %struct.udp_tunnel_info*, %struct.udp_tunnel_info** %4, align 8
  %11 = getelementptr inbounds %struct.udp_tunnel_info, %struct.udp_tunnel_info* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %6, align 8
  %13 = load %struct.udp_tunnel_info*, %struct.udp_tunnel_info** %4, align 8
  %14 = getelementptr inbounds %struct.udp_tunnel_info, %struct.udp_tunnel_info* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @UDP_TUNNEL_TYPE_VXLAN, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %60

19:                                               ; preds = %2
  %20 = load %struct.udp_tunnel_info*, %struct.udp_tunnel_info** %4, align 8
  %21 = getelementptr inbounds %struct.udp_tunnel_info, %struct.udp_tunnel_info* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @AF_INET, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %60

26:                                               ; preds = %19
  %27 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %28 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %27, i32 0, i32 2
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @MLX4_TUNNEL_OFFLOAD_MODE_VXLAN, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %26
  br label %60

38:                                               ; preds = %26
  %39 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %40 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %7, align 8
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* %6, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %38
  %46 = load i32, i32* @DRV, align 4
  %47 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %48 = load i64, i64* %6, align 8
  %49 = call i32 @ntohs(i64 %48)
  %50 = call i32 @en_dbg(i32 %46, %struct.mlx4_en_priv* %47, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %49)
  br label %60

51:                                               ; preds = %38
  %52 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %53 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %52, i32 0, i32 2
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %58 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %57, i32 0, i32 1
  %59 = call i32 @queue_work(i32 %56, i32* %58)
  br label %60

60:                                               ; preds = %51, %45, %37, %25, %18
  ret void
}

declare dso_local %struct.mlx4_en_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @en_dbg(i32, %struct.mlx4_en_priv*, i8*, i32) #1

declare dso_local i32 @ntohs(i64) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
