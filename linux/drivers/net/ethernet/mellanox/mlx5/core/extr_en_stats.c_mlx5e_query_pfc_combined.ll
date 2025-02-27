; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_stats.c_mlx5e_query_pfc_combined.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_stats.c_mlx5e_query_pfc_combined.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { i32 }

@port_type = common dso_local global i32 0, align 4
@MLX5_CAP_PORT_TYPE_ETH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mlx5e_priv*)* @mlx5e_query_pfc_combined to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mlx5e_query_pfc_combined(%struct.mlx5e_priv* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.mlx5e_priv*, align 8
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %3, align 8
  %8 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %9 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %8, i32 0, i32 0
  %10 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %9, align 8
  store %struct.mlx5_core_dev* %10, %struct.mlx5_core_dev** %4, align 8
  %11 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %12 = load i32, i32* @port_type, align 4
  %13 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %11, i32 %12)
  %14 = load i64, i64* @MLX5_CAP_PORT_TYPE_ETH, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %29

17:                                               ; preds = %1
  %18 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %19 = call i32 @mlx5_query_port_pfc(%struct.mlx5_core_dev* %18, i64* %5, i64* %6)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %27

23:                                               ; preds = %17
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* %6, align 8
  %26 = or i64 %24, %25
  br label %27

27:                                               ; preds = %23, %22
  %28 = phi i64 [ 0, %22 ], [ %26, %23 ]
  store i64 %28, i64* %2, align 8
  br label %29

29:                                               ; preds = %27, %16
  %30 = load i64, i64* %2, align 8
  ret i64 %30
}

declare dso_local i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @mlx5_query_port_pfc(%struct.mlx5_core_dev*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
