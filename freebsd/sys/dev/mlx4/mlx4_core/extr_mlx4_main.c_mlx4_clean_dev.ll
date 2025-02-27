; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_main.c_mlx4_clean_dev.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_main.c_mlx4_clean_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i64, %struct.mlx4_dev_persistent* }
%struct.mlx4_dev_persistent = type { i32 }
%struct.mlx4_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.mlx4_dev_persistent* }

@RESET_PERSIST_MASK_FLAGS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_dev*)* @mlx4_clean_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx4_clean_dev(%struct.mlx4_dev* %0) #0 {
  %2 = alloca %struct.mlx4_dev*, align 8
  %3 = alloca %struct.mlx4_dev_persistent*, align 8
  %4 = alloca %struct.mlx4_priv*, align 8
  %5 = alloca i64, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %2, align 8
  %6 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %7 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %6, i32 0, i32 1
  %8 = load %struct.mlx4_dev_persistent*, %struct.mlx4_dev_persistent** %7, align 8
  store %struct.mlx4_dev_persistent* %8, %struct.mlx4_dev_persistent** %3, align 8
  %9 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %10 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %9)
  store %struct.mlx4_priv* %10, %struct.mlx4_priv** %4, align 8
  %11 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %12 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @RESET_PERSIST_MASK_FLAGS, align 8
  %15 = and i64 %13, %14
  store i64 %15, i64* %5, align 8
  %16 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %17 = call i32 @memset(%struct.mlx4_priv* %16, i32 0, i32 16)
  %18 = load %struct.mlx4_dev_persistent*, %struct.mlx4_dev_persistent** %3, align 8
  %19 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %20 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  store %struct.mlx4_dev_persistent* %18, %struct.mlx4_dev_persistent** %21, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %24 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i64 %22, i64* %25, align 8
  ret void
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @memset(%struct.mlx4_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
