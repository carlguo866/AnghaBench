; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/le/extr_if_le_lebuffer.c_le_lebuffer_wrcsr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/le/extr_if_le_lebuffer.c_le_lebuffer_wrcsr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lance_softc = type { i32 }
%struct.le_lebuffer_softc = type { i32 }

@LEREG1_RAP = common dso_local global i32 0, align 4
@BUS_SPACE_BARRIER_WRITE = common dso_local global i32 0, align 4
@LEREG1_RDP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lance_softc*, i32, i32)* @le_lebuffer_wrcsr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @le_lebuffer_wrcsr(%struct.lance_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.lance_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.le_lebuffer_softc*, align 8
  store %struct.lance_softc* %0, %struct.lance_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.lance_softc*, %struct.lance_softc** %4, align 8
  %9 = bitcast %struct.lance_softc* %8 to %struct.le_lebuffer_softc*
  store %struct.le_lebuffer_softc* %9, %struct.le_lebuffer_softc** %7, align 8
  %10 = load %struct.le_lebuffer_softc*, %struct.le_lebuffer_softc** %7, align 8
  %11 = getelementptr inbounds %struct.le_lebuffer_softc, %struct.le_lebuffer_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @LEREG1_RAP, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @bus_write_2(i32 %12, i32 %13, i32 %14)
  %16 = load %struct.le_lebuffer_softc*, %struct.le_lebuffer_softc** %7, align 8
  %17 = getelementptr inbounds %struct.le_lebuffer_softc, %struct.le_lebuffer_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @LEREG1_RAP, align 4
  %20 = load i32, i32* @BUS_SPACE_BARRIER_WRITE, align 4
  %21 = call i32 @bus_barrier(i32 %18, i32 %19, i32 2, i32 %20)
  %22 = load %struct.le_lebuffer_softc*, %struct.le_lebuffer_softc** %7, align 8
  %23 = getelementptr inbounds %struct.le_lebuffer_softc, %struct.le_lebuffer_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @LEREG1_RDP, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @bus_write_2(i32 %24, i32 %25, i32 %26)
  ret void
}

declare dso_local i32 @bus_write_2(i32, i32, i32) #1

declare dso_local i32 @bus_barrier(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
