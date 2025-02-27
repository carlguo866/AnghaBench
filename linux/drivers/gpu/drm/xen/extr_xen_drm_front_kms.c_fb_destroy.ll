; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/xen/extr_xen_drm_front_kms.c_fb_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/xen/extr_xen_drm_front_kms.c_fb_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_framebuffer = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.xen_drm_front_drm_info* }
%struct.xen_drm_front_drm_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_framebuffer*)* @fb_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fb_destroy(%struct.drm_framebuffer* %0) #0 {
  %2 = alloca %struct.drm_framebuffer*, align 8
  %3 = alloca %struct.xen_drm_front_drm_info*, align 8
  %4 = alloca i32, align 4
  store %struct.drm_framebuffer* %0, %struct.drm_framebuffer** %2, align 8
  %5 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %2, align 8
  %6 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.xen_drm_front_drm_info*, %struct.xen_drm_front_drm_info** %8, align 8
  store %struct.xen_drm_front_drm_info* %9, %struct.xen_drm_front_drm_info** %3, align 8
  %10 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %2, align 8
  %11 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = call i64 @drm_dev_enter(%struct.TYPE_2__* %12, i32* %4)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %1
  %16 = load %struct.xen_drm_front_drm_info*, %struct.xen_drm_front_drm_info** %3, align 8
  %17 = getelementptr inbounds %struct.xen_drm_front_drm_info, %struct.xen_drm_front_drm_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %2, align 8
  %20 = call i32 @xen_drm_front_fb_to_cookie(%struct.drm_framebuffer* %19)
  %21 = call i32 @xen_drm_front_fb_detach(i32 %18, i32 %20)
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @drm_dev_exit(i32 %22)
  br label %24

24:                                               ; preds = %15, %1
  %25 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %2, align 8
  %26 = call i32 @drm_gem_fb_destroy(%struct.drm_framebuffer* %25)
  ret void
}

declare dso_local i64 @drm_dev_enter(%struct.TYPE_2__*, i32*) #1

declare dso_local i32 @xen_drm_front_fb_detach(i32, i32) #1

declare dso_local i32 @xen_drm_front_fb_to_cookie(%struct.drm_framebuffer*) #1

declare dso_local i32 @drm_dev_exit(i32) #1

declare dso_local i32 @drm_gem_fb_destroy(%struct.drm_framebuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
