; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-output.c_ffmpeg_output_stop.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-output.c_ffmpeg_output_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffmpeg_output = type { i64, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @ffmpeg_output_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ffmpeg_output_stop(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ffmpeg_output*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.ffmpeg_output*
  store %struct.ffmpeg_output* %7, %struct.ffmpeg_output** %5, align 8
  %8 = load %struct.ffmpeg_output*, %struct.ffmpeg_output** %5, align 8
  %9 = getelementptr inbounds %struct.ffmpeg_output, %struct.ffmpeg_output* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %2
  %13 = load i64, i64* %4, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load %struct.ffmpeg_output*, %struct.ffmpeg_output** %5, align 8
  %17 = call i32 @ffmpeg_output_full_stop(%struct.ffmpeg_output* %16)
  br label %25

18:                                               ; preds = %12
  %19 = load %struct.ffmpeg_output*, %struct.ffmpeg_output** %5, align 8
  %20 = getelementptr inbounds %struct.ffmpeg_output, %struct.ffmpeg_output* %19, i32 0, i32 1
  %21 = call i32 @os_atomic_set_bool(i32* %20, i32 1)
  %22 = load i64, i64* %4, align 8
  %23 = load %struct.ffmpeg_output*, %struct.ffmpeg_output** %5, align 8
  %24 = getelementptr inbounds %struct.ffmpeg_output, %struct.ffmpeg_output* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  br label %25

25:                                               ; preds = %18, %15
  br label %26

26:                                               ; preds = %25, %2
  ret void
}

declare dso_local i32 @ffmpeg_output_full_stop(%struct.ffmpeg_output*) #1

declare dso_local i32 @os_atomic_set_bool(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
