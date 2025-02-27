; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_vport.c_mlx5_nic_vport_enable_roce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_vport.c_mlx5_nic_vport_enable_roce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@mlx5_roce_en_lock = common dso_local global i32 0, align 4
@MLX5_VPORT_ROCE_ENABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_nic_vport_enable_roce(%struct.mlx5_core_dev* %0) #0 {
  %2 = alloca %struct.mlx5_core_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = call i32 @mutex_lock(i32* @mlx5_roce_en_lock)
  %5 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %6 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %12 = load i32, i32* @MLX5_VPORT_ROCE_ENABLED, align 4
  %13 = call i32 @mlx5_nic_vport_update_roce_state(%struct.mlx5_core_dev* %11, i32 %12)
  store i32 %13, i32* %3, align 4
  br label %14

14:                                               ; preds = %10, %1
  %15 = load i32, i32* %3, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %14
  %18 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %19 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  br label %23

23:                                               ; preds = %17, %14
  %24 = call i32 @mutex_unlock(i32* @mlx5_roce_en_lock)
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mlx5_nic_vport_update_roce_state(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
