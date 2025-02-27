; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/cirrus/extr_cirrus.c_cirrus_pipe_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/cirrus/extr_cirrus.c_cirrus_pipe_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_simple_display_pipe = type { %struct.TYPE_4__, %struct.drm_crtc }
%struct.TYPE_4__ = type { %struct.drm_plane_state* }
%struct.drm_crtc = type { %struct.TYPE_6__*, %struct.TYPE_5__*, i32 }
%struct.TYPE_6__ = type { i32, %struct.cirrus_device* }
%struct.cirrus_device = type { i64 }
%struct.TYPE_5__ = type { i32* }
%struct.drm_plane_state = type { i32 }
%struct.drm_rect = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_simple_display_pipe*, %struct.drm_plane_state*)* @cirrus_pipe_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cirrus_pipe_update(%struct.drm_simple_display_pipe* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca %struct.drm_simple_display_pipe*, align 8
  %4 = alloca %struct.drm_plane_state*, align 8
  %5 = alloca %struct.cirrus_device*, align 8
  %6 = alloca %struct.drm_plane_state*, align 8
  %7 = alloca %struct.drm_crtc*, align 8
  %8 = alloca %struct.drm_rect, align 4
  store %struct.drm_simple_display_pipe* %0, %struct.drm_simple_display_pipe** %3, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %4, align 8
  %9 = load %struct.drm_simple_display_pipe*, %struct.drm_simple_display_pipe** %3, align 8
  %10 = getelementptr inbounds %struct.drm_simple_display_pipe, %struct.drm_simple_display_pipe* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = load %struct.cirrus_device*, %struct.cirrus_device** %13, align 8
  store %struct.cirrus_device* %14, %struct.cirrus_device** %5, align 8
  %15 = load %struct.drm_simple_display_pipe*, %struct.drm_simple_display_pipe** %3, align 8
  %16 = getelementptr inbounds %struct.drm_simple_display_pipe, %struct.drm_simple_display_pipe* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.drm_plane_state*, %struct.drm_plane_state** %17, align 8
  store %struct.drm_plane_state* %18, %struct.drm_plane_state** %6, align 8
  %19 = load %struct.drm_simple_display_pipe*, %struct.drm_simple_display_pipe** %3, align 8
  %20 = getelementptr inbounds %struct.drm_simple_display_pipe, %struct.drm_simple_display_pipe* %19, i32 0, i32 1
  store %struct.drm_crtc* %20, %struct.drm_crtc** %7, align 8
  %21 = load %struct.drm_simple_display_pipe*, %struct.drm_simple_display_pipe** %3, align 8
  %22 = getelementptr inbounds %struct.drm_simple_display_pipe, %struct.drm_simple_display_pipe* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.drm_plane_state*, %struct.drm_plane_state** %23, align 8
  %25 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %51

28:                                               ; preds = %2
  %29 = load %struct.cirrus_device*, %struct.cirrus_device** %5, align 8
  %30 = getelementptr inbounds %struct.cirrus_device, %struct.cirrus_device* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.drm_simple_display_pipe*, %struct.drm_simple_display_pipe** %3, align 8
  %33 = getelementptr inbounds %struct.drm_simple_display_pipe, %struct.drm_simple_display_pipe* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load %struct.drm_plane_state*, %struct.drm_plane_state** %34, align 8
  %36 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @cirrus_cpp(i32 %37)
  %39 = icmp ne i64 %31, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %28
  %41 = load %struct.cirrus_device*, %struct.cirrus_device** %5, align 8
  %42 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %43 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %42, i32 0, i32 2
  %44 = load %struct.drm_simple_display_pipe*, %struct.drm_simple_display_pipe** %3, align 8
  %45 = getelementptr inbounds %struct.drm_simple_display_pipe, %struct.drm_simple_display_pipe* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load %struct.drm_plane_state*, %struct.drm_plane_state** %46, align 8
  %48 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @cirrus_mode_set(%struct.cirrus_device* %41, i32* %43, i32 %49)
  br label %51

51:                                               ; preds = %40, %28, %2
  %52 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %53 = load %struct.drm_plane_state*, %struct.drm_plane_state** %6, align 8
  %54 = call i64 @drm_atomic_helper_damage_merged(%struct.drm_plane_state* %52, %struct.drm_plane_state* %53, %struct.drm_rect* %8)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %51
  %57 = load %struct.drm_simple_display_pipe*, %struct.drm_simple_display_pipe** %3, align 8
  %58 = getelementptr inbounds %struct.drm_simple_display_pipe, %struct.drm_simple_display_pipe* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load %struct.drm_plane_state*, %struct.drm_plane_state** %59, align 8
  %61 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @cirrus_fb_blit_rect(i32 %62, %struct.drm_rect* %8)
  br label %64

64:                                               ; preds = %56, %51
  %65 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %66 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %65, i32 0, i32 1
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %93

71:                                               ; preds = %64
  %72 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %73 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %72, i32 0, i32 0
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = call i32 @spin_lock_irq(i32* %75)
  %77 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %78 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %79 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %78, i32 0, i32 1
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @drm_crtc_send_vblank_event(%struct.drm_crtc* %77, i32* %82)
  %84 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %85 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %84, i32 0, i32 1
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  store i32* null, i32** %87, align 8
  %88 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %89 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %88, i32 0, i32 0
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = call i32 @spin_unlock_irq(i32* %91)
  br label %93

93:                                               ; preds = %71, %64
  ret void
}

declare dso_local i64 @cirrus_cpp(i32) #1

declare dso_local i32 @cirrus_mode_set(%struct.cirrus_device*, i32*, i32) #1

declare dso_local i64 @drm_atomic_helper_damage_merged(%struct.drm_plane_state*, %struct.drm_plane_state*, %struct.drm_rect*) #1

declare dso_local i32 @cirrus_fb_blit_rect(i32, %struct.drm_rect*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @drm_crtc_send_vblank_event(%struct.drm_crtc*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
