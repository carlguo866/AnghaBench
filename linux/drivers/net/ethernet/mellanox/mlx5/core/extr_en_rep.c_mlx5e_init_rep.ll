; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rep.c_mlx5e_init_rep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rep.c_mlx5e_init_rep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.mlx5e_profile = type { i32 }
%struct.mlx5e_priv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@MLX5E_REP_PARAMS_DEF_NUM_CHANNELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*, %struct.net_device*, %struct.mlx5e_profile*, i8*)* @mlx5e_init_rep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_init_rep(%struct.mlx5_core_dev* %0, %struct.net_device* %1, %struct.mlx5e_profile* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_core_dev*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.mlx5e_profile*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.mlx5e_priv*, align 8
  %11 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store %struct.mlx5e_profile* %2, %struct.mlx5e_profile** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.net_device*, %struct.net_device** %7, align 8
  %13 = call %struct.mlx5e_priv* @netdev_priv(%struct.net_device* %12)
  store %struct.mlx5e_priv* %13, %struct.mlx5e_priv** %10, align 8
  %14 = load %struct.net_device*, %struct.net_device** %7, align 8
  %15 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %10, align 8
  %16 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %17 = load %struct.mlx5e_profile*, %struct.mlx5e_profile** %8, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = call i32 @mlx5e_netdev_init(%struct.net_device* %14, %struct.mlx5e_priv* %15, %struct.mlx5_core_dev* %16, %struct.mlx5e_profile* %17, i8* %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* %11, align 4
  store i32 %23, i32* %5, align 4
  br label %36

24:                                               ; preds = %4
  %25 = load i32, i32* @MLX5E_REP_PARAMS_DEF_NUM_CHANNELS, align 4
  %26 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %10, align 8
  %27 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i32 %25, i32* %29, align 4
  %30 = load %struct.net_device*, %struct.net_device** %7, align 8
  %31 = call i32 @mlx5e_build_rep_params(%struct.net_device* %30)
  %32 = load %struct.net_device*, %struct.net_device** %7, align 8
  %33 = call i32 @mlx5e_build_rep_netdev(%struct.net_device* %32)
  %34 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %10, align 8
  %35 = call i32 @mlx5e_timestamp_init(%struct.mlx5e_priv* %34)
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %24, %22
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local %struct.mlx5e_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mlx5e_netdev_init(%struct.net_device*, %struct.mlx5e_priv*, %struct.mlx5_core_dev*, %struct.mlx5e_profile*, i8*) #1

declare dso_local i32 @mlx5e_build_rep_params(%struct.net_device*) #1

declare dso_local i32 @mlx5e_build_rep_netdev(%struct.net_device*) #1

declare dso_local i32 @mlx5e_timestamp_init(%struct.mlx5e_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
