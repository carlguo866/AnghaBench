; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mediacodec_wrapper.c_ff_AMediaCodec_queueInputBuffer.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mediacodec_wrapper.c_ff_AMediaCodec_queueInputBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_11__**, i32, i32, i32, i32, i32, i32, i32)* }

@AVERROR_EXTERNAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_AMediaCodec_queueInputBuffer(%struct.TYPE_12__* %0, i64 %1, i64 %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_11__**, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store %struct.TYPE_11__** null, %struct.TYPE_11__*** %14, align 8
  %15 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %14, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %17 = load i32, i32* @AVERROR_EXTERNAL, align 4
  %18 = call i32 @JNI_GET_ENV_OR_RETURN(%struct.TYPE_11__** %15, %struct.TYPE_12__* %16, i32 %17)
  %19 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %14, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i32 (%struct.TYPE_11__**, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.TYPE_11__**, i32, i32, i32, i32, i32, i32, i32)** %21, align 8
  %23 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %14, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i64, i64* %8, align 8
  %32 = trunc i64 %31 to i32
  %33 = load i64, i64* %9, align 8
  %34 = trunc i64 %33 to i32
  %35 = load i64, i64* %10, align 8
  %36 = trunc i64 %35 to i32
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %12, align 4
  %39 = call i32 %22(%struct.TYPE_11__** %23, i32 %26, i32 %30, i32 %32, i32 %34, i32 %36, i32 %37, i32 %38)
  %40 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %14, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %42 = call i32 @ff_jni_exception_check(%struct.TYPE_11__** %40, i32 1, %struct.TYPE_12__* %41)
  store i32 %42, i32* %13, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %6
  %45 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %45, i32* %13, align 4
  br label %47

46:                                               ; preds = %6
  br label %47

47:                                               ; preds = %46, %44
  %48 = load i32, i32* %13, align 4
  ret i32 %48
}

declare dso_local i32 @JNI_GET_ENV_OR_RETURN(%struct.TYPE_11__**, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @ff_jni_exception_check(%struct.TYPE_11__**, i32, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
