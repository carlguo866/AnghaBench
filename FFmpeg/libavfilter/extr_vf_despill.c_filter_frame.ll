; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_despill.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_despill.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32*, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 (%struct.TYPE_15__*, i32, %struct.TYPE_13__*, i32*, i32)* }
%struct.TYPE_13__ = type { i32 }

@do_despill_slice = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.TYPE_13__*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_14__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  store %struct.TYPE_15__* %10, %struct.TYPE_15__** %6, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %12 = call i32 @av_frame_make_writable(%struct.TYPE_13__* %11)
  store i32 %12, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %3, align 4
  br label %43

16:                                               ; preds = %2
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load i32 (%struct.TYPE_15__*, i32, %struct.TYPE_13__*, i32*, i32)*, i32 (%struct.TYPE_15__*, i32, %struct.TYPE_13__*, i32*, i32)** %20, align 8
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %23 = load i32, i32* @do_despill_slice, align 4
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %29 = call i32 @ff_filter_get_nb_threads(%struct.TYPE_15__* %28)
  %30 = call i32 @FFMIN(i32 %27, i32 %29)
  %31 = call i32 %21(%struct.TYPE_15__* %22, i32 %23, %struct.TYPE_13__* %24, i32* null, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %16
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %3, align 4
  br label %43

35:                                               ; preds = %16
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %42 = call i32 @ff_filter_frame(i32 %40, %struct.TYPE_13__* %41)
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %35, %33, %14
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @av_frame_make_writable(%struct.TYPE_13__*) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @ff_filter_get_nb_threads(%struct.TYPE_15__*) #1

declare dso_local i32 @ff_filter_frame(i32, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
