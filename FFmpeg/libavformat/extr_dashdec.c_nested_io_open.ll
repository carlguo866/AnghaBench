; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_dashdec.c_nested_io_open.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_dashdec.c_nested_io_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [115 x i8] c"A DASH playlist item '%s' referred to an external file '%s'. Opening this file was forbidden for security reasons\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32**, i8*, i32, i32**)* @nested_io_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nested_io_open(%struct.TYPE_4__* %0, i32** %1, i8* %2, i32 %3, i32** %4) #0 {
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32**, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i32** %1, i32*** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32** %4, i32*** %10, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %12 = load i32, i32* @AV_LOG_ERROR, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i8*, i8** %8, align 8
  %17 = call i32 @av_log(%struct.TYPE_4__* %11, i32 %12, i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str, i64 0, i64 0), i32 %15, i8* %16)
  %18 = load i32, i32* @EPERM, align 4
  %19 = call i32 @AVERROR(i32 %18)
  ret i32 %19
}

declare dso_local i32 @av_log(%struct.TYPE_4__*, i32, i8*, i32, i8*) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
