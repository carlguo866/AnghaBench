; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vboxvideo/extr_vbox_main.c_vbox_framebuffer_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vboxvideo/extr_vbox_main.c_vbox_framebuffer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vbox_private = type { i32 }
%struct.vbox_framebuffer = type { i32, %struct.drm_gem_object* }
%struct.drm_mode_fb_cmd2 = type { i32 }
%struct.drm_gem_object = type { i32 }

@vbox_fb_funcs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"framebuffer init failed %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vbox_framebuffer_init(%struct.vbox_private* %0, %struct.vbox_framebuffer* %1, %struct.drm_mode_fb_cmd2* %2, %struct.drm_gem_object* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vbox_private*, align 8
  %7 = alloca %struct.vbox_framebuffer*, align 8
  %8 = alloca %struct.drm_mode_fb_cmd2*, align 8
  %9 = alloca %struct.drm_gem_object*, align 8
  %10 = alloca i32, align 4
  store %struct.vbox_private* %0, %struct.vbox_private** %6, align 8
  store %struct.vbox_framebuffer* %1, %struct.vbox_framebuffer** %7, align 8
  store %struct.drm_mode_fb_cmd2* %2, %struct.drm_mode_fb_cmd2** %8, align 8
  store %struct.drm_gem_object* %3, %struct.drm_gem_object** %9, align 8
  %11 = load %struct.vbox_private*, %struct.vbox_private** %6, align 8
  %12 = getelementptr inbounds %struct.vbox_private, %struct.vbox_private* %11, i32 0, i32 0
  %13 = load %struct.vbox_framebuffer*, %struct.vbox_framebuffer** %7, align 8
  %14 = getelementptr inbounds %struct.vbox_framebuffer, %struct.vbox_framebuffer* %13, i32 0, i32 0
  %15 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %8, align 8
  %16 = call i32 @drm_helper_mode_fill_fb_struct(i32* %12, i32* %14, %struct.drm_mode_fb_cmd2* %15)
  %17 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %18 = load %struct.vbox_framebuffer*, %struct.vbox_framebuffer** %7, align 8
  %19 = getelementptr inbounds %struct.vbox_framebuffer, %struct.vbox_framebuffer* %18, i32 0, i32 1
  store %struct.drm_gem_object* %17, %struct.drm_gem_object** %19, align 8
  %20 = load %struct.vbox_private*, %struct.vbox_private** %6, align 8
  %21 = getelementptr inbounds %struct.vbox_private, %struct.vbox_private* %20, i32 0, i32 0
  %22 = load %struct.vbox_framebuffer*, %struct.vbox_framebuffer** %7, align 8
  %23 = getelementptr inbounds %struct.vbox_framebuffer, %struct.vbox_framebuffer* %22, i32 0, i32 0
  %24 = call i32 @drm_framebuffer_init(i32* %21, i32* %23, i32* @vbox_fb_funcs)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %4
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %10, align 4
  store i32 %30, i32* %5, align 4
  br label %32

31:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %31, %27
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i32 @drm_helper_mode_fill_fb_struct(i32*, i32*, %struct.drm_mode_fb_cmd2*) #1

declare dso_local i32 @drm_framebuffer_init(i32*, i32*, i32*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
