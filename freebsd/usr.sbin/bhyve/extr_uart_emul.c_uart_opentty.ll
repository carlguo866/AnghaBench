; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_uart_emul.c_uart_opentty.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_uart_emul.c_uart_opentty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EVF_READ = common dso_local global i32 0, align 4
@uart_drain = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_softc*)* @uart_opentty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uart_opentty(%struct.uart_softc* %0) #0 {
  %2 = alloca %struct.uart_softc*, align 8
  store %struct.uart_softc* %0, %struct.uart_softc** %2, align 8
  %3 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %4 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %3, i32 0, i32 1
  %5 = call i32 @ttyopen(%struct.TYPE_2__* %4)
  %6 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %7 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @EVF_READ, align 4
  %11 = load i32, i32* @uart_drain, align 4
  %12 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %13 = call i32* @mevent_add(i32 %9, i32 %10, i32 %11, %struct.uart_softc* %12)
  %14 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %15 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %14, i32 0, i32 0
  store i32* %13, i32** %15, align 8
  %16 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %17 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  ret void
}

declare dso_local i32 @ttyopen(%struct.TYPE_2__*) #1

declare dso_local i32* @mevent_add(i32, i32, i32, %struct.uart_softc*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
