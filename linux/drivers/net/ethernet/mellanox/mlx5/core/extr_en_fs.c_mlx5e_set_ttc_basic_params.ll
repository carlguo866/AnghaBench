; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_fs.c_mlx5e_set_ttc_basic_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_fs.c_mlx5e_set_ttc_basic_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ttc_params = type { i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5e_set_ttc_basic_params(%struct.mlx5e_priv* %0, %struct.ttc_params* %1) #0 {
  %3 = alloca %struct.mlx5e_priv*, align 8
  %4 = alloca %struct.ttc_params*, align 8
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %3, align 8
  store %struct.ttc_params* %1, %struct.ttc_params** %4, align 8
  %5 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %6 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %5, i32 0, i32 1
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i64 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.ttc_params*, %struct.ttc_params** %4, align 8
  %12 = getelementptr inbounds %struct.ttc_params, %struct.ttc_params* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 8
  %13 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %14 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.ttc_params*, %struct.ttc_params** %4, align 8
  %17 = getelementptr inbounds %struct.ttc_params, %struct.ttc_params* %16, i32 0, i32 0
  store i32* %15, i32** %17, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
