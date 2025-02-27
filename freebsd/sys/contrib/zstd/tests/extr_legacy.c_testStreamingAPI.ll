; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/extr_legacy.c_testStreamingAPI.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/extr_legacy.c_testStreamingAPI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i32, i32, i32 }
%struct.TYPE_5__ = type { i8*, i64, i64, i64, i32 }

@COMPRESSED = common dso_local global i32 0, align 4
@COMPRESSED_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"ERROR: Could not allocate memory\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"ERROR: Could not create dstream\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"ERROR: ZSTD_initDStream: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"ERROR: ZSTD_decompressStream: %s\0A\00", align 1
@EXPECTED = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [38 x i8] c"ERROR: Wrong decoded output produced\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"Streaming API OK\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @testStreamingAPI to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @testStreamingAPI() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32 0, i32* %2, align 4
  %12 = call i64 (...) @ZSTD_DStreamOutSize()
  store i64 %12, i64* %3, align 8
  %13 = load i64, i64* %3, align 8
  %14 = call i8* @malloc(i64 %13)
  store i8* %14, i8** %4, align 8
  %15 = call i32* (...) @ZSTD_createDStream()
  store i32* %15, i32** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %17 = load i32, i32* @COMPRESSED, align 4
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %16, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %20 = load i32, i32* @COMPRESSED_SIZE, align 4
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %19, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 2
  store i32 0, i32* %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 3
  store i32 0, i32* %23, align 4
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 4
  store i32 0, i32* %24, align 8
  store i64 0, i64* %7, align 8
  store i32 1, i32* %8, align 4
  %25 = load i8*, i8** %4, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %0
  %28 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %112

29:                                               ; preds = %0
  %30 = load i32*, i32** %5, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 @free(i8* %34)
  store i32 1, i32* %1, align 4
  br label %112

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %36, %100
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %39 = load i8*, i8** %4, align 8
  store i8* %39, i8** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %41 = load i64, i64* %3, align 8
  store i64 %41, i64* %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  store i64 0, i64* %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 3
  store i64 0, i64* %43, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 4
  store i32 0, i32* %44, align 8
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %37
  %48 = load i32*, i32** %5, align 8
  %49 = call i64 @ZSTD_initDStream(i32* %48)
  store i64 %49, i64* %10, align 8
  %50 = load i64, i64* %10, align 8
  %51 = call i64 @ZSTD_isError(i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load i64, i64* %10, align 8
  %55 = call i32 @ZSTD_getErrorName(i64 %54)
  %56 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  store i32 1, i32* %2, align 4
  br label %101

57:                                               ; preds = %47
  br label %58

58:                                               ; preds = %57, %37
  %59 = load i32*, i32** %5, align 8
  %60 = call i64 @ZSTD_decompressStream(i32* %59, %struct.TYPE_5__* %9, %struct.TYPE_6__* %6)
  store i64 %60, i64* %11, align 8
  %61 = load i64, i64* %11, align 8
  %62 = call i64 @ZSTD_isError(i64 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = load i64, i64* %11, align 8
  %66 = call i32 @ZSTD_getErrorName(i64 %65)
  %67 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %66)
  store i32 1, i32* %2, align 4
  br label %101

68:                                               ; preds = %58
  %69 = load i64, i64* %11, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  store i32 1, i32* %8, align 4
  br label %72

72:                                               ; preds = %71, %68
  %73 = load i8*, i8** %4, align 8
  %74 = load i64, i64* @EXPECTED, align 8
  %75 = load i64, i64* %7, align 8
  %76 = add i64 %74, %75
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = call i64 @memcmp(i8* %73, i64 %76, i64 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %72
  %82 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %101

83:                                               ; preds = %72
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %7, align 8
  %87 = add i64 %86, %85
  store i64 %87, i64* %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %89, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %83
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = icmp slt i64 %95, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  br label %101

100:                                              ; preds = %93, %83
  br label %37

101:                                              ; preds = %99, %81, %64, %53
  %102 = load i8*, i8** %4, align 8
  %103 = call i32 @free(i8* %102)
  %104 = load i32*, i32** %5, align 8
  %105 = call i32 @ZSTD_freeDStream(i32* %104)
  %106 = load i32, i32* %2, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %101
  %109 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  br label %110

110:                                              ; preds = %108, %101
  %111 = load i32, i32* %2, align 4
  store i32 %111, i32* %1, align 4
  br label %112

112:                                              ; preds = %110, %32, %27
  %113 = load i32, i32* %1, align 4
  ret i32 %113
}

declare dso_local i64 @ZSTD_DStreamOutSize(...) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32* @ZSTD_createDStream(...) #1

declare dso_local i32 @DISPLAY(i8*, ...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @ZSTD_initDStream(i32*) #1

declare dso_local i64 @ZSTD_isError(i64) #1

declare dso_local i32 @ZSTD_getErrorName(i64) #1

declare dso_local i64 @ZSTD_decompressStream(i32*, %struct.TYPE_5__*, %struct.TYPE_6__*) #1

declare dso_local i64 @memcmp(i8*, i64, i64) #1

declare dso_local i32 @ZSTD_freeDStream(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
