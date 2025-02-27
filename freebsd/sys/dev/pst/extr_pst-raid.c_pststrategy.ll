; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pst/extr_pst-raid.c_pststrategy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pst/extr_pst-raid.c_pststrategy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.pst_softc* }
%struct.pst_softc = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @pststrategy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pststrategy(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.pst_softc*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %4 = load %struct.bio*, %struct.bio** %2, align 8
  %5 = getelementptr inbounds %struct.bio, %struct.bio* %4, i32 0, i32 0
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load %struct.pst_softc*, %struct.pst_softc** %7, align 8
  store %struct.pst_softc* %8, %struct.pst_softc** %3, align 8
  %9 = load %struct.pst_softc*, %struct.pst_softc** %3, align 8
  %10 = getelementptr inbounds %struct.pst_softc, %struct.pst_softc* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = call i32 @mtx_lock(i32* %12)
  %14 = load %struct.pst_softc*, %struct.pst_softc** %3, align 8
  %15 = getelementptr inbounds %struct.pst_softc, %struct.pst_softc* %14, i32 0, i32 1
  %16 = load %struct.bio*, %struct.bio** %2, align 8
  %17 = call i32 @bioq_disksort(i32* %15, %struct.bio* %16)
  %18 = load %struct.pst_softc*, %struct.pst_softc** %3, align 8
  %19 = call i32 @pst_start(%struct.pst_softc* %18)
  %20 = load %struct.pst_softc*, %struct.pst_softc** %3, align 8
  %21 = getelementptr inbounds %struct.pst_softc, %struct.pst_softc* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = call i32 @mtx_unlock(i32* %23)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @bioq_disksort(i32*, %struct.bio*) #1

declare dso_local i32 @pst_start(%struct.pst_softc*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
