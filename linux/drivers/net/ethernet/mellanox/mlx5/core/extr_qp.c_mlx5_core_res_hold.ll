; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_qp.c_mlx5_core_res_hold.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_qp.c_mlx5_core_res_hold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_rsc_common = type { i32 }
%struct.mlx5_core_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mlx5_qp_table }
%struct.mlx5_qp_table = type { i32 }

@MLX5_USER_INDEX_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mlx5_core_rsc_common* @mlx5_core_res_hold(%struct.mlx5_core_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx5_qp_table*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @MLX5_USER_INDEX_LEN, align 4
  %12 = shl i32 %10, %11
  %13 = or i32 %9, %12
  store i32 %13, i32* %7, align 4
  %14 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %15 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.mlx5_qp_table* %16, %struct.mlx5_qp_table** %8, align 8
  %17 = load %struct.mlx5_qp_table*, %struct.mlx5_qp_table** %8, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call %struct.mlx5_core_rsc_common* @mlx5_get_rsc(%struct.mlx5_qp_table* %17, i32 %18)
  ret %struct.mlx5_core_rsc_common* %19
}

declare dso_local %struct.mlx5_core_rsc_common* @mlx5_get_rsc(%struct.mlx5_qp_table*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
