; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_machfb.c_machfb_reset_engine.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_machfb.c_machfb_reset_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.machfb_softc = type { i32 }

@GEN_TEST_CNTL = common dso_local global i32 0, align 4
@GUI_ENGINE_ENABLE = common dso_local global i32 0, align 4
@BUS_CNTL = common dso_local global i32 0, align 4
@BUS_HOST_ERR_ACK = common dso_local global i32 0, align 4
@BUS_FIFO_ERR_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.machfb_softc*)* @machfb_reset_engine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @machfb_reset_engine(%struct.machfb_softc* %0) #0 {
  %2 = alloca %struct.machfb_softc*, align 8
  store %struct.machfb_softc* %0, %struct.machfb_softc** %2, align 8
  %3 = load %struct.machfb_softc*, %struct.machfb_softc** %2, align 8
  %4 = load i32, i32* @GEN_TEST_CNTL, align 4
  %5 = load %struct.machfb_softc*, %struct.machfb_softc** %2, align 8
  %6 = load i32, i32* @GEN_TEST_CNTL, align 4
  %7 = call i32 @regr(%struct.machfb_softc* %5, i32 %6)
  %8 = load i32, i32* @GUI_ENGINE_ENABLE, align 4
  %9 = xor i32 %8, -1
  %10 = and i32 %7, %9
  %11 = call i32 @regw(%struct.machfb_softc* %3, i32 %4, i32 %10)
  %12 = load %struct.machfb_softc*, %struct.machfb_softc** %2, align 8
  %13 = load i32, i32* @GEN_TEST_CNTL, align 4
  %14 = load %struct.machfb_softc*, %struct.machfb_softc** %2, align 8
  %15 = load i32, i32* @GEN_TEST_CNTL, align 4
  %16 = call i32 @regr(%struct.machfb_softc* %14, i32 %15)
  %17 = load i32, i32* @GUI_ENGINE_ENABLE, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @regw(%struct.machfb_softc* %12, i32 %13, i32 %18)
  %20 = load %struct.machfb_softc*, %struct.machfb_softc** %2, align 8
  %21 = load i32, i32* @BUS_CNTL, align 4
  %22 = load %struct.machfb_softc*, %struct.machfb_softc** %2, align 8
  %23 = load i32, i32* @BUS_CNTL, align 4
  %24 = call i32 @regr(%struct.machfb_softc* %22, i32 %23)
  %25 = load i32, i32* @BUS_HOST_ERR_ACK, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @BUS_FIFO_ERR_ACK, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @regw(%struct.machfb_softc* %20, i32 %21, i32 %28)
  ret void
}

declare dso_local i32 @regw(%struct.machfb_softc*, i32, i32) #1

declare dso_local i32 @regr(%struct.machfb_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
