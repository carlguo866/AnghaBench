; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_cam.c_mpt_post_target_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_cam.c_mpt_post_target_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_12__*, i64 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_13__*, i8*, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i8* }
%struct.TYPE_14__ = type { i32 }

@MPT_REQUEST_AREA = common dso_local global i64 0, align 8
@TGT_STATE_LOADING = common dso_local global i32 0, align 4
@MPI_FUNCTION_TARGET_CMD_BUFFER_POST = common dso_local global i32 0, align 4
@UINT8_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpt_softc*, %struct.TYPE_11__*, i32)* @mpt_post_target_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpt_post_target_command(%struct.mpt_softc* %0, %struct.TYPE_11__* %1, i32 %2) #0 {
  %4 = alloca %struct.mpt_softc*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i64, align 8
  store %struct.mpt_softc* %0, %struct.mpt_softc** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %9, align 8
  %13 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %14 = call i64 @MPT_RQSL(%struct.mpt_softc* %13)
  %15 = load i64, i64* %9, align 8
  %16 = add nsw i64 %15, %14
  store i64 %16, i64* %9, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %20 = load i64, i64* @MPT_REQUEST_AREA, align 8
  %21 = call i32 @memset(%struct.TYPE_12__* %19, i32 0, i64 %20)
  %22 = load i32, i32* @TGT_STATE_LOADING, align 4
  %23 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %25 = call %struct.TYPE_14__* @MPT_TGT_STATE(%struct.mpt_softc* %23, %struct.TYPE_11__* %24)
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  store i32 %22, i32* %26, align 4
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  store %struct.TYPE_12__* %29, %struct.TYPE_12__** %7, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  %32 = load i32, i32* @MPI_FUNCTION_TARGET_CMD_BUFFER_POST, align 4
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 4
  %35 = load i64, i64* @MPT_REQUEST_AREA, align 8
  %36 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %37 = call i64 @MPT_RQSL(%struct.mpt_softc* %36)
  %38 = sub nsw i64 %35, %37
  %39 = load i32, i32* @UINT8_MAX, align 4
  %40 = call i32 @MIN(i64 %38, i32 %39)
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 8
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %47 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %45, %48
  %50 = call i8* @htole32(i32 %49)
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 2
  store i8* %50, i8** %52, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i64 0
  store %struct.TYPE_13__* %56, %struct.TYPE_13__** %8, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @htole16(i32 %57)
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 8
  %61 = load i64, i64* %9, align 8
  %62 = trunc i64 %61 to i32
  %63 = call i8* @htole32(i32 %62)
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  store i8* %63, i8** %66, align 8
  %67 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %68 = call i32 @mpt_check_doorbell(%struct.mpt_softc* %67)
  %69 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %71 = call i32 @mpt_send_cmd(%struct.mpt_softc* %69, %struct.TYPE_11__* %70)
  ret void
}

declare dso_local i64 @MPT_RQSL(%struct.mpt_softc*) #1

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i64) #1

declare dso_local %struct.TYPE_14__* @MPT_TGT_STATE(%struct.mpt_softc*, %struct.TYPE_11__*) #1

declare dso_local i32 @MIN(i64, i32) #1

declare dso_local i8* @htole32(i32) #1

declare dso_local i32 @htole16(i32) #1

declare dso_local i32 @mpt_check_doorbell(%struct.mpt_softc*) #1

declare dso_local i32 @mpt_send_cmd(%struct.mpt_softc*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
