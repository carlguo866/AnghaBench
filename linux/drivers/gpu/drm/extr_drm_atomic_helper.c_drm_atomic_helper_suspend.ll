; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_atomic_helper.c_drm_atomic_helper_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_atomic_helper.c_drm_atomic_helper_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_atomic_state = type { i32 }
%struct.drm_device = type { i32 }
%struct.drm_modeset_acquire_ctx = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_atomic_state* @drm_atomic_helper_suspend(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_atomic_state*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_modeset_acquire_ctx, align 4
  %5 = alloca %struct.drm_atomic_state*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %7 = load i32, i32* @EINVAL, align 4
  %8 = sub nsw i32 0, %7
  %9 = call %struct.drm_atomic_state* @ERR_PTR(i32 %8)
  store %struct.drm_atomic_state* %9, %struct.drm_atomic_state** %5, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %11 = load i32, i32* %6, align 4
  %12 = getelementptr inbounds %struct.drm_modeset_acquire_ctx, %struct.drm_modeset_acquire_ctx* %4, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @DRM_MODESET_LOCK_ALL_BEGIN(%struct.drm_device* %10, i32 %13, i32 0, i32 %11)
  %15 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %16 = call %struct.drm_atomic_state* @drm_atomic_helper_duplicate_state(%struct.drm_device* %15, %struct.drm_modeset_acquire_ctx* %4)
  store %struct.drm_atomic_state* %16, %struct.drm_atomic_state** %5, align 8
  %17 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %5, align 8
  %18 = call i64 @IS_ERR(%struct.drm_atomic_state* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %32

21:                                               ; preds = %1
  %22 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %23 = call i32 @drm_atomic_helper_disable_all(%struct.drm_device* %22, %struct.drm_modeset_acquire_ctx* %4)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %5, align 8
  %28 = call i32 @drm_atomic_state_put(%struct.drm_atomic_state* %27)
  %29 = load i32, i32* %6, align 4
  %30 = call %struct.drm_atomic_state* @ERR_PTR(i32 %29)
  store %struct.drm_atomic_state* %30, %struct.drm_atomic_state** %5, align 8
  br label %32

31:                                               ; preds = %21
  br label %32

32:                                               ; preds = %31, %26, %20
  %33 = load i32, i32* %6, align 4
  %34 = getelementptr inbounds %struct.drm_modeset_acquire_ctx, %struct.drm_modeset_acquire_ctx* %4, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @DRM_MODESET_LOCK_ALL_END(i32 %35, i32 %33)
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load i32, i32* %6, align 4
  %41 = call %struct.drm_atomic_state* @ERR_PTR(i32 %40)
  store %struct.drm_atomic_state* %41, %struct.drm_atomic_state** %2, align 8
  br label %44

42:                                               ; preds = %32
  %43 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %5, align 8
  store %struct.drm_atomic_state* %43, %struct.drm_atomic_state** %2, align 8
  br label %44

44:                                               ; preds = %42, %39
  %45 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  ret %struct.drm_atomic_state* %45
}

declare dso_local %struct.drm_atomic_state* @ERR_PTR(i32) #1

declare dso_local i32 @DRM_MODESET_LOCK_ALL_BEGIN(%struct.drm_device*, i32, i32, i32) #1

declare dso_local %struct.drm_atomic_state* @drm_atomic_helper_duplicate_state(%struct.drm_device*, %struct.drm_modeset_acquire_ctx*) #1

declare dso_local i64 @IS_ERR(%struct.drm_atomic_state*) #1

declare dso_local i32 @drm_atomic_helper_disable_all(%struct.drm_device*, %struct.drm_modeset_acquire_ctx*) #1

declare dso_local i32 @drm_atomic_state_put(%struct.drm_atomic_state*) #1

declare dso_local i32 @DRM_MODESET_LOCK_ALL_END(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
