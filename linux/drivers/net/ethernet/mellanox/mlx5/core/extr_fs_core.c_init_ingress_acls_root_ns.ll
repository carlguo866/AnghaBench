; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_init_ingress_acls_root_ns.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_init_ingress_acls_root_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mlx5_flow_steering* }
%struct.mlx5_flow_steering = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*)* @init_ingress_acls_root_ns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_ingress_acls_root_ns(%struct.mlx5_core_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca %struct.mlx5_flow_steering*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %3, align 8
  %8 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %9 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.mlx5_flow_steering*, %struct.mlx5_flow_steering** %10, align 8
  store %struct.mlx5_flow_steering* %11, %struct.mlx5_flow_steering** %4, align 8
  %12 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %13 = call i32 @mlx5_eswitch_get_total_vports(%struct.mlx5_core_dev* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i32* @kcalloc(i32 %14, i32 4, i32 %15)
  %17 = load %struct.mlx5_flow_steering*, %struct.mlx5_flow_steering** %4, align 8
  %18 = getelementptr inbounds %struct.mlx5_flow_steering, %struct.mlx5_flow_steering* %17, i32 0, i32 0
  store i32* %16, i32** %18, align 8
  %19 = load %struct.mlx5_flow_steering*, %struct.mlx5_flow_steering** %4, align 8
  %20 = getelementptr inbounds %struct.mlx5_flow_steering, %struct.mlx5_flow_steering* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %69

26:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %39, %26
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %27
  %32 = load %struct.mlx5_flow_steering*, %struct.mlx5_flow_steering** %4, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @init_ingress_acl_root_ns(%struct.mlx5_flow_steering* %32, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %43

38:                                               ; preds = %31
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %27

42:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %69

43:                                               ; preds = %37
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %58, %43
  %47 = load i32, i32* %7, align 4
  %48 = icmp sge i32 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %46
  %50 = load %struct.mlx5_flow_steering*, %struct.mlx5_flow_steering** %4, align 8
  %51 = getelementptr inbounds %struct.mlx5_flow_steering, %struct.mlx5_flow_steering* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @cleanup_root_ns(i32 %56)
  br label %58

58:                                               ; preds = %49
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %7, align 4
  br label %46

61:                                               ; preds = %46
  %62 = load %struct.mlx5_flow_steering*, %struct.mlx5_flow_steering** %4, align 8
  %63 = getelementptr inbounds %struct.mlx5_flow_steering, %struct.mlx5_flow_steering* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @kfree(i32* %64)
  %66 = load %struct.mlx5_flow_steering*, %struct.mlx5_flow_steering** %4, align 8
  %67 = getelementptr inbounds %struct.mlx5_flow_steering, %struct.mlx5_flow_steering* %66, i32 0, i32 0
  store i32* null, i32** %67, align 8
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %61, %42, %23
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @mlx5_eswitch_get_total_vports(%struct.mlx5_core_dev*) #1

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @init_ingress_acl_root_ns(%struct.mlx5_flow_steering*, i32) #1

declare dso_local i32 @cleanup_root_ns(i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
