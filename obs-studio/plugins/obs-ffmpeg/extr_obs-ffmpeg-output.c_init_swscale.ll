; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-output.c_init_swscale.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-output.c_init_swscale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffmpeg_data = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@SWS_BICUBIC = common dso_local global i32 0, align 4
@LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Could not initialize swscale\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ffmpeg_data*, %struct.TYPE_5__*)* @init_swscale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_swscale(%struct.ffmpeg_data* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ffmpeg_data*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  store %struct.ffmpeg_data* %0, %struct.ffmpeg_data** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %6 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %4, align 8
  %7 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %4, align 8
  %11 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %4, align 8
  %15 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %4, align 8
  %19 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %4, align 8
  %23 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @SWS_BICUBIC, align 4
  %30 = call i32 @sws_getContext(i32 %9, i32 %13, i32 %17, i32 %21, i32 %25, i32 %28, i32 %29, i32* null, i32* null, i32* null)
  %31 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %4, align 8
  %32 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %4, align 8
  %34 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %2
  %38 = load i32, i32* @LOG_WARNING, align 4
  %39 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %4, align 8
  %40 = call i32 @ffmpeg_log_error(i32 %38, %struct.ffmpeg_data* %39, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %42

41:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %37
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @sws_getContext(i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @ffmpeg_log_error(i32, %struct.ffmpeg_data*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
