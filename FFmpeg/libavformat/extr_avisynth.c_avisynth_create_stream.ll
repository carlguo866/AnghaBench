; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_avisynth.c_avisynth_create_stream.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_avisynth.c_avisynth_create_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@AVERROR_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*)* @avisynth_create_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @avisynth_create_stream(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  store %struct.TYPE_11__* %10, %struct.TYPE_11__** %4, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @avs_has_video(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %1
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %18 = call %struct.TYPE_12__* @avformat_new_stream(%struct.TYPE_13__* %17, i32* null)
  store %struct.TYPE_12__* %18, %struct.TYPE_12__** %5, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %20 = icmp ne %struct.TYPE_12__* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %22, i32* %2, align 4
  br label %61

23:                                               ; preds = %16
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %7, align 4
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 4
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %30 = call i32 @avisynth_create_stream_video(%struct.TYPE_13__* %28, %struct.TYPE_12__* %29)
  store i32 %30, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %23
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %2, align 4
  br label %61

34:                                               ; preds = %23
  br label %35

35:                                               ; preds = %34, %1
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @avs_has_audio(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %60

41:                                               ; preds = %35
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %43 = call %struct.TYPE_12__* @avformat_new_stream(%struct.TYPE_13__* %42, i32* null)
  store %struct.TYPE_12__* %43, %struct.TYPE_12__** %5, align 8
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %45 = icmp ne %struct.TYPE_12__* %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %47, i32* %2, align 4
  br label %61

48:                                               ; preds = %41
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %7, align 4
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 4
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %55 = call i32 @avisynth_create_stream_audio(%struct.TYPE_13__* %53, %struct.TYPE_12__* %54)
  store i32 %55, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %48
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %2, align 4
  br label %61

59:                                               ; preds = %48
  br label %60

60:                                               ; preds = %59, %35
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %60, %57, %46, %32, %21
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i64 @avs_has_video(i32) #1

declare dso_local %struct.TYPE_12__* @avformat_new_stream(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @avisynth_create_stream_video(%struct.TYPE_13__*, %struct.TYPE_12__*) #1

declare dso_local i64 @avs_has_audio(i32) #1

declare dso_local i32 @avisynth_create_stream_audio(%struct.TYPE_13__*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
