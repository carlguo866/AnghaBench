; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/media-io/extr_media-remux.c_init_input.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/media-io/extr_media-remux.c_init_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"media_remux: Could not open input file '%s'\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"media_remux: Failed to retrieve input stream information\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8*)* @init_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_input(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i8*, i8** %5, align 8
  %10 = call i32 @avformat_open_input(i32* %8, i8* %9, i32* null, i32* null)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i32, i32* @LOG_ERROR, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 (i32, i8*, ...) @blog(i32 %14, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %15)
  store i32 0, i32* %3, align 4
  br label %33

17:                                               ; preds = %2
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @avformat_find_stream_info(i32 %20, i32* null)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load i32, i32* @LOG_ERROR, align 4
  %26 = call i32 (i32, i8*, ...) @blog(i32 %25, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %33

27:                                               ; preds = %17
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @av_dump_format(i32 %30, i32 0, i8* %31, i32 0)
  store i32 1, i32* %3, align 4
  br label %33

33:                                               ; preds = %27, %24, %13
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @avformat_open_input(i32*, i8*, i32*, i32*) #1

declare dso_local i32 @blog(i32, i8*, ...) #1

declare dso_local i32 @avformat_find_stream_info(i32, i32*) #1

declare dso_local i32 @av_dump_format(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
