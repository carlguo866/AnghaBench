; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_lag.c_mlx5_handle_changelowerstate_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_lag.c_mlx5_handle_changelowerstate_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_lag = type { i32 }
%struct.lag_tracker = type { %struct.netdev_lag_lower_state_info* }
%struct.netdev_lag_lower_state_info = type { i32 }
%struct.net_device = type { i32 }
%struct.netdev_notifier_changelowerstate_info = type { %struct.netdev_lag_lower_state_info* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_lag*, %struct.lag_tracker*, %struct.net_device*, %struct.netdev_notifier_changelowerstate_info*)* @mlx5_handle_changelowerstate_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_handle_changelowerstate_event(%struct.mlx5_lag* %0, %struct.lag_tracker* %1, %struct.net_device* %2, %struct.netdev_notifier_changelowerstate_info* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_lag*, align 8
  %7 = alloca %struct.lag_tracker*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.netdev_notifier_changelowerstate_info*, align 8
  %10 = alloca %struct.netdev_lag_lower_state_info*, align 8
  %11 = alloca i32, align 4
  store %struct.mlx5_lag* %0, %struct.mlx5_lag** %6, align 8
  store %struct.lag_tracker* %1, %struct.lag_tracker** %7, align 8
  store %struct.net_device* %2, %struct.net_device** %8, align 8
  store %struct.netdev_notifier_changelowerstate_info* %3, %struct.netdev_notifier_changelowerstate_info** %9, align 8
  %12 = load %struct.net_device*, %struct.net_device** %8, align 8
  %13 = call i32 @netif_is_lag_port(%struct.net_device* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %40

16:                                               ; preds = %4
  %17 = load %struct.mlx5_lag*, %struct.mlx5_lag** %6, align 8
  %18 = load %struct.net_device*, %struct.net_device** %8, align 8
  %19 = call i32 @mlx5_lag_dev_get_netdev_idx(%struct.mlx5_lag* %17, %struct.net_device* %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %40

23:                                               ; preds = %16
  %24 = load %struct.netdev_notifier_changelowerstate_info*, %struct.netdev_notifier_changelowerstate_info** %9, align 8
  %25 = getelementptr inbounds %struct.netdev_notifier_changelowerstate_info, %struct.netdev_notifier_changelowerstate_info* %24, i32 0, i32 0
  %26 = load %struct.netdev_lag_lower_state_info*, %struct.netdev_lag_lower_state_info** %25, align 8
  store %struct.netdev_lag_lower_state_info* %26, %struct.netdev_lag_lower_state_info** %10, align 8
  %27 = load %struct.netdev_lag_lower_state_info*, %struct.netdev_lag_lower_state_info** %10, align 8
  %28 = icmp ne %struct.netdev_lag_lower_state_info* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %40

30:                                               ; preds = %23
  %31 = load %struct.lag_tracker*, %struct.lag_tracker** %7, align 8
  %32 = getelementptr inbounds %struct.lag_tracker, %struct.lag_tracker* %31, i32 0, i32 0
  %33 = load %struct.netdev_lag_lower_state_info*, %struct.netdev_lag_lower_state_info** %32, align 8
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.netdev_lag_lower_state_info, %struct.netdev_lag_lower_state_info* %33, i64 %35
  %37 = load %struct.netdev_lag_lower_state_info*, %struct.netdev_lag_lower_state_info** %10, align 8
  %38 = bitcast %struct.netdev_lag_lower_state_info* %36 to i8*
  %39 = bitcast %struct.netdev_lag_lower_state_info* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %38, i8* align 4 %39, i64 4, i1 false)
  store i32 1, i32* %5, align 4
  br label %40

40:                                               ; preds = %30, %29, %22, %15
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i32 @netif_is_lag_port(%struct.net_device*) #1

declare dso_local i32 @mlx5_lag_dev_get_netdev_idx(%struct.mlx5_lag*, %struct.net_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
