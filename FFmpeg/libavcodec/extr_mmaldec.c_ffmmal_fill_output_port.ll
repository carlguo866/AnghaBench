; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mmaldec.c_ffmmal_fill_output_port.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mmaldec.c_ffmmal_fill_output_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@AVERROR_UNKNOWN = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"MMAL error %d when sending output buffer.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*)* @ffmmal_fill_output_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffmmal_fill_output_port(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_11__* %9, %struct.TYPE_11__** %4, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %13 = icmp ne %struct.TYPE_9__* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %15, i32* %2, align 4
  br label %49

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %47, %16
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32* @mmal_queue_get(i32 %24)
  store i32* %25, i32** %5, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %48

27:                                               ; preds = %17
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %5, align 8
  %36 = call i64 @mmal_port_send_buffer(i32 %34, i32* %35)
  store i64 %36, i64* %6, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %27
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @mmal_buffer_header_release(i32* %39)
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %42 = load i32, i32* @AV_LOG_ERROR, align 4
  %43 = load i64, i64* %6, align 8
  %44 = trunc i64 %43 to i32
  %45 = call i32 @av_log(%struct.TYPE_12__* %41, i32 %42, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %46, i32* %2, align 4
  br label %49

47:                                               ; preds = %27
  br label %17

48:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %38, %14
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32* @mmal_queue_get(i32) #1

declare dso_local i64 @mmal_port_send_buffer(i32, i32*) #1

declare dso_local i32 @mmal_buffer_header_release(i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_12__*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
