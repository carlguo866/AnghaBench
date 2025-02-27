; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bochs/extr_bochs_kms.c_bochs_plane_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bochs/extr_bochs_kms.c_bochs_plane_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bochs_device = type { i32 }
%struct.drm_plane_state = type { %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32, i64*, i32*, i32* }
%struct.drm_gem_vram_object = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bochs_device*, %struct.drm_plane_state*)* @bochs_plane_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bochs_plane_update(%struct.bochs_device* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca %struct.bochs_device*, align 8
  %4 = alloca %struct.drm_plane_state*, align 8
  %5 = alloca %struct.drm_gem_vram_object*, align 8
  store %struct.bochs_device* %0, %struct.bochs_device** %3, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %4, align 8
  %6 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %7 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = icmp ne %struct.TYPE_4__* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load %struct.bochs_device*, %struct.bochs_device** %3, align 8
  %12 = getelementptr inbounds %struct.bochs_device, %struct.bochs_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10, %2
  br label %59

16:                                               ; preds = %10
  %17 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %18 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.drm_gem_vram_object* @drm_gem_vram_of_gem(i32 %23)
  store %struct.drm_gem_vram_object* %24, %struct.drm_gem_vram_object** %5, align 8
  %25 = load %struct.bochs_device*, %struct.bochs_device** %3, align 8
  %26 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %27 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %30 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %33 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %40 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i64*, i64** %42, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %5, align 8
  %47 = getelementptr inbounds %struct.drm_gem_vram_object, %struct.drm_gem_vram_object* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %45, %49
  %51 = call i32 @bochs_hw_setbase(%struct.bochs_device* %25, i32 %28, i32 %31, i32 %38, i64 %50)
  %52 = load %struct.bochs_device*, %struct.bochs_device** %3, align 8
  %53 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %54 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @bochs_hw_setformat(%struct.bochs_device* %52, i32 %57)
  br label %59

59:                                               ; preds = %16, %15
  ret void
}

declare dso_local %struct.drm_gem_vram_object* @drm_gem_vram_of_gem(i32) #1

declare dso_local i32 @bochs_hw_setbase(%struct.bochs_device*, i32, i32, i32, i64) #1

declare dso_local i32 @bochs_hw_setformat(%struct.bochs_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
