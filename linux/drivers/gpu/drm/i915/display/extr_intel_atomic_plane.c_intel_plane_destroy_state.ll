; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_atomic_plane.c_intel_plane_destroy_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_atomic_plane.c_intel_plane_destroy_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i32 }
%struct.drm_plane_state = type { i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_plane_destroy_state(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca %struct.drm_plane*, align 8
  %4 = alloca %struct.drm_plane_state*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %3, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %4, align 8
  %5 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %6 = call %struct.TYPE_2__* @to_intel_plane_state(%struct.drm_plane_state* %5)
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @WARN_ON(i32 %8)
  %10 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %11 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %12 = call i32 @drm_atomic_helper_plane_destroy_state(%struct.drm_plane* %10, %struct.drm_plane_state* %11)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.TYPE_2__* @to_intel_plane_state(%struct.drm_plane_state*) #1

declare dso_local i32 @drm_atomic_helper_plane_destroy_state(%struct.drm_plane*, %struct.drm_plane_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
