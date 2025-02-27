; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_cq.c_mlx5_ib_destroy_cq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_cq.c_mlx5_ib_destroy_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { i32 }
%struct.ib_udata = type { i32 }
%struct.mlx5_ib_dev = type { i32 }
%struct.mlx5_ib_cq = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5_ib_destroy_cq(%struct.ib_cq* %0, %struct.ib_udata* %1) #0 {
  %3 = alloca %struct.ib_cq*, align 8
  %4 = alloca %struct.ib_udata*, align 8
  %5 = alloca %struct.mlx5_ib_dev*, align 8
  %6 = alloca %struct.mlx5_ib_cq*, align 8
  store %struct.ib_cq* %0, %struct.ib_cq** %3, align 8
  store %struct.ib_udata* %1, %struct.ib_udata** %4, align 8
  %7 = load %struct.ib_cq*, %struct.ib_cq** %3, align 8
  %8 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.mlx5_ib_dev* @to_mdev(i32 %9)
  store %struct.mlx5_ib_dev* %10, %struct.mlx5_ib_dev** %5, align 8
  %11 = load %struct.ib_cq*, %struct.ib_cq** %3, align 8
  %12 = call %struct.mlx5_ib_cq* @to_mcq(%struct.ib_cq* %11)
  store %struct.mlx5_ib_cq* %12, %struct.mlx5_ib_cq** %6, align 8
  %13 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %14 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %6, align 8
  %17 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %16, i32 0, i32 0
  %18 = call i32 @mlx5_core_destroy_cq(i32 %15, i32* %17)
  %19 = load %struct.ib_udata*, %struct.ib_udata** %4, align 8
  %20 = icmp ne %struct.ib_udata* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %6, align 8
  %23 = load %struct.ib_udata*, %struct.ib_udata** %4, align 8
  %24 = call i32 @destroy_cq_user(%struct.mlx5_ib_cq* %22, %struct.ib_udata* %23)
  br label %29

25:                                               ; preds = %2
  %26 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %27 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %6, align 8
  %28 = call i32 @destroy_cq_kernel(%struct.mlx5_ib_dev* %26, %struct.mlx5_ib_cq* %27)
  br label %29

29:                                               ; preds = %25, %21
  ret void
}

declare dso_local %struct.mlx5_ib_dev* @to_mdev(i32) #1

declare dso_local %struct.mlx5_ib_cq* @to_mcq(%struct.ib_cq*) #1

declare dso_local i32 @mlx5_core_destroy_cq(i32, i32*) #1

declare dso_local i32 @destroy_cq_user(%struct.mlx5_ib_cq*, %struct.ib_udata*) #1

declare dso_local i32 @destroy_cq_kernel(%struct.mlx5_ib_dev*, %struct.mlx5_ib_cq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
