; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_act.c_read_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_act.c_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Sample rate %d is not supported.\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_CODEC_ID_G729 = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@CHUNK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*)* @read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_header(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  store %struct.TYPE_13__* %13, %struct.TYPE_13__** %4, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %5, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %18 = call %struct.TYPE_11__* @avformat_new_stream(%struct.TYPE_12__* %17, i32* null)
  store %struct.TYPE_11__* %18, %struct.TYPE_11__** %7, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %20 = icmp ne %struct.TYPE_11__* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = call i32 @AVERROR(i32 %22)
  store i32 %23, i32* %2, align 4
  br label %104

24:                                               ; preds = %1
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @avio_skip(i32* %25, i32 16)
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @avio_rl32(i32* %27)
  store i32 %28, i32* %6, align 4
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @ff_get_wav_header(%struct.TYPE_12__* %29, i32* %30, %struct.TYPE_14__* %33, i32 %34, i32 0)
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 8000
  br i1 %41, label %42, label %52

42:                                               ; preds = %24
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %44 = load i32, i32* @AV_LOG_ERROR, align 4
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @av_log(%struct.TYPE_12__* %43, i32 %44, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %51, i32* %2, align 4
  br label %104

52:                                               ; preds = %24
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 1
  store i32 80, i32* %56, align 4
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 2
  store i32 1, i32* %60, align 4
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %62 = call i32 @avpriv_set_pts_info(%struct.TYPE_11__* %61, i32 64, i32 1, i32 100)
  %63 = load i32, i32* @AV_CODEC_ID_G729, align 4
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 3
  store i32 %63, i32* %67, align 4
  %68 = load i32*, i32** %5, align 8
  %69 = load i32, i32* @SEEK_SET, align 4
  %70 = call i32 @avio_seek(i32* %68, i32 257, i32 %69)
  %71 = load i32*, i32** %5, align 8
  %72 = call i32 @avio_rl16(i32* %71)
  store i32 %72, i32* %10, align 4
  %73 = load i32*, i32** %5, align 8
  %74 = call i32 @avio_r8(i32* %73)
  store i32 %74, i32* %9, align 4
  %75 = load i32*, i32** %5, align 8
  %76 = call i32 @avio_rl32(i32* %75)
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = mul nsw i32 %77, 60
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %78, %79
  %81 = mul nsw i32 1000, %80
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %81, %82
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = mul nsw i32 1000, %93
  %95 = call i32 @av_rescale(i32 %83, i32 %88, i32 %94)
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 8
  %98 = load i32, i32* @CHUNK_SIZE, align 4
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 4
  %101 = load i32*, i32** %5, align 8
  %102 = load i32, i32* @SEEK_SET, align 4
  %103 = call i32 @avio_seek(i32* %101, i32 512, i32 %102)
  store i32 0, i32* %2, align 4
  br label %104

104:                                              ; preds = %52, %42, %21
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local %struct.TYPE_11__* @avformat_new_stream(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avio_skip(i32*, i32) #1

declare dso_local i32 @avio_rl32(i32*) #1

declare dso_local i32 @ff_get_wav_header(%struct.TYPE_12__*, i32*, %struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_12__*, i32, i8*, i32) #1

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i32 @avio_seek(i32*, i32, i32) #1

declare dso_local i32 @avio_rl16(i32*) #1

declare dso_local i32 @avio_r8(i32*) #1

declare dso_local i32 @av_rescale(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
