; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_display.c_radeon_user_framebuffer_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_display.c_radeon_user_framebuffer_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_framebuffer = type { i32 }
%struct.drm_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_mode_fb_cmd2 = type { i32* }
%struct.drm_gem_object = type { i32 }
%struct.radeon_framebuffer = type { %struct.drm_framebuffer }

@.str = private unnamed_addr constant [69 x i8] c"No GEM object associated to handle 0x%08X, can't create framebuffer\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_framebuffer* (%struct.drm_device*, %struct.drm_file*, %struct.drm_mode_fb_cmd2*)* @radeon_user_framebuffer_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_framebuffer* @radeon_user_framebuffer_create(%struct.drm_device* %0, %struct.drm_file* %1, %struct.drm_mode_fb_cmd2* %2) #0 {
  %4 = alloca %struct.drm_framebuffer*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_file*, align 8
  %7 = alloca %struct.drm_mode_fb_cmd2*, align 8
  %8 = alloca %struct.drm_gem_object*, align 8
  %9 = alloca %struct.radeon_framebuffer*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.drm_file* %1, %struct.drm_file** %6, align 8
  store %struct.drm_mode_fb_cmd2* %2, %struct.drm_mode_fb_cmd2** %7, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %12 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %13 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %14 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_device* %11, %struct.drm_file* %12, i32 %17)
  store %struct.drm_gem_object* %18, %struct.drm_gem_object** %8, align 8
  %19 = load %struct.drm_gem_object*, %struct.drm_gem_object** %8, align 8
  %20 = icmp eq %struct.drm_gem_object* %19, null
  br i1 %20, label %21, label %35

21:                                               ; preds = %3
  %22 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %23 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %27 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dev_err(i32* %25, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @ENOENT, align 4
  %33 = sub nsw i32 0, %32
  %34 = call %struct.drm_framebuffer* @ERR_PTR(i32 %33)
  store %struct.drm_framebuffer* %34, %struct.drm_framebuffer** %4, align 8
  br label %64

35:                                               ; preds = %3
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.radeon_framebuffer* @kzalloc(i32 4, i32 %36)
  store %struct.radeon_framebuffer* %37, %struct.radeon_framebuffer** %9, align 8
  %38 = load %struct.radeon_framebuffer*, %struct.radeon_framebuffer** %9, align 8
  %39 = icmp eq %struct.radeon_framebuffer* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load %struct.drm_gem_object*, %struct.drm_gem_object** %8, align 8
  %42 = call i32 @drm_gem_object_unreference_unlocked(%struct.drm_gem_object* %41)
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  %45 = call %struct.drm_framebuffer* @ERR_PTR(i32 %44)
  store %struct.drm_framebuffer* %45, %struct.drm_framebuffer** %4, align 8
  br label %64

46:                                               ; preds = %35
  %47 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %48 = load %struct.radeon_framebuffer*, %struct.radeon_framebuffer** %9, align 8
  %49 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %50 = load %struct.drm_gem_object*, %struct.drm_gem_object** %8, align 8
  %51 = call i32 @radeon_framebuffer_init(%struct.drm_device* %47, %struct.radeon_framebuffer* %48, %struct.drm_mode_fb_cmd2* %49, %struct.drm_gem_object* %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %46
  %55 = load %struct.radeon_framebuffer*, %struct.radeon_framebuffer** %9, align 8
  %56 = call i32 @kfree(%struct.radeon_framebuffer* %55)
  %57 = load %struct.drm_gem_object*, %struct.drm_gem_object** %8, align 8
  %58 = call i32 @drm_gem_object_unreference_unlocked(%struct.drm_gem_object* %57)
  %59 = load i32, i32* %10, align 4
  %60 = call %struct.drm_framebuffer* @ERR_PTR(i32 %59)
  store %struct.drm_framebuffer* %60, %struct.drm_framebuffer** %4, align 8
  br label %64

61:                                               ; preds = %46
  %62 = load %struct.radeon_framebuffer*, %struct.radeon_framebuffer** %9, align 8
  %63 = getelementptr inbounds %struct.radeon_framebuffer, %struct.radeon_framebuffer* %62, i32 0, i32 0
  store %struct.drm_framebuffer* %63, %struct.drm_framebuffer** %4, align 8
  br label %64

64:                                               ; preds = %61, %54, %40, %21
  %65 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  ret %struct.drm_framebuffer* %65
}

declare dso_local %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_device*, %struct.drm_file*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local %struct.drm_framebuffer* @ERR_PTR(i32) #1

declare dso_local %struct.radeon_framebuffer* @kzalloc(i32, i32) #1

declare dso_local i32 @drm_gem_object_unreference_unlocked(%struct.drm_gem_object*) #1

declare dso_local i32 @radeon_framebuffer_init(%struct.drm_device*, %struct.radeon_framebuffer*, %struct.drm_mode_fb_cmd2*, %struct.drm_gem_object*) #1

declare dso_local i32 @kfree(%struct.radeon_framebuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
