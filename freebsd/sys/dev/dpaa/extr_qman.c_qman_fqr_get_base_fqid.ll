; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dpaa/extr_qman.c_qman_fqr_get_base_fqid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dpaa/extr_qman.c_qman_fqr_get_base_fqid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qman_softc = type { i32 }

@qman_sc = common dso_local global %struct.qman_softc* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"could not setup QMan portal\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qman_fqr_get_base_fqid(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.qman_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %7 = load %struct.qman_softc*, %struct.qman_softc** @qman_sc, align 8
  store %struct.qman_softc* %7, %struct.qman_softc** %4, align 8
  %8 = call i32 (...) @sched_pin()
  %9 = load %struct.qman_softc*, %struct.qman_softc** %4, align 8
  %10 = call i32* @qman_portal_setup(%struct.qman_softc* %9)
  store i32* %10, i32** %6, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.qman_softc*, %struct.qman_softc** %4, align 8
  %15 = getelementptr inbounds %struct.qman_softc, %struct.qman_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @device_printf(i32 %16, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 (...) @sched_unpin()
  store i32 0, i32* %2, align 4
  br label %24

19:                                               ; preds = %1
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @QM_FQR_GetFqid(i32* %20)
  store i32 %21, i32* %5, align 4
  %22 = call i32 (...) @sched_unpin()
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %19, %13
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @sched_pin(...) #1

declare dso_local i32* @qman_portal_setup(%struct.qman_softc*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @sched_unpin(...) #1

declare dso_local i32 @QM_FQR_GetFqid(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
