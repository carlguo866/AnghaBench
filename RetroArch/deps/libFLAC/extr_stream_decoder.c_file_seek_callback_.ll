; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libFLAC/extr_stream_decoder.c_file_seek_callback_.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libFLAC/extr_stream_decoder.c_file_seek_callback_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@stdin = common dso_local global i64 0, align 8
@FLAC__STREAM_DECODER_SEEK_STATUS_UNSUPPORTED = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@FLAC__STREAM_DECODER_SEEK_STATUS_ERROR = common dso_local global i32 0, align 4
@FLAC__STREAM_DECODER_SEEK_STATUS_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @file_seek_callback_(%struct.TYPE_5__* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load i8*, i8** %7, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @stdin, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @FLAC__STREAM_DECODER_SEEK_STATUS_UNSUPPORTED, align 4
  store i32 %17, i32* %4, align 4
  br label %33

18:                                               ; preds = %3
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %6, align 8
  %25 = trunc i64 %24 to i32
  %26 = load i32, i32* @SEEK_SET, align 4
  %27 = call i64 @fseeko(i64 %23, i32 %25, i32 %26)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %18
  %30 = load i32, i32* @FLAC__STREAM_DECODER_SEEK_STATUS_ERROR, align 4
  store i32 %30, i32* %4, align 4
  br label %33

31:                                               ; preds = %18
  %32 = load i32, i32* @FLAC__STREAM_DECODER_SEEK_STATUS_OK, align 4
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %31, %29, %16
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i64 @fseeko(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
