; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_plane.c_exynos_plane_atomic_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_plane.c_exynos_plane_atomic_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i32 }
%struct.drm_plane_state = type { i32 }
%struct.exynos_drm_plane = type { i32 }
%struct.exynos_drm_crtc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.exynos_drm_crtc*, %struct.exynos_drm_plane*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_plane*, %struct.drm_plane_state*)* @exynos_plane_atomic_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos_plane_atomic_disable(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca %struct.drm_plane*, align 8
  %4 = alloca %struct.drm_plane_state*, align 8
  %5 = alloca %struct.exynos_drm_plane*, align 8
  %6 = alloca %struct.exynos_drm_crtc*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %3, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %4, align 8
  %7 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %8 = call %struct.exynos_drm_plane* @to_exynos_plane(%struct.drm_plane* %7)
  store %struct.exynos_drm_plane* %8, %struct.exynos_drm_plane** %5, align 8
  %9 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %10 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.exynos_drm_crtc* @to_exynos_crtc(i32 %11)
  store %struct.exynos_drm_crtc* %12, %struct.exynos_drm_crtc** %6, align 8
  %13 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %14 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %34

18:                                               ; preds = %2
  %19 = load %struct.exynos_drm_crtc*, %struct.exynos_drm_crtc** %6, align 8
  %20 = getelementptr inbounds %struct.exynos_drm_crtc, %struct.exynos_drm_crtc* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (%struct.exynos_drm_crtc*, %struct.exynos_drm_plane*)*, i32 (%struct.exynos_drm_crtc*, %struct.exynos_drm_plane*)** %22, align 8
  %24 = icmp ne i32 (%struct.exynos_drm_crtc*, %struct.exynos_drm_plane*)* %23, null
  br i1 %24, label %25, label %34

25:                                               ; preds = %18
  %26 = load %struct.exynos_drm_crtc*, %struct.exynos_drm_crtc** %6, align 8
  %27 = getelementptr inbounds %struct.exynos_drm_crtc, %struct.exynos_drm_crtc* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (%struct.exynos_drm_crtc*, %struct.exynos_drm_plane*)*, i32 (%struct.exynos_drm_crtc*, %struct.exynos_drm_plane*)** %29, align 8
  %31 = load %struct.exynos_drm_crtc*, %struct.exynos_drm_crtc** %6, align 8
  %32 = load %struct.exynos_drm_plane*, %struct.exynos_drm_plane** %5, align 8
  %33 = call i32 %30(%struct.exynos_drm_crtc* %31, %struct.exynos_drm_plane* %32)
  br label %34

34:                                               ; preds = %17, %25, %18
  ret void
}

declare dso_local %struct.exynos_drm_plane* @to_exynos_plane(%struct.drm_plane*) #1

declare dso_local %struct.exynos_drm_crtc* @to_exynos_crtc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
