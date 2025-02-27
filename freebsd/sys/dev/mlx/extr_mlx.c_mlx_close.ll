; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx.c_mlx_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx.c_mlx_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.mlx_softc* }
%struct.mlx_softc = type { i32 }
%struct.thread = type { i32 }

@MLX_STATE_OPEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx_close(%struct.cdev* %0, i32 %1, i32 %2, %struct.thread* %3) #0 {
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.thread*, align 8
  %9 = alloca %struct.mlx_softc*, align 8
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.thread* %3, %struct.thread** %8, align 8
  %10 = load %struct.cdev*, %struct.cdev** %5, align 8
  %11 = getelementptr inbounds %struct.cdev, %struct.cdev* %10, i32 0, i32 0
  %12 = load %struct.mlx_softc*, %struct.mlx_softc** %11, align 8
  store %struct.mlx_softc* %12, %struct.mlx_softc** %9, align 8
  %13 = load %struct.mlx_softc*, %struct.mlx_softc** %9, align 8
  %14 = call i32 @MLX_CONFIG_LOCK(%struct.mlx_softc* %13)
  %15 = load %struct.mlx_softc*, %struct.mlx_softc** %9, align 8
  %16 = call i32 @MLX_IO_LOCK(%struct.mlx_softc* %15)
  %17 = load i32, i32* @MLX_STATE_OPEN, align 4
  %18 = xor i32 %17, -1
  %19 = load %struct.mlx_softc*, %struct.mlx_softc** %9, align 8
  %20 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load %struct.mlx_softc*, %struct.mlx_softc** %9, align 8
  %24 = call i32 @MLX_IO_UNLOCK(%struct.mlx_softc* %23)
  %25 = load %struct.mlx_softc*, %struct.mlx_softc** %9, align 8
  %26 = call i32 @MLX_CONFIG_UNLOCK(%struct.mlx_softc* %25)
  ret i32 0
}

declare dso_local i32 @MLX_CONFIG_LOCK(%struct.mlx_softc*) #1

declare dso_local i32 @MLX_IO_LOCK(%struct.mlx_softc*) #1

declare dso_local i32 @MLX_IO_UNLOCK(%struct.mlx_softc*) #1

declare dso_local i32 @MLX_CONFIG_UNLOCK(%struct.mlx_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
