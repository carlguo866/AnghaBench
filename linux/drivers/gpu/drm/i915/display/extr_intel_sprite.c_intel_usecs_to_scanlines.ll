; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sprite.c_intel_usecs_to_scanlines.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sprite.c_intel_usecs_to_scanlines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_display_mode = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_usecs_to_scanlines(%struct.drm_display_mode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_display_mode* %0, %struct.drm_display_mode** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %7 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %22

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %14 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = mul nsw i32 %12, %15
  %17 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %18 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = mul nsw i32 1000, %19
  %21 = call i32 @DIV_ROUND_UP(i32 %16, i32 %20)
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %11, %10
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
