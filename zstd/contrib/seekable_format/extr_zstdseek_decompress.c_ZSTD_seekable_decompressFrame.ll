; ModuleID = '/home/carl/AnghaBench/zstd/contrib/seekable_format/extr_zstdseek_decompress.c_ZSTD_seekable_decompressFrame.c'
source_filename = "/home/carl/AnghaBench/zstd/contrib/seekable_format/extr_zstdseek_decompress.c_ZSTD_seekable_decompressFrame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@frameIndex_tooLarge = common dso_local global i32 0, align 4
@dstSize_tooSmall = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ZSTD_seekable_decompressFrame(%struct.TYPE_8__* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %9, align 4
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp uge i32 %11, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @frameIndex_tooLarge, align 4
  %19 = call i64 @ERROR(i32 %18)
  store i64 %19, i64* %5, align 8
  br label %61

20:                                               ; preds = %4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = add i32 %25, 1
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = sub i64 %30, %39
  store i64 %40, i64* %10, align 8
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* %10, align 8
  %43 = icmp ult i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %20
  %45 = load i32, i32* @dstSize_tooSmall, align 4
  %46 = call i64 @ERROR(i32 %45)
  store i64 %46, i64* %5, align 8
  br label %61

47:                                               ; preds = %20
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = load i64, i64* %10, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = load i32, i32* %9, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i64 @ZSTD_seekable_decompress(%struct.TYPE_8__* %48, i8* %49, i64 %50, i64 %59)
  store i64 %60, i64* %5, align 8
  br label %61

61:                                               ; preds = %47, %44, %17
  %62 = load i64, i64* %5, align 8
  ret i64 %62
}

declare dso_local i64 @ERROR(i32) #1

declare dso_local i64 @ZSTD_seekable_decompress(%struct.TYPE_8__*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
