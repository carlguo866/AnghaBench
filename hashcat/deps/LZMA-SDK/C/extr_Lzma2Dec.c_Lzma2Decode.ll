; ModuleID = '/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_Lzma2Dec.c_Lzma2Decode.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_Lzma2Dec.c_Lzma2Decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32* }

@LZMA_STATUS_NOT_SPECIFIED = common dso_local global i64 0, align 8
@SZ_OK = common dso_local global i64 0, align 8
@LZMA_STATUS_NEEDS_MORE_INPUT = common dso_local global i64 0, align 8
@SZ_ERROR_INPUT_EOF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @Lzma2Decode(i32* %0, i32* %1, i32* %2, i32* %3, i32 %4, i32 %5, i64* %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_9__, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i64* %6, i64** %15, align 8
  store i32 %7, i32* %16, align 4
  %21 = load i32*, i32** %10, align 8
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %19, align 4
  %23 = load i32*, i32** %12, align 8
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %20, align 4
  %25 = load i32*, i32** %12, align 8
  store i32 0, i32* %25, align 4
  %26 = load i32*, i32** %10, align 8
  store i32 0, i32* %26, align 4
  %27 = load i64, i64* @LZMA_STATUS_NOT_SPECIFIED, align 8
  %28 = load i64*, i64** %15, align 8
  store i64 %27, i64* %28, align 8
  %29 = call i32 @Lzma2Dec_Construct(%struct.TYPE_9__* %17)
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* %16, align 4
  %32 = call i32 @Lzma2Dec_AllocateProbs(%struct.TYPE_9__* %17, i32 %30, i32 %31)
  %33 = call i32 @RINOK(i32 %32)
  %34 = load i32*, i32** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 2
  store i32* %34, i32** %36, align 8
  %37 = load i32, i32* %19, align 4
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = call i32 @Lzma2Dec_Init(%struct.TYPE_9__* %17)
  %41 = load i32, i32* %20, align 4
  %42 = load i32*, i32** %12, align 8
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* %19, align 4
  %44 = load i32*, i32** %11, align 8
  %45 = load i32*, i32** %12, align 8
  %46 = load i32, i32* %14, align 4
  %47 = load i64*, i64** %15, align 8
  %48 = call i64 @Lzma2Dec_DecodeToDic(%struct.TYPE_9__* %17, i32 %43, i32* %44, i32* %45, i32 %46, i64* %47)
  store i64 %48, i64* %18, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32*, i32** %10, align 8
  store i32 %51, i32* %52, align 4
  %53 = load i64, i64* %18, align 8
  %54 = load i64, i64* @SZ_OK, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %8
  %57 = load i64*, i64** %15, align 8
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @LZMA_STATUS_NEEDS_MORE_INPUT, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i64, i64* @SZ_ERROR_INPUT_EOF, align 8
  store i64 %62, i64* %18, align 8
  br label %63

63:                                               ; preds = %61, %56, %8
  %64 = load i32, i32* %16, align 4
  %65 = call i32 @Lzma2Dec_FreeProbs(%struct.TYPE_9__* %17, i32 %64)
  %66 = load i64, i64* %18, align 8
  ret i64 %66
}

declare dso_local i32 @Lzma2Dec_Construct(%struct.TYPE_9__*) #1

declare dso_local i32 @RINOK(i32) #1

declare dso_local i32 @Lzma2Dec_AllocateProbs(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @Lzma2Dec_Init(%struct.TYPE_9__*) #1

declare dso_local i64 @Lzma2Dec_DecodeToDic(%struct.TYPE_9__*, i32, i32*, i32*, i32, i64*) #1

declare dso_local i32 @Lzma2Dec_FreeProbs(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
