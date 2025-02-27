; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_mad.c_mlx5_query_mad_ifc_node_desc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_mad.c_mlx5_query_mad_ifc_node_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32 }
%struct.ib_smp = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@IB_SMP_ATTR_NODE_DESC = common dso_local global i32 0, align 4
@IB_DEVICE_NODE_DESC_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_query_mad_ifc_node_desc(%struct.mlx5_ib_dev* %0, i8* %1) #0 {
  %3 = alloca %struct.mlx5_ib_dev*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ib_smp*, align 8
  %6 = alloca %struct.ib_smp*, align 8
  %7 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %3, align 8
  store i8* %1, i8** %4, align 8
  store %struct.ib_smp* null, %struct.ib_smp** %5, align 8
  store %struct.ib_smp* null, %struct.ib_smp** %6, align 8
  %8 = load i32, i32* @ENOMEM, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.ib_smp* @kzalloc(i32 8, i32 %10)
  store %struct.ib_smp* %11, %struct.ib_smp** %5, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.ib_smp* @kmalloc(i32 8, i32 %12)
  store %struct.ib_smp* %13, %struct.ib_smp** %6, align 8
  %14 = load %struct.ib_smp*, %struct.ib_smp** %5, align 8
  %15 = icmp ne %struct.ib_smp* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.ib_smp*, %struct.ib_smp** %6, align 8
  %18 = icmp ne %struct.ib_smp* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16, %2
  br label %40

20:                                               ; preds = %16
  %21 = load %struct.ib_smp*, %struct.ib_smp** %5, align 8
  %22 = call i32 @init_query_mad(%struct.ib_smp* %21)
  %23 = load i32, i32* @IB_SMP_ATTR_NODE_DESC, align 4
  %24 = load %struct.ib_smp*, %struct.ib_smp** %5, align 8
  %25 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %27 = load %struct.ib_smp*, %struct.ib_smp** %5, align 8
  %28 = load %struct.ib_smp*, %struct.ib_smp** %6, align 8
  %29 = call i32 @mlx5_MAD_IFC(%struct.mlx5_ib_dev* %26, i32 1, i32 1, i32 1, i32* null, i32* null, %struct.ib_smp* %27, %struct.ib_smp* %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %20
  br label %40

33:                                               ; preds = %20
  %34 = load i8*, i8** %4, align 8
  %35 = load %struct.ib_smp*, %struct.ib_smp** %6, align 8
  %36 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @IB_DEVICE_NODE_DESC_MAX, align 4
  %39 = call i32 @memcpy(i8* %34, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %33, %32, %19
  %41 = load %struct.ib_smp*, %struct.ib_smp** %5, align 8
  %42 = call i32 @kfree(%struct.ib_smp* %41)
  %43 = load %struct.ib_smp*, %struct.ib_smp** %6, align 8
  %44 = call i32 @kfree(%struct.ib_smp* %43)
  %45 = load i32, i32* %7, align 4
  ret i32 %45
}

declare dso_local %struct.ib_smp* @kzalloc(i32, i32) #1

declare dso_local %struct.ib_smp* @kmalloc(i32, i32) #1

declare dso_local i32 @init_query_mad(%struct.ib_smp*) #1

declare dso_local i32 @mlx5_MAD_IFC(%struct.mlx5_ib_dev*, i32, i32, i32, i32*, i32*, %struct.ib_smp*, %struct.ib_smp*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @kfree(%struct.ib_smp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
