; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/et/extr_if_et.c_et_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/et/extr_if_et.c_et_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { %struct.et_softc* }
%struct.et_softc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*)* @et_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @et_start(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca %struct.et_softc*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  %4 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %5 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %4, i32 0, i32 0
  %6 = load %struct.et_softc*, %struct.et_softc** %5, align 8
  store %struct.et_softc* %6, %struct.et_softc** %3, align 8
  %7 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %8 = call i32 @ET_LOCK(%struct.et_softc* %7)
  %9 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %10 = call i32 @et_start_locked(%struct.ifnet* %9)
  %11 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %12 = call i32 @ET_UNLOCK(%struct.et_softc* %11)
  ret void
}

declare dso_local i32 @ET_LOCK(%struct.et_softc*) #1

declare dso_local i32 @et_start_locked(%struct.ifnet*) #1

declare dso_local i32 @ET_UNLOCK(%struct.et_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
