; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_mp4.c_MP4_TrackInit.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_mp4.c_MP4_TrackInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32*, i32 }
%struct.TYPE_6__ = type { i32 }

@UNKNOWN_ES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"tkhd\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32*)* @MP4_TrackInit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MP4_TrackInit(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %7 = call i32 @memset(%struct.TYPE_5__* %6, i32 0, i32 24)
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 3
  %10 = load i32, i32* @UNKNOWN_ES, align 4
  %11 = call i32 @es_format_Init(i32* %9, i32 %10, i32 0)
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 2
  store i32* %14, i32** %16, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = call i32* @MP4_BoxGet(i32* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32* %18, i32** %5, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = call i64 @likely(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %2
  %23 = load i32*, i32** %5, align 8
  %24 = call %struct.TYPE_6__* @BOXDATA(i32* %23)
  %25 = icmp ne %struct.TYPE_6__* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %22
  %27 = load i32*, i32** %5, align 8
  %28 = call %struct.TYPE_6__* @BOXDATA(i32* %27)
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  br label %33

33:                                               ; preds = %26, %22, %2
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @es_format_Init(i32*, i32, i32) #1

declare dso_local i32* @MP4_BoxGet(i32*, i8*) #1

declare dso_local i64 @likely(i32*) #1

declare dso_local %struct.TYPE_6__* @BOXDATA(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
