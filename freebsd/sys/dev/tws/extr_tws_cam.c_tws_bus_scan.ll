; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_cam.c_tws_bus_scan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_cam.c_tws_bus_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tws_softc = type { i32, i32 }
%union.ccb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@CAM_TARGET_WILDCARD = common dso_local global i32 0, align 4
@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tws_bus_scan(%struct.tws_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tws_softc*, align 8
  %4 = alloca %union.ccb*, align 8
  store %struct.tws_softc* %0, %struct.tws_softc** %3, align 8
  %5 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %6 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %7 = call i32 @TWS_TRACE_DEBUG(%struct.tws_softc* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.tws_softc* %6, i32 0)
  %8 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %9 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENXIO, align 4
  store i32 %13, i32* %2, align 4
  br label %44

14:                                               ; preds = %1
  %15 = call %union.ccb* (...) @xpt_alloc_ccb()
  store %union.ccb* %15, %union.ccb** %4, align 8
  %16 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %17 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %16, i32 0, i32 0
  %18 = call i32 @mtx_lock(i32* %17)
  %19 = load %union.ccb*, %union.ccb** %4, align 8
  %20 = bitcast %union.ccb* %19 to %struct.TYPE_2__*
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %23 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @cam_sim_path(i32 %24)
  %26 = load i32, i32* @CAM_TARGET_WILDCARD, align 4
  %27 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %28 = call i64 @xpt_create_path(i32* %21, i32* null, i32 %25, i32 %26, i32 %27)
  %29 = load i64, i64* @CAM_REQ_CMP, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %14
  %32 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %33 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %32, i32 0, i32 0
  %34 = call i32 @mtx_unlock(i32* %33)
  %35 = load %union.ccb*, %union.ccb** %4, align 8
  %36 = call i32 @xpt_free_ccb(%union.ccb* %35)
  %37 = load i32, i32* @EIO, align 4
  store i32 %37, i32* %2, align 4
  br label %44

38:                                               ; preds = %14
  %39 = load %union.ccb*, %union.ccb** %4, align 8
  %40 = call i32 @xpt_rescan(%union.ccb* %39)
  %41 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %42 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %41, i32 0, i32 0
  %43 = call i32 @mtx_unlock(i32* %42)
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %38, %31, %12
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @TWS_TRACE_DEBUG(%struct.tws_softc*, i8*, %struct.tws_softc*, i32) #1

declare dso_local %union.ccb* @xpt_alloc_ccb(...) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @xpt_create_path(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @cam_sim_path(i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @xpt_free_ccb(%union.ccb*) #1

declare dso_local i32 @xpt_rescan(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
