; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-ioctl.c_omapfb_query_plane.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-ioctl.c_omapfb_query_plane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32 }
%struct.omapfb_plane_info = type { i32, i32, i32, i64, i64, i32, i32, i32 }
%struct.omapfb_info = type { i64, %struct.omap_overlay** }
%struct.omap_overlay = type { i32 (%struct.omap_overlay*)*, i32 (%struct.omap_overlay*, %struct.omap_overlay_info*)* }
%struct.omap_overlay_info = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, %struct.omapfb_plane_info*)* @omapfb_query_plane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omapfb_query_plane(%struct.fb_info* %0, %struct.omapfb_plane_info* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.omapfb_plane_info*, align 8
  %5 = alloca %struct.omapfb_info*, align 8
  %6 = alloca %struct.omap_overlay*, align 8
  %7 = alloca %struct.omap_overlay_info, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.omapfb_plane_info* %1, %struct.omapfb_plane_info** %4, align 8
  %8 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %9 = call %struct.omapfb_info* @FB2OFB(%struct.fb_info* %8)
  store %struct.omapfb_info* %9, %struct.omapfb_info** %5, align 8
  %10 = load %struct.omapfb_info*, %struct.omapfb_info** %5, align 8
  %11 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.omapfb_plane_info*, %struct.omapfb_plane_info** %4, align 8
  %16 = call i32 @memset(%struct.omapfb_plane_info* %15, i32 0, i32 48)
  br label %59

17:                                               ; preds = %2
  %18 = load %struct.omapfb_info*, %struct.omapfb_info** %5, align 8
  %19 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %18, i32 0, i32 1
  %20 = load %struct.omap_overlay**, %struct.omap_overlay*** %19, align 8
  %21 = getelementptr inbounds %struct.omap_overlay*, %struct.omap_overlay** %20, i64 0
  %22 = load %struct.omap_overlay*, %struct.omap_overlay** %21, align 8
  store %struct.omap_overlay* %22, %struct.omap_overlay** %6, align 8
  %23 = load %struct.omap_overlay*, %struct.omap_overlay** %6, align 8
  %24 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %23, i32 0, i32 1
  %25 = load i32 (%struct.omap_overlay*, %struct.omap_overlay_info*)*, i32 (%struct.omap_overlay*, %struct.omap_overlay_info*)** %24, align 8
  %26 = load %struct.omap_overlay*, %struct.omap_overlay** %6, align 8
  %27 = call i32 %25(%struct.omap_overlay* %26, %struct.omap_overlay_info* %7)
  %28 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %7, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.omapfb_plane_info*, %struct.omapfb_plane_info** %4, align 8
  %31 = getelementptr inbounds %struct.omapfb_plane_info, %struct.omapfb_plane_info* %30, i32 0, i32 7
  store i32 %29, i32* %31, align 8
  %32 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %7, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.omapfb_plane_info*, %struct.omapfb_plane_info** %4, align 8
  %35 = getelementptr inbounds %struct.omapfb_plane_info, %struct.omapfb_plane_info* %34, i32 0, i32 6
  store i32 %33, i32* %35, align 4
  %36 = load %struct.omap_overlay*, %struct.omap_overlay** %6, align 8
  %37 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %36, i32 0, i32 0
  %38 = load i32 (%struct.omap_overlay*)*, i32 (%struct.omap_overlay*)** %37, align 8
  %39 = load %struct.omap_overlay*, %struct.omap_overlay** %6, align 8
  %40 = call i32 %38(%struct.omap_overlay* %39)
  %41 = load %struct.omapfb_plane_info*, %struct.omapfb_plane_info** %4, align 8
  %42 = getelementptr inbounds %struct.omapfb_plane_info, %struct.omapfb_plane_info* %41, i32 0, i32 5
  store i32 %40, i32* %42, align 8
  %43 = load %struct.omapfb_plane_info*, %struct.omapfb_plane_info** %4, align 8
  %44 = getelementptr inbounds %struct.omapfb_plane_info, %struct.omapfb_plane_info* %43, i32 0, i32 4
  store i64 0, i64* %44, align 8
  %45 = load %struct.omapfb_plane_info*, %struct.omapfb_plane_info** %4, align 8
  %46 = getelementptr inbounds %struct.omapfb_plane_info, %struct.omapfb_plane_info* %45, i32 0, i32 3
  store i64 0, i64* %46, align 8
  %47 = load %struct.omapfb_info*, %struct.omapfb_info** %5, align 8
  %48 = call i32 @get_mem_idx(%struct.omapfb_info* %47)
  %49 = load %struct.omapfb_plane_info*, %struct.omapfb_plane_info** %4, align 8
  %50 = getelementptr inbounds %struct.omapfb_plane_info, %struct.omapfb_plane_info* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  %51 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %7, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.omapfb_plane_info*, %struct.omapfb_plane_info** %4, align 8
  %54 = getelementptr inbounds %struct.omapfb_plane_info, %struct.omapfb_plane_info* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %7, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.omapfb_plane_info*, %struct.omapfb_plane_info** %4, align 8
  %58 = getelementptr inbounds %struct.omapfb_plane_info, %struct.omapfb_plane_info* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  br label %59

59:                                               ; preds = %17, %14
  ret i32 0
}

declare dso_local %struct.omapfb_info* @FB2OFB(%struct.fb_info*) #1

declare dso_local i32 @memset(%struct.omapfb_plane_info*, i32, i32) #1

declare dso_local i32 @get_mem_idx(%struct.omapfb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
