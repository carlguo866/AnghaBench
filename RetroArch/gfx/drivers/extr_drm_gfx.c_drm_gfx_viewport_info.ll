; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_drm_gfx.c_drm_gfx_viewport_info.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_drm_gfx.c_drm_gfx_viewport_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_viewport = type { i32, i32, i32, i32, i64, i64 }
%struct.drm_video = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.video_viewport*)* @drm_gfx_viewport_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drm_gfx_viewport_info(i8* %0, %struct.video_viewport* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.video_viewport*, align 8
  %5 = alloca %struct.drm_video*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.video_viewport* %1, %struct.video_viewport** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.drm_video*
  store %struct.drm_video* %7, %struct.drm_video** %5, align 8
  %8 = load %struct.drm_video*, %struct.drm_video** %5, align 8
  %9 = icmp ne %struct.drm_video* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %30

11:                                               ; preds = %2
  %12 = load %struct.video_viewport*, %struct.video_viewport** %4, align 8
  %13 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %12, i32 0, i32 4
  store i64 0, i64* %13, align 8
  %14 = load %struct.video_viewport*, %struct.video_viewport** %4, align 8
  %15 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %14, i32 0, i32 5
  store i64 0, i64* %15, align 8
  %16 = load %struct.drm_video*, %struct.drm_video** %5, align 8
  %17 = getelementptr inbounds %struct.drm_video, %struct.drm_video* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.video_viewport*, %struct.video_viewport** %4, align 8
  %20 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 8
  %21 = load %struct.video_viewport*, %struct.video_viewport** %4, align 8
  %22 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %21, i32 0, i32 3
  store i32 %18, i32* %22, align 4
  %23 = load %struct.drm_video*, %struct.drm_video** %5, align 8
  %24 = getelementptr inbounds %struct.drm_video, %struct.drm_video* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.video_viewport*, %struct.video_viewport** %4, align 8
  %27 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.video_viewport*, %struct.video_viewport** %4, align 8
  %29 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %28, i32 0, i32 1
  store i32 %25, i32* %29, align 4
  br label %30

30:                                               ; preds = %11, %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
