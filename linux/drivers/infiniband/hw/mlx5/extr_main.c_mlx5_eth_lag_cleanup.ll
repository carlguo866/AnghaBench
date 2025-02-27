; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_eth_lag_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_eth_lag_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32, %struct.TYPE_2__*, %struct.mlx5_core_dev* }
%struct.TYPE_2__ = type { i32* }
%struct.mlx5_core_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_ib_dev*)* @mlx5_eth_lag_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5_eth_lag_cleanup(%struct.mlx5_ib_dev* %0) #0 {
  %2 = alloca %struct.mlx5_ib_dev*, align 8
  %3 = alloca %struct.mlx5_core_dev*, align 8
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %2, align 8
  %4 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %2, align 8
  %5 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %4, i32 0, i32 2
  %6 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  store %struct.mlx5_core_dev* %6, %struct.mlx5_core_dev** %3, align 8
  %7 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %2, align 8
  %8 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %1
  %12 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %2, align 8
  %13 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %12, i32 0, i32 0
  store i32 0, i32* %13, align 8
  %14 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %2, align 8
  %15 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @mlx5_destroy_flow_table(i32* %18)
  %20 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %2, align 8
  %21 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32* null, i32** %23, align 8
  %24 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %25 = call i32 @mlx5_cmd_destroy_vport_lag(%struct.mlx5_core_dev* %24)
  br label %26

26:                                               ; preds = %11, %1
  ret void
}

declare dso_local i32 @mlx5_destroy_flow_table(i32*) #1

declare dso_local i32 @mlx5_cmd_destroy_vport_lag(%struct.mlx5_core_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
