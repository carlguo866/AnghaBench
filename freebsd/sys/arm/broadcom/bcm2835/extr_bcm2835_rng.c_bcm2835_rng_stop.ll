; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_rng.c_bcm2835_rng_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_rng.c_bcm2835_rng_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm2835_rng_softc = type { i32 }

@RNG_CTRL = common dso_local global i32 0, align 4
@RNG_RBGEN_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm2835_rng_softc*)* @bcm2835_rng_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm2835_rng_stop(%struct.bcm2835_rng_softc* %0) #0 {
  %2 = alloca %struct.bcm2835_rng_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.bcm2835_rng_softc* %0, %struct.bcm2835_rng_softc** %2, align 8
  %4 = load %struct.bcm2835_rng_softc*, %struct.bcm2835_rng_softc** %2, align 8
  %5 = load i32, i32* @RNG_CTRL, align 4
  %6 = call i32 @bcm2835_rng_read4(%struct.bcm2835_rng_softc* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @RNG_RBGEN_BIT, align 4
  %8 = xor i32 %7, -1
  %9 = load i32, i32* %3, align 4
  %10 = and i32 %9, %8
  store i32 %10, i32* %3, align 4
  %11 = load %struct.bcm2835_rng_softc*, %struct.bcm2835_rng_softc** %2, align 8
  %12 = load i32, i32* @RNG_CTRL, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @bcm2835_rng_write4(%struct.bcm2835_rng_softc* %11, i32 %12, i32 %13)
  ret void
}

declare dso_local i32 @bcm2835_rng_read4(%struct.bcm2835_rng_softc*, i32) #1

declare dso_local i32 @bcm2835_rng_write4(%struct.bcm2835_rng_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
