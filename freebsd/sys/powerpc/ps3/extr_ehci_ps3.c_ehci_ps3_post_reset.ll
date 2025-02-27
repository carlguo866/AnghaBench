; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/ps3/extr_ehci_ps3.c_ehci_ps3_post_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/ps3/extr_ehci_ps3.c_ehci_ps3_post_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehci_softc = type { i32 }

@EHCI_USBMODE_NOLPM = common dso_local global i32 0, align 4
@EHCI_UM_ES_BE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ehci_softc*)* @ehci_ps3_post_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ehci_ps3_post_reset(%struct.ehci_softc* %0) #0 {
  %2 = alloca %struct.ehci_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.ehci_softc* %0, %struct.ehci_softc** %2, align 8
  %4 = load %struct.ehci_softc*, %struct.ehci_softc** %2, align 8
  %5 = load i32, i32* @EHCI_USBMODE_NOLPM, align 4
  %6 = call i32 @EOREAD4(%struct.ehci_softc* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @EHCI_UM_ES_BE, align 4
  %8 = load i32, i32* %3, align 4
  %9 = or i32 %8, %7
  store i32 %9, i32* %3, align 4
  %10 = load %struct.ehci_softc*, %struct.ehci_softc** %2, align 8
  %11 = load i32, i32* @EHCI_USBMODE_NOLPM, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @EOWRITE4(%struct.ehci_softc* %10, i32 %11, i32 %12)
  ret void
}

declare dso_local i32 @EOREAD4(%struct.ehci_softc*, i32) #1

declare dso_local i32 @EOWRITE4(%struct.ehci_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
