; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_tpc.c_ctl_tpc_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_tpc.c_ctl_tpc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_softc = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"CTL TPC mutex\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@tpc_timeout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ctl_tpc_init(%struct.ctl_softc* %0) #0 {
  %2 = alloca %struct.ctl_softc*, align 8
  store %struct.ctl_softc* %0, %struct.ctl_softc** %2, align 8
  %3 = load %struct.ctl_softc*, %struct.ctl_softc** %2, align 8
  %4 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %3, i32 0, i32 3
  %5 = load i32, i32* @MTX_DEF, align 4
  %6 = call i32 @mtx_init(i32* %4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* null, i32 %5)
  %7 = load %struct.ctl_softc*, %struct.ctl_softc** %2, align 8
  %8 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %7, i32 0, i32 2
  %9 = call i32 @TAILQ_INIT(i32* %8)
  %10 = load %struct.ctl_softc*, %struct.ctl_softc** %2, align 8
  %11 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %10, i32 0, i32 0
  %12 = load %struct.ctl_softc*, %struct.ctl_softc** %2, align 8
  %13 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %12, i32 0, i32 1
  %14 = call i32 @callout_init_mtx(i32* %11, i32* %13, i32 0)
  %15 = load %struct.ctl_softc*, %struct.ctl_softc** %2, align 8
  %16 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %15, i32 0, i32 0
  %17 = load i32, i32* @hz, align 4
  %18 = load i32, i32* @tpc_timeout, align 4
  %19 = load %struct.ctl_softc*, %struct.ctl_softc** %2, align 8
  %20 = call i32 @callout_reset(i32* %16, i32 %17, i32 %18, %struct.ctl_softc* %19)
  ret void
}

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.ctl_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
