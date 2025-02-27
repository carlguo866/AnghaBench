; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_cam.c_tws_freeze_simq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_cam.c_tws_freeze_simq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tws_softc = type { i32 }
%struct.tws_request = type { i64, i64 }
%union.ccb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@TWS_REQ_TYPE_SCSI_IO = common dso_local global i64 0, align 8
@CAM_RELEASE_SIMQ = common dso_local global i32 0, align 4
@CAM_REQUEUE_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tws_softc*, %struct.tws_request*)* @tws_freeze_simq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tws_freeze_simq(%struct.tws_softc* %0, %struct.tws_request* %1) #0 {
  %3 = alloca %struct.tws_softc*, align 8
  %4 = alloca %struct.tws_request*, align 8
  %5 = alloca %union.ccb*, align 8
  store %struct.tws_softc* %0, %struct.tws_softc** %3, align 8
  store %struct.tws_request* %1, %struct.tws_request** %4, align 8
  %6 = load %struct.tws_request*, %struct.tws_request** %4, align 8
  %7 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @TWS_REQ_TYPE_SCSI_IO, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %32

11:                                               ; preds = %2
  %12 = load %struct.tws_request*, %struct.tws_request** %4, align 8
  %13 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %union.ccb*
  store %union.ccb* %15, %union.ccb** %5, align 8
  %16 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %17 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @xpt_freeze_simq(i32 %18, i32 1)
  %20 = load i32, i32* @CAM_RELEASE_SIMQ, align 4
  %21 = load %union.ccb*, %union.ccb** %5, align 8
  %22 = bitcast %union.ccb* %21 to %struct.TYPE_2__*
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %20
  store i32 %25, i32* %23, align 4
  %26 = load i32, i32* @CAM_REQUEUE_REQ, align 4
  %27 = load %union.ccb*, %union.ccb** %5, align 8
  %28 = bitcast %union.ccb* %27 to %struct.TYPE_2__*
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %26
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %11, %2
  ret void
}

declare dso_local i32 @xpt_freeze_simq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
