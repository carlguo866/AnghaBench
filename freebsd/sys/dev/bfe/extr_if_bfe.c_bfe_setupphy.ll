; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bfe/extr_if_bfe.c_bfe_setupphy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bfe/extr_if_bfe.c_bfe_setupphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfe_softc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfe_softc*)* @bfe_setupphy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfe_setupphy(%struct.bfe_softc* %0) #0 {
  %2 = alloca %struct.bfe_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.bfe_softc* %0, %struct.bfe_softc** %2, align 8
  %4 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %5 = call i32 @bfe_readphy(%struct.bfe_softc* %4, i32 26, i32* %3)
  %6 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %7 = load i32, i32* %3, align 4
  %8 = and i32 %7, 32767
  %9 = call i32 @bfe_writephy(%struct.bfe_softc* %6, i32 26, i32 %8)
  %10 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %11 = call i32 @bfe_readphy(%struct.bfe_softc* %10, i32 26, i32* %3)
  %12 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %13 = call i32 @bfe_readphy(%struct.bfe_softc* %12, i32 27, i32* %3)
  %14 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %15 = load i32, i32* %3, align 4
  %16 = or i32 %15, 64
  %17 = call i32 @bfe_writephy(%struct.bfe_softc* %14, i32 27, i32 %16)
  ret i32 0
}

declare dso_local i32 @bfe_readphy(%struct.bfe_softc*, i32, i32*) #1

declare dso_local i32 @bfe_writephy(%struct.bfe_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
