; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_source_output_audio_place.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_source_output_audio_place.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_9__ = type { i64, i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }
%struct.audio_data = type { i32, i64, i32* }

@obs = common dso_local global %struct.TYPE_10__* null, align 8
@MAX_BUF_SIZE = common dso_local global i64 0, align 8
@LOG_DEBUG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.audio_data*)* @source_output_audio_place to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @source_output_audio_place(%struct.TYPE_9__* %0, %struct.audio_data* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.audio_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store %struct.audio_data* %1, %struct.audio_data** %4, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** @obs, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %5, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = call i64 @audio_output_get_channels(i32* %14)
  store i64 %15, i64* %7, align 8
  %16 = load %struct.audio_data*, %struct.audio_data** %4, align 8
  %17 = getelementptr inbounds %struct.audio_data, %struct.audio_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 4
  store i64 %20, i64* %8, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %2
  %26 = load %struct.audio_data*, %struct.audio_data** %4, align 8
  %27 = getelementptr inbounds %struct.audio_data, %struct.audio_data* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp slt i64 %28, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %25, %2
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %35 = load %struct.audio_data*, %struct.audio_data** %4, align 8
  %36 = getelementptr inbounds %struct.audio_data, %struct.audio_data* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @reset_audio_data(%struct.TYPE_9__* %34, i64 %37)
  br label %39

39:                                               ; preds = %33, %25
  %40 = load i32*, i32** %5, align 8
  %41 = load %struct.audio_data*, %struct.audio_data** %4, align 8
  %42 = getelementptr inbounds %struct.audio_data, %struct.audio_data* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = sub nsw i64 %43, %46
  %48 = call i32 @get_buf_placement(i32* %40, i64 %47)
  %49 = sext i32 %48 to i64
  %50 = mul i64 %49, 4
  store i64 %50, i64* %6, align 8
  %51 = load i64, i64* %6, align 8
  %52 = load i64, i64* %8, align 8
  %53 = add i64 %51, %52
  %54 = load i64, i64* @MAX_BUF_SIZE, align 8
  %55 = icmp ugt i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %39
  br label %100

57:                                               ; preds = %39
  store i64 0, i64* %9, align 8
  br label %58

58:                                               ; preds = %94, %57
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* %7, align 8
  %61 = icmp ult i64 %59, %60
  br i1 %61, label %62, label %97

62:                                               ; preds = %58
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %64, align 8
  %66 = load i64, i64* %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i64 %66
  %68 = load i64, i64* %6, align 8
  %69 = load %struct.audio_data*, %struct.audio_data** %4, align 8
  %70 = getelementptr inbounds %struct.audio_data, %struct.audio_data* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = load i64, i64* %9, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load i64, i64* %8, align 8
  %76 = call i32 @circlebuf_place(%struct.TYPE_11__* %67, i64 %68, i32 %74, i64 %75)
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %78, align 8
  %80 = load i64, i64* %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i64 %80
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 2
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %83, align 8
  %85 = load i64, i64* %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* %6, align 8
  %90 = load i64, i64* %8, align 8
  %91 = add i64 %89, %90
  %92 = sub i64 %88, %91
  %93 = call i32 @circlebuf_pop_back(%struct.TYPE_11__* %81, i32* null, i64 %92)
  br label %94

94:                                               ; preds = %62
  %95 = load i64, i64* %9, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %9, align 8
  br label %58

97:                                               ; preds = %58
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 1
  store i64 0, i64* %99, align 8
  br label %100

100:                                              ; preds = %97, %56
  ret void
}

declare dso_local i64 @audio_output_get_channels(i32*) #1

declare dso_local i32 @reset_audio_data(%struct.TYPE_9__*, i64) #1

declare dso_local i32 @get_buf_placement(i32*, i64) #1

declare dso_local i32 @circlebuf_place(%struct.TYPE_11__*, i64, i32, i64) #1

declare dso_local i32 @circlebuf_pop_back(%struct.TYPE_11__*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
