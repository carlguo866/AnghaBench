; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_uart_dev_ar933x.c_ar933x_bus_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_uart_dev_ar933x.c_ar933x_bus_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { %struct.uart_bas }
%struct.uart_bas = type { i32 }
%struct.ar933x_softc = type { i32 }

@AR933X_UART_INT_RX_VALID = common dso_local global i32 0, align 4
@AR933X_UART_INT_EN_REG = common dso_local global i32 0, align 4
@AR933X_UART_CS_REG = common dso_local global i32 0, align 4
@AR933X_UART_CS_HOST_INT_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_softc*)* @ar933x_bus_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar933x_bus_attach(%struct.uart_softc* %0) #0 {
  %2 = alloca %struct.uart_softc*, align 8
  %3 = alloca %struct.ar933x_softc*, align 8
  %4 = alloca %struct.uart_bas*, align 8
  %5 = alloca i32, align 4
  store %struct.uart_softc* %0, %struct.uart_softc** %2, align 8
  %6 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %7 = bitcast %struct.uart_softc* %6 to %struct.ar933x_softc*
  store %struct.ar933x_softc* %7, %struct.ar933x_softc** %3, align 8
  %8 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %9 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %8, i32 0, i32 0
  store %struct.uart_bas* %9, %struct.uart_bas** %4, align 8
  %10 = load i32, i32* @AR933X_UART_INT_RX_VALID, align 4
  %11 = load %struct.ar933x_softc*, %struct.ar933x_softc** %3, align 8
  %12 = getelementptr inbounds %struct.ar933x_softc, %struct.ar933x_softc* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %14 = load i32, i32* @AR933X_UART_INT_EN_REG, align 4
  %15 = load %struct.ar933x_softc*, %struct.ar933x_softc** %3, align 8
  %16 = getelementptr inbounds %struct.ar933x_softc, %struct.ar933x_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ar933x_setreg(%struct.uart_bas* %13, i32 %14, i32 %17)
  %19 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %20 = load i32, i32* @AR933X_UART_CS_REG, align 4
  %21 = call i32 @ar933x_getreg(%struct.uart_bas* %19, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* @AR933X_UART_CS_HOST_INT_EN, align 4
  %23 = load i32, i32* %5, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %5, align 4
  %25 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %26 = load i32, i32* @AR933X_UART_CS_REG, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @ar933x_setreg(%struct.uart_bas* %25, i32 %26, i32 %27)
  ret i32 0
}

declare dso_local i32 @ar933x_setreg(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @ar933x_getreg(%struct.uart_bas*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
