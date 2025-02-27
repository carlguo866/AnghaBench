; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_update_modes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_update_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32 }

@MODE_PTR = common dso_local global i32 0, align 4
@AHD_SHOW_MODEPTR = common dso_local global i32 0, align 4
@ahd_debug = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahd_softc*)* @ahd_update_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahd_update_modes(%struct.ahd_softc* %0) #0 {
  %2 = alloca %struct.ahd_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ahd_softc* %0, %struct.ahd_softc** %2, align 8
  %6 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %7 = load i32, i32* @MODE_PTR, align 4
  %8 = call i32 @ahd_inb(%struct.ahd_softc* %6, i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @ahd_extract_mode_state(%struct.ahd_softc* %9, i32 %10, i32* %4, i32* %5)
  %12 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @ahd_known_modes(%struct.ahd_softc* %12, i32 %13, i32 %14)
  ret void
}

declare dso_local i32 @ahd_inb(%struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_extract_mode_state(%struct.ahd_softc*, i32, i32*, i32*) #1

declare dso_local i32 @ahd_known_modes(%struct.ahd_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
