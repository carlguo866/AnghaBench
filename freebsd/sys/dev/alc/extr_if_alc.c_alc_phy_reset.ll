; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/alc/extr_if_alc.c_alc_phy_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/alc/extr_if_alc.c_alc_phy_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alc_softc = type { i32 }

@ALC_FLAG_AR816X_FAMILY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.alc_softc*)* @alc_phy_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alc_phy_reset(%struct.alc_softc* %0) #0 {
  %2 = alloca %struct.alc_softc*, align 8
  store %struct.alc_softc* %0, %struct.alc_softc** %2, align 8
  %3 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %4 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @ALC_FLAG_AR816X_FAMILY, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %11 = call i32 @alc_phy_reset_816x(%struct.alc_softc* %10)
  br label %15

12:                                               ; preds = %1
  %13 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %14 = call i32 @alc_phy_reset_813x(%struct.alc_softc* %13)
  br label %15

15:                                               ; preds = %12, %9
  ret void
}

declare dso_local i32 @alc_phy_reset_816x(%struct.alc_softc*) #1

declare dso_local i32 @alc_phy_reset_813x(%struct.alc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
