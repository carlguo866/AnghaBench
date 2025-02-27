; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c___mlx5_ib_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c___mlx5_ib_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32, i32 }
%struct.mlx5_ib_profile = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.mlx5_ib_dev*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__mlx5_ib_remove(%struct.mlx5_ib_dev* %0, %struct.mlx5_ib_profile* %1, i32 %2) #0 {
  %4 = alloca %struct.mlx5_ib_dev*, align 8
  %5 = alloca %struct.mlx5_ib_profile*, align 8
  %6 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %4, align 8
  store %struct.mlx5_ib_profile* %1, %struct.mlx5_ib_profile** %5, align 8
  store i32 %2, i32* %6, align 4
  br label %7

7:                                                ; preds = %33, %3
  %8 = load i32, i32* %6, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %34

10:                                               ; preds = %7
  %11 = load i32, i32* %6, align 4
  %12 = add nsw i32 %11, -1
  store i32 %12, i32* %6, align 4
  %13 = load %struct.mlx5_ib_profile*, %struct.mlx5_ib_profile** %5, align 8
  %14 = getelementptr inbounds %struct.mlx5_ib_profile, %struct.mlx5_ib_profile* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (%struct.mlx5_ib_dev*)*, i32 (%struct.mlx5_ib_dev*)** %19, align 8
  %21 = icmp ne i32 (%struct.mlx5_ib_dev*)* %20, null
  br i1 %21, label %22, label %33

22:                                               ; preds = %10
  %23 = load %struct.mlx5_ib_profile*, %struct.mlx5_ib_profile** %5, align 8
  %24 = getelementptr inbounds %struct.mlx5_ib_profile, %struct.mlx5_ib_profile* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (%struct.mlx5_ib_dev*)*, i32 (%struct.mlx5_ib_dev*)** %29, align 8
  %31 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %32 = call i32 %30(%struct.mlx5_ib_dev* %31)
  br label %33

33:                                               ; preds = %22, %10
  br label %7

34:                                               ; preds = %7
  %35 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %36 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @kfree(i32 %37)
  %39 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %40 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %39, i32 0, i32 0
  %41 = call i32 @ib_dealloc_device(i32* %40)
  ret void
}

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @ib_dealloc_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
