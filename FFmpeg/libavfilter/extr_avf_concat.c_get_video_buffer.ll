; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avf_concat.c_get_video_buffer.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avf_concat.c_get_video_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_6__*, i32, i32)* @get_video_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_video_buffer(%struct.TYPE_6__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %7, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %14 = call i32 @FF_INLINK_IDX(%struct.TYPE_6__* %13)
  store i32 %14, i32* %8, align 4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %16, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = urem i32 %18, %21
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %17, i64 %23
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  store %struct.TYPE_6__* %25, %struct.TYPE_6__** %9, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32* @ff_get_video_buffer(%struct.TYPE_6__* %26, i32 %27, i32 %28)
  ret i32* %29
}

declare dso_local i32 @FF_INLINK_IDX(%struct.TYPE_6__*) #1

declare dso_local i32* @ff_get_video_buffer(%struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
