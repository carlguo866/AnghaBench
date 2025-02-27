; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_port.c_mlx5e_port_set_pbmc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_port.c_mlx5e_port_set_pbmc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }

@pbmc_reg = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@local_port = common dso_local global i32 0, align 4
@MLX5_REG_PBMC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5e_port_set_pbmc(%struct.mlx5_core_dev* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i32, i32* @pbmc_reg, align 4
  %10 = call i32 @MLX5_ST_SZ_BYTES(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i8* @kzalloc(i32 %11, i32 %12)
  store i8* %13, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %34

19:                                               ; preds = %2
  %20 = load i32, i32* @pbmc_reg, align 4
  %21 = load i8*, i8** %5, align 8
  %22 = load i32, i32* @local_port, align 4
  %23 = call i32 @MLX5_SET(i32 %20, i8* %21, i32 %22, i32 1)
  %24 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i8*, i8** %7, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @MLX5_REG_PBMC, align 4
  %30 = call i32 @mlx5_core_access_reg(%struct.mlx5_core_dev* %24, i8* %25, i32 %26, i8* %27, i32 %28, i32 %29, i32 0, i32 1)
  store i32 %30, i32* %8, align 4
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @kfree(i8* %31)
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %19, %16
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @MLX5_SET(i32, i8*, i32, i32) #1

declare dso_local i32 @mlx5_core_access_reg(%struct.mlx5_core_dev*, i8*, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
