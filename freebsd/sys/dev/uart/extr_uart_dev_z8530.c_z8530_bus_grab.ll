; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_z8530.c_z8530_bus_grab.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_z8530.c_z8530_bus_grab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i32, %struct.uart_bas }
%struct.uart_bas = type { i32 }

@WR_IDT = common dso_local global i32 0, align 4
@IDT_XIE = common dso_local global i32 0, align 4
@IDT_TIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_softc*)* @z8530_bus_grab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @z8530_bus_grab(%struct.uart_softc* %0) #0 {
  %2 = alloca %struct.uart_softc*, align 8
  %3 = alloca %struct.uart_bas*, align 8
  store %struct.uart_softc* %0, %struct.uart_softc** %2, align 8
  %4 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %5 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %4, i32 0, i32 1
  store %struct.uart_bas* %5, %struct.uart_bas** %3, align 8
  %6 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %7 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @uart_lock(i32 %8)
  %10 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %11 = load i32, i32* @WR_IDT, align 4
  %12 = load i32, i32* @IDT_XIE, align 4
  %13 = load i32, i32* @IDT_TIE, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @uart_setmreg(%struct.uart_bas* %10, i32 %11, i32 %14)
  %16 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %17 = call i32 @uart_barrier(%struct.uart_bas* %16)
  %18 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %19 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @uart_unlock(i32 %20)
  ret void
}

declare dso_local i32 @uart_lock(i32) #1

declare dso_local i32 @uart_setmreg(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @uart_barrier(%struct.uart_bas*) #1

declare dso_local i32 @uart_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
