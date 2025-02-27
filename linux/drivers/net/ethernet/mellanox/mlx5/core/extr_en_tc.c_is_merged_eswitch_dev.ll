; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_is_merged_eswitch_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_is_merged_eswitch_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { %struct.net_device*, i32 }
%struct.net_device = type { i32 }

@merged_eswitch = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_priv*, %struct.net_device*)* @is_merged_eswitch_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_merged_eswitch_dev(%struct.mlx5e_priv* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.mlx5e_priv*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.mlx5e_priv*, align 8
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %4, align 8
  %7 = call %struct.mlx5e_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.mlx5e_priv* %7, %struct.mlx5e_priv** %5, align 8
  %8 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %9 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @merged_eswitch, align 4
  %12 = call i64 @MLX5_CAP_ESW(i32 %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %2
  %15 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %16 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %15, i32 0, i32 0
  %17 = load %struct.net_device*, %struct.net_device** %16, align 8
  %18 = call i64 @mlx5e_eswitch_rep(%struct.net_device* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %14
  %21 = load %struct.net_device*, %struct.net_device** %4, align 8
  %22 = call i64 @mlx5e_eswitch_rep(%struct.net_device* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %26 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %27 = call i64 @same_hw_devs(%struct.mlx5e_priv* %25, %struct.mlx5e_priv* %26)
  %28 = icmp ne i64 %27, 0
  br label %29

29:                                               ; preds = %24, %20, %14, %2
  %30 = phi i1 [ false, %20 ], [ false, %14 ], [ false, %2 ], [ %28, %24 ]
  %31 = zext i1 %30 to i32
  ret i32 %31
}

declare dso_local %struct.mlx5e_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @MLX5_CAP_ESW(i32, i32) #1

declare dso_local i64 @mlx5e_eswitch_rep(%struct.net_device*) #1

declare dso_local i64 @same_hw_devs(%struct.mlx5e_priv*, %struct.mlx5e_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
