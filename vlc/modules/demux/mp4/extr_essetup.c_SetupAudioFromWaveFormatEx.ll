; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_essetup.c_SetupAudioFromWaveFormatEx.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_essetup.c_SetupAudioFromWaveFormatEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i64, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32*)* @SetupAudioFromWaveFormatEx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SetupAudioFromWaveFormatEx(%struct.TYPE_8__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %91

8:                                                ; preds = %2
  %9 = load i32*, i32** %5, align 8
  %10 = call %struct.TYPE_9__* @BOXDATA(i32* %9)
  %11 = icmp ne %struct.TYPE_9__* %10, null
  br i1 %11, label %12, label %91

12:                                               ; preds = %8
  %13 = load i32*, i32** %5, align 8
  %14 = call %struct.TYPE_9__* @BOXDATA(i32* %13)
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 4
  %20 = call i32 @wf_tag_to_fourcc(i32 %17, i32* %19, i32* null)
  %21 = load i32*, i32** %5, align 8
  %22 = call %struct.TYPE_9__* @BOXDATA(i32* %21)
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 3
  store i32 %25, i32* %28, align 4
  %29 = load i32*, i32** %5, align 8
  %30 = call %struct.TYPE_9__* @BOXDATA(i32* %29)
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 2
  store i32 %33, i32* %36, align 4
  %37 = load i32*, i32** %5, align 8
  %38 = call %struct.TYPE_9__* @BOXDATA(i32* %37)
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = mul nsw i32 %41, 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = call %struct.TYPE_9__* @BOXDATA(i32* %45)
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  store i32 %49, i32* %52, align 4
  %53 = load i32*, i32** %5, align 8
  %54 = call %struct.TYPE_9__* @BOXDATA(i32* %53)
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 4
  %61 = load i32*, i32** %5, align 8
  %62 = call %struct.TYPE_9__* @BOXDATA(i32* %61)
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  store i64 %64, i64* %66, align 8
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp sgt i64 %69, 0
  br i1 %70, label %71, label %90

71:                                               ; preds = %12
  %72 = load i32*, i32** %5, align 8
  %73 = call %struct.TYPE_9__* @BOXDATA(i32* %72)
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @malloc(i64 %75)
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load i32*, i32** %5, align 8
  %83 = call %struct.TYPE_9__* @BOXDATA(i32* %82)
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @memcpy(i32 %81, i32 %85, i64 %88)
  br label %90

90:                                               ; preds = %71, %12
  store i32 1, i32* %3, align 4
  br label %92

91:                                               ; preds = %8, %2
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %91, %90
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local %struct.TYPE_9__* @BOXDATA(i32*) #1

declare dso_local i32 @wf_tag_to_fourcc(i32, i32*, i32*) #1

declare dso_local i32 @malloc(i64) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
