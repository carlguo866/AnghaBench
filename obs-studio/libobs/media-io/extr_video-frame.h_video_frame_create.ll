; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/media-io/extr_video-frame.h_video_frame_create.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/media-io/extr_video-frame.h_video_frame_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_frame = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.video_frame* (i32, i32, i32)* @video_frame_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.video_frame* @video_frame_create(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.video_frame*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = call i64 @bzalloc(i32 4)
  %9 = inttoptr i64 %8 to %struct.video_frame*
  store %struct.video_frame* %9, %struct.video_frame** %7, align 8
  %10 = load %struct.video_frame*, %struct.video_frame** %7, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @video_frame_init(%struct.video_frame* %10, i32 %11, i32 %12, i32 %13)
  %15 = load %struct.video_frame*, %struct.video_frame** %7, align 8
  ret %struct.video_frame* %15
}

declare dso_local i64 @bzalloc(i32) #1

declare dso_local i32 @video_frame_init(%struct.video_frame*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
