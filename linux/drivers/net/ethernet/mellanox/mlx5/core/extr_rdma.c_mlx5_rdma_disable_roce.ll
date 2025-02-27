; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_rdma.c_mlx5_rdma_disable_roce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_rdma.c_mlx5_rdma_disable_roce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mlx5_core_roce }
%struct.mlx5_core_roce = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5_rdma_disable_roce(%struct.mlx5_core_dev* %0) #0 {
  %2 = alloca %struct.mlx5_core_dev*, align 8
  %3 = alloca %struct.mlx5_core_roce*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %2, align 8
  %4 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %5 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  store %struct.mlx5_core_roce* %6, %struct.mlx5_core_roce** %3, align 8
  %7 = load %struct.mlx5_core_roce*, %struct.mlx5_core_roce** %3, align 8
  %8 = getelementptr inbounds %struct.mlx5_core_roce, %struct.mlx5_core_roce* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %19

12:                                               ; preds = %1
  %13 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %14 = call i32 @mlx5_rdma_disable_roce_steering(%struct.mlx5_core_dev* %13)
  %15 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %16 = call i32 @mlx5_rdma_del_roce_addr(%struct.mlx5_core_dev* %15)
  %17 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %18 = call i32 @mlx5_nic_vport_disable_roce(%struct.mlx5_core_dev* %17)
  br label %19

19:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @mlx5_rdma_disable_roce_steering(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_rdma_del_roce_addr(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_nic_vport_disable_roce(%struct.mlx5_core_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
