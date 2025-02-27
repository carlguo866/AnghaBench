; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/bde/extr_g_bde_work.c_g_bde_delete_work.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/bde/extr_g_bde_work.c_g_bde_delete_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_bde_work = type { %struct.g_bde_softc* }
%struct.g_bde_softc = type { i32, i32 }

@g_bde_nwork = common dso_local global i32 0, align 4
@list = common dso_local global i32 0, align 4
@M_GBDE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_bde_work*)* @g_bde_delete_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_bde_delete_work(%struct.g_bde_work* %0) #0 {
  %2 = alloca %struct.g_bde_work*, align 8
  %3 = alloca %struct.g_bde_softc*, align 8
  store %struct.g_bde_work* %0, %struct.g_bde_work** %2, align 8
  %4 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %5 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %4, i32 0, i32 0
  %6 = load %struct.g_bde_softc*, %struct.g_bde_softc** %5, align 8
  store %struct.g_bde_softc* %6, %struct.g_bde_softc** %3, align 8
  %7 = load i32, i32* @g_bde_nwork, align 4
  %8 = add nsw i32 %7, -1
  store i32 %8, i32* @g_bde_nwork, align 4
  %9 = load %struct.g_bde_softc*, %struct.g_bde_softc** %3, align 8
  %10 = getelementptr inbounds %struct.g_bde_softc, %struct.g_bde_softc* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = add nsw i32 %11, -1
  store i32 %12, i32* %10, align 4
  %13 = load %struct.g_bde_softc*, %struct.g_bde_softc** %3, align 8
  %14 = getelementptr inbounds %struct.g_bde_softc, %struct.g_bde_softc* %13, i32 0, i32 0
  %15 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %16 = load i32, i32* @list, align 4
  %17 = call i32 @TAILQ_REMOVE(i32* %14, %struct.g_bde_work* %15, i32 %16)
  %18 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %19 = load i32, i32* @M_GBDE, align 4
  %20 = call i32 @free(%struct.g_bde_work* %18, i32 %19)
  ret void
}

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.g_bde_work*, i32) #1

declare dso_local i32 @free(%struct.g_bde_work*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
