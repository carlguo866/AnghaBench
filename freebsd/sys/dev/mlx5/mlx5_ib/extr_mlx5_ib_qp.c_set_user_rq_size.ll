; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_set_user_rq_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_set_user_rq_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32 }
%struct.ib_wq_init_attr = type { i32 }
%struct.mlx5_ib_create_wq = type { i32, i32 }
%struct.mlx5_ib_rwq = type { i32, i32, i32, i32, i32 }

@log_max_wq_sz = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*, %struct.ib_wq_init_attr*, %struct.mlx5_ib_create_wq*, %struct.mlx5_ib_rwq*)* @set_user_rq_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_user_rq_size(%struct.mlx5_ib_dev* %0, %struct.ib_wq_init_attr* %1, %struct.mlx5_ib_create_wq* %2, %struct.mlx5_ib_rwq* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_ib_dev*, align 8
  %7 = alloca %struct.ib_wq_init_attr*, align 8
  %8 = alloca %struct.mlx5_ib_create_wq*, align 8
  %9 = alloca %struct.mlx5_ib_rwq*, align 8
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %6, align 8
  store %struct.ib_wq_init_attr* %1, %struct.ib_wq_init_attr** %7, align 8
  store %struct.mlx5_ib_create_wq* %2, %struct.mlx5_ib_create_wq** %8, align 8
  store %struct.mlx5_ib_rwq* %3, %struct.mlx5_ib_rwq** %9, align 8
  %10 = load %struct.ib_wq_init_attr*, %struct.ib_wq_init_attr** %7, align 8
  %11 = getelementptr inbounds %struct.ib_wq_init_attr, %struct.ib_wq_init_attr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %14 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @log_max_wq_sz, align 4
  %17 = call i32 @MLX5_CAP_GEN(i32 %15, i32 %16)
  %18 = shl i32 1, %17
  %19 = icmp sgt i32 %12, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %62

23:                                               ; preds = %4
  %24 = load %struct.mlx5_ib_create_wq*, %struct.mlx5_ib_create_wq** %8, align 8
  %25 = getelementptr inbounds %struct.mlx5_ib_create_wq, %struct.mlx5_ib_create_wq* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %62

31:                                               ; preds = %23
  %32 = load %struct.mlx5_ib_create_wq*, %struct.mlx5_ib_create_wq** %8, align 8
  %33 = getelementptr inbounds %struct.mlx5_ib_create_wq, %struct.mlx5_ib_create_wq* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.mlx5_ib_rwq*, %struct.mlx5_ib_rwq** %9, align 8
  %36 = getelementptr inbounds %struct.mlx5_ib_rwq, %struct.mlx5_ib_rwq* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.mlx5_ib_create_wq*, %struct.mlx5_ib_create_wq** %8, align 8
  %38 = getelementptr inbounds %struct.mlx5_ib_create_wq, %struct.mlx5_ib_create_wq* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.mlx5_ib_rwq*, %struct.mlx5_ib_rwq** %9, align 8
  %41 = getelementptr inbounds %struct.mlx5_ib_rwq, %struct.mlx5_ib_rwq* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.mlx5_ib_rwq*, %struct.mlx5_ib_rwq** %9, align 8
  %43 = getelementptr inbounds %struct.mlx5_ib_rwq, %struct.mlx5_ib_rwq* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.mlx5_ib_rwq*, %struct.mlx5_ib_rwq** %9, align 8
  %46 = getelementptr inbounds %struct.mlx5_ib_rwq, %struct.mlx5_ib_rwq* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 %44, %47
  %49 = load %struct.mlx5_ib_rwq*, %struct.mlx5_ib_rwq** %9, align 8
  %50 = getelementptr inbounds %struct.mlx5_ib_rwq, %struct.mlx5_ib_rwq* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = load %struct.mlx5_ib_rwq*, %struct.mlx5_ib_rwq** %9, align 8
  %52 = getelementptr inbounds %struct.mlx5_ib_rwq, %struct.mlx5_ib_rwq* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.mlx5_ib_rwq*, %struct.mlx5_ib_rwq** %9, align 8
  %55 = getelementptr inbounds %struct.mlx5_ib_rwq, %struct.mlx5_ib_rwq* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 4
  %56 = load %struct.mlx5_ib_rwq*, %struct.mlx5_ib_rwq** %9, align 8
  %57 = getelementptr inbounds %struct.mlx5_ib_rwq, %struct.mlx5_ib_rwq* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @ilog2(i32 %58)
  %60 = load %struct.mlx5_ib_rwq*, %struct.mlx5_ib_rwq** %9, align 8
  %61 = getelementptr inbounds %struct.mlx5_ib_rwq, %struct.mlx5_ib_rwq* %60, i32 0, i32 4
  store i32 %59, i32* %61, align 4
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %31, %28, %20
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i32 @MLX5_CAP_GEN(i32, i32) #1

declare dso_local i32 @ilog2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
