; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sprite.c_intel_fb_scalable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sprite.c_intel_fb_scalable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_framebuffer = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_framebuffer*)* @intel_fb_scalable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_fb_scalable(%struct.drm_framebuffer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_framebuffer*, align 8
  store %struct.drm_framebuffer* %0, %struct.drm_framebuffer** %3, align 8
  %4 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %3, align 8
  %5 = icmp ne %struct.drm_framebuffer* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %15

7:                                                ; preds = %1
  %8 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %3, align 8
  %9 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %14 [
    i32 128, label %13
  ]

13:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %15

14:                                               ; preds = %7
  store i32 1, i32* %2, align 4
  br label %15

15:                                               ; preds = %14, %13, %6
  %16 = load i32, i32* %2, align 4
  ret i32 %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
