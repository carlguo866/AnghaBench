; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_replaygain.c_ff_replaygain_export_raw.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_replaygain.c_ff_replaygain_export_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i64, i8*, i64 }

@INT32_MIN = common dso_local global i64 0, align 8
@AV_PKT_DATA_REPLAYGAIN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_replaygain_export_raw(i32* %0, i64 %1, i8* %2, i64 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_2__*, align 8
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  %13 = load i64, i64* %8, align 8
  %14 = load i64, i64* @INT32_MIN, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %5
  %17 = load i64, i64* %10, align 8
  %18 = load i64, i64* @INT32_MIN, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 0, i32* %6, align 4
  br label %44

21:                                               ; preds = %16, %5
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* @AV_PKT_DATA_REPLAYGAIN, align 4
  %24 = call i64 @av_stream_new_side_data(i32* %22, i32 %23, i32 32)
  %25 = inttoptr i64 %24 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %25, %struct.TYPE_2__** %12, align 8
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %27 = icmp ne %struct.TYPE_2__* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = call i32 @AVERROR(i32 %29)
  store i32 %30, i32* %6, align 4
  br label %44

31:                                               ; preds = %21
  %32 = load i64, i64* %8, align 8
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 3
  store i64 %32, i64* %34, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  store i8* %35, i8** %37, align 8
  %38 = load i64, i64* %10, align 8
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  store i64 %38, i64* %40, align 8
  %41 = load i8*, i8** %11, align 8
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  store i32 0, i32* %6, align 4
  br label %44

44:                                               ; preds = %31, %28, %20
  %45 = load i32, i32* %6, align 4
  ret i32 %45
}

declare dso_local i64 @av_stream_new_side_data(i32*, i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
