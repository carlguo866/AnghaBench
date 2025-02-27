; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_dce110_power_down_fe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_dce110_power_down_fe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.TYPE_18__*, %struct.TYPE_16__*, %struct.TYPE_15__, %struct.TYPE_14__* }
%struct.TYPE_18__ = type { %struct.TYPE_11__** }
%struct.TYPE_11__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 (%struct.TYPE_11__*)* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 (%struct.dc.0*, i32, i32, i32)* }
%struct.dc.0 = type opaque
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }
%struct.pipe_ctx = type { i32, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 }

@PIPE_GATING_CONTROL_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc*, %struct.pipe_ctx*)* @dce110_power_down_fe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce110_power_down_fe(%struct.dc* %0, %struct.pipe_ctx* %1) #0 {
  %3 = alloca %struct.dc*, align 8
  %4 = alloca %struct.pipe_ctx*, align 8
  %5 = alloca i32, align 4
  store %struct.dc* %0, %struct.dc** %3, align 8
  store %struct.pipe_ctx* %1, %struct.pipe_ctx** %4, align 8
  %6 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %7 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %10 = icmp ne %struct.TYPE_20__* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %13 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  br label %22

18:                                               ; preds = %2
  %19 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %20 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  br label %22

22:                                               ; preds = %18, %11
  %23 = phi i32 [ %17, %11 ], [ %21, %18 ]
  store i32 %23, i32* %5, align 4
  %24 = load %struct.dc*, %struct.dc** %3, align 8
  %25 = getelementptr inbounds %struct.dc, %struct.dc* %24, i32 0, i32 3
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %22
  br label %75

37:                                               ; preds = %22
  %38 = load %struct.dc*, %struct.dc** %3, align 8
  %39 = getelementptr inbounds %struct.dc, %struct.dc* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  %41 = load i32 (%struct.dc.0*, i32, i32, i32)*, i32 (%struct.dc.0*, i32, i32, i32)** %40, align 8
  %42 = load %struct.dc*, %struct.dc** %3, align 8
  %43 = bitcast %struct.dc* %42 to %struct.dc.0*
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.dc*, %struct.dc** %3, align 8
  %46 = getelementptr inbounds %struct.dc, %struct.dc* %45, i32 0, i32 1
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @PIPE_GATING_CONTROL_ENABLE, align 4
  %51 = call i32 %41(%struct.dc.0* %43, i32 %44, i32 %49, i32 %50)
  %52 = load %struct.dc*, %struct.dc** %3, align 8
  %53 = getelementptr inbounds %struct.dc, %struct.dc* %52, i32 0, i32 0
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %56, i64 %58
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 0
  %64 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** %63, align 8
  %65 = load %struct.dc*, %struct.dc** %3, align 8
  %66 = getelementptr inbounds %struct.dc, %struct.dc* %65, i32 0, i32 0
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %69, i64 %71
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %72, align 8
  %74 = call i32 %64(%struct.TYPE_11__* %73)
  br label %75

75:                                               ; preds = %37, %36
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
