; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_resource_tracker.c_srq_alloc_res.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_resource_tracker.c_srq_alloc_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }

@RES_SRQ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_dev*, i32, i32, i32, i32, i32*)* @srq_alloc_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @srq_alloc_res(%struct.mlx4_dev* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.mlx4_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %15 = load i32, i32* %9, align 4
  switch i32 %15, label %54 [
    i32 128, label %16
  ]

16:                                               ; preds = %6
  %17 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @RES_SRQ, align 4
  %20 = call i32 @mlx4_grant_resource(%struct.mlx4_dev* %17, i32 %18, i32 %19, i32 1, i32 0)
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* %14, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %57

24:                                               ; preds = %16
  %25 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %26 = call i32 @__mlx4_srq_alloc_icm(%struct.mlx4_dev* %25, i32* %13)
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %14, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @RES_SRQ, align 4
  %33 = call i32 @mlx4_release_resource(%struct.mlx4_dev* %30, i32 %31, i32 %32, i32 1, i32 0)
  br label %57

34:                                               ; preds = %24
  %35 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* @RES_SRQ, align 4
  %39 = call i32 @add_res_range(%struct.mlx4_dev* %35, i32 %36, i32 %37, i32 1, i32 %38, i32 0)
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %14, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %34
  %43 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @RES_SRQ, align 4
  %46 = call i32 @mlx4_release_resource(%struct.mlx4_dev* %43, i32 %44, i32 %45, i32 1, i32 0)
  %47 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %48 = load i32, i32* %13, align 4
  %49 = call i32 @__mlx4_srq_free_icm(%struct.mlx4_dev* %47, i32 %48)
  br label %57

50:                                               ; preds = %34
  %51 = load i32*, i32** %12, align 8
  %52 = load i32, i32* %13, align 4
  %53 = call i32 @set_param_l(i32* %51, i32 %52)
  br label %57

54:                                               ; preds = %6
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %14, align 4
  br label %57

57:                                               ; preds = %54, %50, %42, %29, %23
  %58 = load i32, i32* %14, align 4
  ret i32 %58
}

declare dso_local i32 @mlx4_grant_resource(%struct.mlx4_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @__mlx4_srq_alloc_icm(%struct.mlx4_dev*, i32*) #1

declare dso_local i32 @mlx4_release_resource(%struct.mlx4_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @add_res_range(%struct.mlx4_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @__mlx4_srq_free_icm(%struct.mlx4_dev*, i32) #1

declare dso_local i32 @set_param_l(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
