; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libpng/extr_pngrutil.c_png_cache_unknown_chunk.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libpng/extr_pngrutil.c_png_cache_unknown_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.TYPE_9__, i64, i32 }
%struct.TYPE_9__ = type { i64, i32*, i64, i32 }

@PNG_SIZE_MAX = common dso_local global i64 0, align 8
@png_bytep = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"unknown chunk exceeds memory limits\00", align 1
@PNG_USER_CHUNK_MALLOC_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i64)* @png_cache_unknown_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @png_cache_unknown_chunk(%struct.TYPE_10__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* @PNG_SIZE_MAX, align 8
  store i64 %7, i64* %6, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @png_free(%struct.TYPE_10__* %14, i32* %18)
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  store i32* null, i32** %22, align 8
  br label %23

23:                                               ; preds = %13, %2
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* %6, align 8
  %26 = icmp sle i64 %24, %25
  br i1 %26, label %27, label %62

27:                                               ; preds = %23
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @PNG_CSTRING_FROM_CHUNK(i32 %31, i32 %34)
  %36 = load i64, i64* %5, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  store i64 %36, i64* %39, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 2
  store i64 %42, i64* %45, align 8
  %46 = load i64, i64* %5, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %27
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  store i32* null, i32** %51, align 8
  br label %61

52:                                               ; preds = %27
  %53 = load i32, i32* @png_bytep, align 4
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %55 = load i64, i64* %5, align 8
  %56 = call i32 @png_malloc_warn(%struct.TYPE_10__* %54, i64 %55)
  %57 = call i32* @png_voidcast(i32 %53, i32 %56)
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  store i32* %57, i32** %60, align 8
  br label %61

61:                                               ; preds = %52, %48
  br label %62

62:                                               ; preds = %61, %23
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = icmp eq i32* %66, null
  br i1 %67, label %68, label %77

68:                                               ; preds = %62
  %69 = load i64, i64* %5, align 8
  %70 = icmp sgt i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %68
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %73 = load i64, i64* %5, align 8
  %74 = call i32 @png_crc_finish(%struct.TYPE_10__* %72, i64 %73)
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %76 = call i32 @png_chunk_benign_error(%struct.TYPE_10__* %75, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %91

77:                                               ; preds = %68, %62
  %78 = load i64, i64* %5, align 8
  %79 = icmp sgt i64 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %77
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load i64, i64* %5, align 8
  %87 = call i32 @png_crc_read(%struct.TYPE_10__* %81, i32* %85, i64 %86)
  br label %88

88:                                               ; preds = %80, %77
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %90 = call i32 @png_crc_finish(%struct.TYPE_10__* %89, i64 0)
  store i32 1, i32* %3, align 4
  br label %91

91:                                               ; preds = %88, %71
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @png_free(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @PNG_CSTRING_FROM_CHUNK(i32, i32) #1

declare dso_local i32* @png_voidcast(i32, i32) #1

declare dso_local i32 @png_malloc_warn(%struct.TYPE_10__*, i64) #1

declare dso_local i32 @png_crc_finish(%struct.TYPE_10__*, i64) #1

declare dso_local i32 @png_chunk_benign_error(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @png_crc_read(%struct.TYPE_10__*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
