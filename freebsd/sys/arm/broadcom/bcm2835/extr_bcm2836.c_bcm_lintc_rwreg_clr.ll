; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2836.c_bcm_lintc_rwreg_clr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2836.c_bcm_lintc_rwreg_clr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_lintc_softc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm_lintc_softc*, i32, i32)* @bcm_lintc_rwreg_clr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_lintc_rwreg_clr(%struct.bcm_lintc_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bcm_lintc_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bcm_lintc_softc* %0, %struct.bcm_lintc_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.bcm_lintc_softc*, %struct.bcm_lintc_softc** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.bcm_lintc_softc*, %struct.bcm_lintc_softc** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @bcm_lintc_read_4(%struct.bcm_lintc_softc* %9, i32 %10)
  %12 = load i32, i32* %6, align 4
  %13 = xor i32 %12, -1
  %14 = and i32 %11, %13
  %15 = call i32 @bcm_lintc_write_4(%struct.bcm_lintc_softc* %7, i32 %8, i32 %14)
  ret void
}

declare dso_local i32 @bcm_lintc_write_4(%struct.bcm_lintc_softc*, i32, i32) #1

declare dso_local i32 @bcm_lintc_read_4(%struct.bcm_lintc_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
