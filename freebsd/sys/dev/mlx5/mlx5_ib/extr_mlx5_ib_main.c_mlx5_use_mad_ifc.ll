; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_main.c_mlx5_use_mad_ifc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_main.c_mlx5_use_mad_ifc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32 }

@port_type = common dso_local global i32 0, align 4
@MLX5_CAP_PORT_TYPE_IB = common dso_local global i64 0, align 8
@ib_virt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*)* @mlx5_use_mad_ifc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_use_mad_ifc(%struct.mlx5_ib_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5_ib_dev*, align 8
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %3, align 8
  %4 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %5 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @port_type, align 4
  %8 = call i64 @MLX5_CAP_GEN(i32 %6, i32 %7)
  %9 = load i64, i64* @MLX5_CAP_PORT_TYPE_IB, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %20

11:                                               ; preds = %1
  %12 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %13 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @ib_virt, align 4
  %16 = call i64 @MLX5_CAP_GEN(i32 %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %2, align 4
  br label %21

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %21

21:                                               ; preds = %20, %11
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i64 @MLX5_CAP_GEN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
