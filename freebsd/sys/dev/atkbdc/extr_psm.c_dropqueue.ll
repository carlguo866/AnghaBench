; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_psm.c_dropqueue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_psm.c_dropqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psm_softc = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64 }

@PSM_SOFTARMED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.psm_softc*)* @dropqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dropqueue(%struct.psm_softc* %0) #0 {
  %2 = alloca %struct.psm_softc*, align 8
  store %struct.psm_softc* %0, %struct.psm_softc** %2, align 8
  %3 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %4 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %3, i32 0, i32 4
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 2
  store i64 0, i64* %5, align 8
  %6 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %7 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %6, i32 0, i32 4
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  store i64 0, i64* %8, align 8
  %9 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %10 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %9, i32 0, i32 4
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i64 0, i64* %11, align 8
  %12 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %13 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @PSM_SOFTARMED, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %1
  %19 = load i32, i32* @PSM_SOFTARMED, align 4
  %20 = xor i32 %19, -1
  %21 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %22 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %23, %20
  store i32 %24, i32* %22, align 8
  %25 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %26 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %25, i32 0, i32 3
  %27 = call i32 @callout_stop(i32* %26)
  br label %28

28:                                               ; preds = %18, %1
  %29 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %30 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %33 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  ret void
}

declare dso_local i32 @callout_stop(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
