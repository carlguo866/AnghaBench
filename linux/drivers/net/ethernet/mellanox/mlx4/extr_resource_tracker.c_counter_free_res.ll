; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_resource_tracker.c_counter_free_res.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_resource_tracker.c_counter_free_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }

@RES_OP_RESERVE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RES_COUNTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_dev*, i32, i32, i32, i32, i32*)* @counter_free_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @counter_free_res(%struct.mlx4_dev* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* @RES_OP_RESERVE, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %6
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %7, align 4
  br label %48

22:                                               ; preds = %6
  %23 = call i32 @get_param_l(i32* %12)
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* %14, align 4
  %25 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %26 = call i32 @MLX4_SINK_COUNTER_INDEX(%struct.mlx4_dev* %25)
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 0, i32* %7, align 4
  br label %48

29:                                               ; preds = %22
  %30 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %14, align 4
  %33 = load i32, i32* @RES_COUNTER, align 4
  %34 = call i32 @rem_res_range(%struct.mlx4_dev* %30, i32 %31, i32 %32, i32 1, i32 %33, i32 0)
  store i32 %34, i32* %15, align 4
  %35 = load i32, i32* %15, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load i32, i32* %15, align 4
  store i32 %38, i32* %7, align 4
  br label %48

39:                                               ; preds = %29
  %40 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %41 = load i32, i32* %14, align 4
  %42 = call i32 @__mlx4_counter_free(%struct.mlx4_dev* %40, i32 %41)
  %43 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @RES_COUNTER, align 4
  %46 = call i32 @mlx4_release_resource(%struct.mlx4_dev* %43, i32 %44, i32 %45, i32 1, i32 0)
  %47 = load i32, i32* %15, align 4
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %39, %37, %28, %19
  %49 = load i32, i32* %7, align 4
  ret i32 %49
}

declare dso_local i32 @get_param_l(i32*) #1

declare dso_local i32 @MLX4_SINK_COUNTER_INDEX(%struct.mlx4_dev*) #1

declare dso_local i32 @rem_res_range(%struct.mlx4_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @__mlx4_counter_free(%struct.mlx4_dev*, i32) #1

declare dso_local i32 @mlx4_release_resource(%struct.mlx4_dev*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
