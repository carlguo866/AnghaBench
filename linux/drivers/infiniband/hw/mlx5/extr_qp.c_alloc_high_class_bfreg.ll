; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_alloc_high_class_bfreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_alloc_high_class_bfreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32 }
%struct.mlx5_bfreg_info = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*, %struct.mlx5_bfreg_info*)* @alloc_high_class_bfreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_high_class_bfreg(%struct.mlx5_ib_dev* %0, %struct.mlx5_bfreg_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_ib_dev*, align 8
  %5 = alloca %struct.mlx5_bfreg_info*, align 8
  %6 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %4, align 8
  store %struct.mlx5_bfreg_info* %1, %struct.mlx5_bfreg_info** %5, align 8
  %7 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %8 = load %struct.mlx5_bfreg_info*, %struct.mlx5_bfreg_info** %5, align 8
  %9 = call i32 @first_hi_bfreg(%struct.mlx5_ib_dev* %7, %struct.mlx5_bfreg_info* %8)
  store i32 %9, i32* %6, align 4
  br label %10

10:                                               ; preds = %36, %2
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %13 = load %struct.mlx5_bfreg_info*, %struct.mlx5_bfreg_info** %5, align 8
  %14 = call i32 @max_bfregs(%struct.mlx5_ib_dev* %12, %struct.mlx5_bfreg_info* %13)
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %39

16:                                               ; preds = %10
  %17 = load %struct.mlx5_bfreg_info*, %struct.mlx5_bfreg_info** %5, align 8
  %18 = getelementptr inbounds %struct.mlx5_bfreg_info, %struct.mlx5_bfreg_info* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %16
  %26 = load %struct.mlx5_bfreg_info*, %struct.mlx5_bfreg_info** %5, align 8
  %27 = getelementptr inbounds %struct.mlx5_bfreg_info, %struct.mlx5_bfreg_info* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %3, align 4
  br label %42

35:                                               ; preds = %16
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %6, align 4
  br label %10

39:                                               ; preds = %10
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %39, %25
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @first_hi_bfreg(%struct.mlx5_ib_dev*, %struct.mlx5_bfreg_info*) #1

declare dso_local i32 @max_bfregs(%struct.mlx5_ib_dev*, %struct.mlx5_bfreg_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
