; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_plane.c_exynos_drm_plane_duplicate_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_plane.c_exynos_drm_plane_duplicate_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane_state = type { i32 }
%struct.drm_plane = type { i32 }
%struct.exynos_drm_plane_state = type { %struct.drm_plane_state }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_plane_state* (%struct.drm_plane*)* @exynos_drm_plane_duplicate_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_plane_state* @exynos_drm_plane_duplicate_state(%struct.drm_plane* %0) #0 {
  %2 = alloca %struct.drm_plane_state*, align 8
  %3 = alloca %struct.drm_plane*, align 8
  %4 = alloca %struct.exynos_drm_plane_state*, align 8
  %5 = alloca %struct.exynos_drm_plane_state*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %3, align 8
  %6 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %7 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.exynos_drm_plane_state* @to_exynos_plane_state(i32 %8)
  store %struct.exynos_drm_plane_state* %9, %struct.exynos_drm_plane_state** %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.exynos_drm_plane_state* @kzalloc(i32 4, i32 %10)
  store %struct.exynos_drm_plane_state* %11, %struct.exynos_drm_plane_state** %5, align 8
  %12 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %13 = icmp ne %struct.exynos_drm_plane_state* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store %struct.drm_plane_state* null, %struct.drm_plane_state** %2, align 8
  br label %22

15:                                               ; preds = %1
  %16 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %17 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %18 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %17, i32 0, i32 0
  %19 = call i32 @__drm_atomic_helper_plane_duplicate_state(%struct.drm_plane* %16, %struct.drm_plane_state* %18)
  %20 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %21 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %20, i32 0, i32 0
  store %struct.drm_plane_state* %21, %struct.drm_plane_state** %2, align 8
  br label %22

22:                                               ; preds = %15, %14
  %23 = load %struct.drm_plane_state*, %struct.drm_plane_state** %2, align 8
  ret %struct.drm_plane_state* %23
}

declare dso_local %struct.exynos_drm_plane_state* @to_exynos_plane_state(i32) #1

declare dso_local %struct.exynos_drm_plane_state* @kzalloc(i32, i32) #1

declare dso_local i32 @__drm_atomic_helper_plane_duplicate_state(%struct.drm_plane*, %struct.drm_plane_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
