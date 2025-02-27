; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_fsl_sdhci.c_fsl_sdhci_write_multi_4.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_fsl_sdhci.c_fsl_sdhci_write_multi_4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_slot = type { i32 }
%struct.fsl_sdhci_softc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.sdhci_slot*, i32, i32*, i32)* @fsl_sdhci_write_multi_4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_sdhci_write_multi_4(i32 %0, %struct.sdhci_slot* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sdhci_slot*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.fsl_sdhci_softc*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.sdhci_slot* %1, %struct.sdhci_slot** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.fsl_sdhci_softc* @device_get_softc(i32 %12)
  store %struct.fsl_sdhci_softc* %13, %struct.fsl_sdhci_softc** %11, align 8
  %14 = load %struct.fsl_sdhci_softc*, %struct.fsl_sdhci_softc** %11, align 8
  %15 = getelementptr inbounds %struct.fsl_sdhci_softc, %struct.fsl_sdhci_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32*, i32** %9, align 8
  %19 = load i32, i32* %10, align 4
  %20 = call i32 @bus_write_multi_4(i32 %16, i32 %17, i32* %18, i32 %19)
  ret void
}

declare dso_local %struct.fsl_sdhci_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_write_multi_4(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
