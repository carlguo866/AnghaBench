; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_uart.c_vf_uart_bus_param.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_uart.c_vf_uart_bus_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_softc*, i32, i32, i32, i32)* @vf_uart_bus_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vf_uart_bus_param(%struct.uart_softc* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.uart_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.uart_softc* %0, %struct.uart_softc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load %struct.uart_softc*, %struct.uart_softc** %6, align 8
  %12 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @uart_lock(i32 %13)
  %15 = load %struct.uart_softc*, %struct.uart_softc** %6, align 8
  %16 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %15, i32 0, i32 1
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %10, align 4
  %21 = call i32 @vf_uart_init(i32* %16, i32 %17, i32 %18, i32 %19, i32 %20)
  %22 = load %struct.uart_softc*, %struct.uart_softc** %6, align 8
  %23 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @uart_unlock(i32 %24)
  ret i32 0
}

declare dso_local i32 @uart_lock(i32) #1

declare dso_local i32 @vf_uart_init(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @uart_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
