; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_utils.c_extract_extradata_check.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_utils.c_extract_extradata_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32* }

@.str = private unnamed_addr constant [18 x i8] c"extract_extradata\00", align 1
@AV_CODEC_ID_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @extract_extradata_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @extract_extradata_check(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %6 = call %struct.TYPE_8__* @av_bsf_get_by_name(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_8__* %6, %struct.TYPE_8__** %4, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %8 = icmp ne %struct.TYPE_8__* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %40

10:                                               ; preds = %1
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %39

15:                                               ; preds = %10
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %5, align 8
  br label %19

19:                                               ; preds = %35, %15
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @AV_CODEC_ID_NONE, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %38

24:                                               ; preds = %19
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %26, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  store i32 1, i32* %2, align 4
  br label %40

34:                                               ; preds = %24
  br label %35

35:                                               ; preds = %34
  %36 = load i32*, i32** %5, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %37, i32** %5, align 8
  br label %19

38:                                               ; preds = %19
  br label %39

39:                                               ; preds = %38, %10
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %33, %9
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local %struct.TYPE_8__* @av_bsf_get_by_name(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
