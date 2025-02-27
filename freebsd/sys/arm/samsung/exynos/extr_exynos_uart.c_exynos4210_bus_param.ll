; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_exynos_uart.c_exynos4210_bus_param.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_exynos_uart.c_exynos4210_bus_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@DEF_CLK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"exynos4210_init: Invalid rclk\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_softc*, i32, i32, i32, i32)* @exynos4210_bus_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos4210_bus_param(%struct.uart_softc* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.uart_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.uart_softc* %0, %struct.uart_softc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.uart_softc*, %struct.uart_softc** %6, align 8
  %13 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %5
  %18 = load i64, i64* @DEF_CLK, align 8
  %19 = load %struct.uart_softc*, %struct.uart_softc** %6, align 8
  %20 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i64 %18, i64* %21, align 8
  br label %22

22:                                               ; preds = %17, %5
  %23 = load %struct.uart_softc*, %struct.uart_softc** %6, align 8
  %24 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 @KASSERT(i32 %28, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.uart_softc*, %struct.uart_softc** %6, align 8
  %31 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @uart_lock(i32 %32)
  %34 = load %struct.uart_softc*, %struct.uart_softc** %6, align 8
  %35 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %34, i32 0, i32 1
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @exynos4210_uart_param(%struct.TYPE_2__* %35, i32 %36, i32 %37, i32 %38, i32 %39)
  store i32 %40, i32* %11, align 4
  %41 = load %struct.uart_softc*, %struct.uart_softc** %6, align 8
  %42 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @uart_unlock(i32 %43)
  %45 = load i32, i32* %11, align 4
  ret i32 %45
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @uart_lock(i32) #1

declare dso_local i32 @exynos4210_uart_param(%struct.TYPE_2__*, i32, i32, i32, i32) #1

declare dso_local i32 @uart_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
