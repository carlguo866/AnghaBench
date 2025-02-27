; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_get_atomic_caps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_get_atomic_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32 }
%struct.ib_device_attr = type { i32 }

@MLX5_ATOMIC_OPS_CMP_SWAP = common dso_local global i32 0, align 4
@MLX5_ATOMIC_OPS_FETCH_ADD = common dso_local global i32 0, align 4
@MLX5_ATOMIC_SIZE_QP_8BYTES = common dso_local global i32 0, align 4
@IB_ATOMIC_HCA = common dso_local global i32 0, align 4
@IB_ATOMIC_NONE = common dso_local global i32 0, align 4
@atomic_operations = common dso_local global i32 0, align 4
@atomic_req_8B_endianness_mode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_ib_dev*, i32, %struct.ib_device_attr*)* @get_atomic_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_atomic_caps(%struct.mlx5_ib_dev* %0, i32 %1, %struct.ib_device_attr* %2) #0 {
  %4 = alloca %struct.mlx5_ib_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_device_attr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ib_device_attr* %2, %struct.ib_device_attr** %6, align 8
  %10 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %11 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @MLX5_CAP_ATOMIC(i32 %12, i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %16 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @MLX5_CAP_ATOMIC(i32 %17, i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* @MLX5_ATOMIC_OPS_CMP_SWAP, align 4
  %21 = load i32, i32* @MLX5_ATOMIC_OPS_FETCH_ADD, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %7, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* %7, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %3
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @MLX5_ATOMIC_SIZE_QP_8BYTES, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load i32, i32* @IB_ATOMIC_HCA, align 4
  %38 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %39 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  br label %44

40:                                               ; preds = %33, %28, %3
  %41 = load i32, i32* @IB_ATOMIC_NONE, align 4
  %42 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %43 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %40, %36
  ret void
}

declare dso_local i32 @MLX5_CAP_ATOMIC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
