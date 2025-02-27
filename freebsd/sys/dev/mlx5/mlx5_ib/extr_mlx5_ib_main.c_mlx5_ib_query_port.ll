; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_main.c_mlx5_ib_query_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_main.c_mlx5_ib_query_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_port_attr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_ib_query_port(%struct.ib_device* %0, i32 %1, %struct.ib_port_attr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_port_attr*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ib_port_attr* %2, %struct.ib_port_attr** %7, align 8
  %8 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %9 = call i32 @mlx5_get_vport_access_method(%struct.ib_device* %8)
  switch i32 %9, label %25 [
    i32 129, label %10
    i32 130, label %15
    i32 128, label %20
  ]

10:                                               ; preds = %3
  %11 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %14 = call i32 @mlx5_query_mad_ifc_port(%struct.ib_device* %11, i32 %12, %struct.ib_port_attr* %13)
  store i32 %14, i32* %4, align 4
  br label %28

15:                                               ; preds = %3
  %16 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %19 = call i32 @mlx5_query_hca_port(%struct.ib_device* %16, i32 %17, %struct.ib_port_attr* %18)
  store i32 %19, i32* %4, align 4
  br label %28

20:                                               ; preds = %3
  %21 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %24 = call i32 @mlx5_query_port_roce(%struct.ib_device* %21, i32 %22, %struct.ib_port_attr* %23)
  store i32 %24, i32* %4, align 4
  br label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %25, %20, %15, %10
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i32 @mlx5_get_vport_access_method(%struct.ib_device*) #1

declare dso_local i32 @mlx5_query_mad_ifc_port(%struct.ib_device*, i32, %struct.ib_port_attr*) #1

declare dso_local i32 @mlx5_query_hca_port(%struct.ib_device*, i32, %struct.ib_port_attr*) #1

declare dso_local i32 @mlx5_query_port_roce(%struct.ib_device*, i32, %struct.ib_port_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
