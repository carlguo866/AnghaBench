; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dvo.c_intel_dvo_get_current_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dvo.c_intel_dvo_get_current_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_display_mode = type { i32 }
%struct.intel_encoder = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"using current (BIOS) mode: \00", align 1
@DRM_MODE_TYPE_PREFERRED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_display_mode* (%struct.intel_encoder*)* @intel_dvo_get_current_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_display_mode* @intel_dvo_get_current_mode(%struct.intel_encoder* %0) #0 {
  %2 = alloca %struct.intel_encoder*, align 8
  %3 = alloca %struct.drm_display_mode*, align 8
  store %struct.intel_encoder* %0, %struct.intel_encoder** %2, align 8
  %4 = load %struct.intel_encoder*, %struct.intel_encoder** %2, align 8
  %5 = call %struct.drm_display_mode* @intel_encoder_current_mode(%struct.intel_encoder* %4)
  store %struct.drm_display_mode* %5, %struct.drm_display_mode** %3, align 8
  %6 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %7 = icmp ne %struct.drm_display_mode* %6, null
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %11 = call i32 @drm_mode_debug_printmodeline(%struct.drm_display_mode* %10)
  %12 = load i32, i32* @DRM_MODE_TYPE_PREFERRED, align 4
  %13 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %14 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 4
  br label %17

17:                                               ; preds = %8, %1
  %18 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  ret %struct.drm_display_mode* %18
}

declare dso_local %struct.drm_display_mode* @intel_encoder_current_mode(%struct.intel_encoder*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @drm_mode_debug_printmodeline(%struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
