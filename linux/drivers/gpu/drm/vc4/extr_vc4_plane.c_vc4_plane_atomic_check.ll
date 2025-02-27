; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_plane.c_vc4_plane_atomic_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_plane.c_vc4_plane_atomic_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i32 }
%struct.drm_plane_state = type { i32 }
%struct.vc4_plane_state = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_plane*, %struct.drm_plane_state*)* @vc4_plane_atomic_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vc4_plane_atomic_check(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_plane*, align 8
  %5 = alloca %struct.drm_plane_state*, align 8
  %6 = alloca %struct.vc4_plane_state*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_plane* %0, %struct.drm_plane** %4, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %5, align 8
  %8 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %9 = call %struct.vc4_plane_state* @to_vc4_plane_state(%struct.drm_plane_state* %8)
  store %struct.vc4_plane_state* %9, %struct.vc4_plane_state** %6, align 8
  %10 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %6, align 8
  %11 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %10, i32 0, i32 0
  store i64 0, i64* %11, align 8
  %12 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %13 = call i32 @plane_enabled(%struct.drm_plane_state* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %27

16:                                               ; preds = %2
  %17 = load %struct.drm_plane*, %struct.drm_plane** %4, align 8
  %18 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %19 = call i32 @vc4_plane_mode_set(%struct.drm_plane* %17, %struct.drm_plane_state* %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %3, align 4
  br label %27

24:                                               ; preds = %16
  %25 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %26 = call i32 @vc4_plane_allocate_lbm(%struct.drm_plane_state* %25)
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %24, %22, %15
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local %struct.vc4_plane_state* @to_vc4_plane_state(%struct.drm_plane_state*) #1

declare dso_local i32 @plane_enabled(%struct.drm_plane_state*) #1

declare dso_local i32 @vc4_plane_mode_set(%struct.drm_plane*, %struct.drm_plane_state*) #1

declare dso_local i32 @vc4_plane_allocate_lbm(%struct.drm_plane_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
