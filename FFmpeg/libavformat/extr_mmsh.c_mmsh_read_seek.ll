; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mmsh.c_mmsh_read_seek.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mmsh.c_mmsh_read_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32, i32, i32)* @mmsh_read_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmsh_read_seek(%struct.TYPE_10__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  store %struct.TYPE_11__* %15, %struct.TYPE_11__** %10, align 8
  %16 = call %struct.TYPE_11__* @av_mallocz(i32 12)
  store %struct.TYPE_11__* %16, %struct.TYPE_11__** %11, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %18 = icmp ne %struct.TYPE_11__* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = call i32 @AVERROR(i32 %20)
  store i32 %21, i32* %5, align 4
  br label %61

22:                                               ; preds = %4
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  store %struct.TYPE_11__* %23, %struct.TYPE_11__** %25, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @FFMAX(i32 %30, i32 0)
  %32 = call i32 @mmsh_open_internal(%struct.TYPE_10__* %26, i32 %29, i32 0, i32 %31, i32 0)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp sge i32 %33, 0
  br i1 %34, label %35, label %53

35:                                               ; preds = %22
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  store %struct.TYPE_11__* %36, %struct.TYPE_11__** %38, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %40 = call i32 @mmsh_close(%struct.TYPE_10__* %39)
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  store %struct.TYPE_11__* %41, %struct.TYPE_11__** %43, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %45 = call i32 @av_free(%struct.TYPE_11__* %44)
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  store i32 %49, i32* %52, align 4
  br label %59

53:                                               ; preds = %22
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  store %struct.TYPE_11__* %54, %struct.TYPE_11__** %56, align 8
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %58 = call i32 @av_free(%struct.TYPE_11__* %57)
  br label %59

59:                                               ; preds = %53, %35
  %60 = load i32, i32* %12, align 4
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %59, %19
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local %struct.TYPE_11__* @av_mallocz(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @mmsh_open_internal(%struct.TYPE_10__*, i32, i32, i32, i32) #1

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i32 @mmsh_close(%struct.TYPE_10__*) #1

declare dso_local i32 @av_free(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
