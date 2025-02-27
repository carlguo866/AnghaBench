; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_intel_sdvo.c_psb_intel_sdvo_set_input_timings_for_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_intel_sdvo.c_psb_intel_sdvo_set_input_timings_for_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psb_intel_sdvo = type { i32 }
%struct.drm_display_mode = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psb_intel_sdvo*, %struct.drm_display_mode*, %struct.drm_display_mode*)* @psb_intel_sdvo_set_input_timings_for_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psb_intel_sdvo_set_input_timings_for_mode(%struct.psb_intel_sdvo* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.psb_intel_sdvo*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.drm_display_mode*, align 8
  store %struct.psb_intel_sdvo* %0, %struct.psb_intel_sdvo** %5, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %6, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %7, align 8
  %8 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %5, align 8
  %9 = call i32 @psb_intel_sdvo_set_target_input(%struct.psb_intel_sdvo* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %41

12:                                               ; preds = %3
  %13 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %5, align 8
  %14 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %15 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sdiv i32 %16, 10
  %18 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %19 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %22 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @psb_intel_sdvo_create_preferred_input_timing(%struct.psb_intel_sdvo* %13, i32 %17, i32 %20, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %41

27:                                               ; preds = %12
  %28 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %5, align 8
  %29 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %5, align 8
  %30 = getelementptr inbounds %struct.psb_intel_sdvo, %struct.psb_intel_sdvo* %29, i32 0, i32 0
  %31 = call i32 @psb_intel_sdvo_get_preferred_input_timing(%struct.psb_intel_sdvo* %28, i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %41

34:                                               ; preds = %27
  %35 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %36 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %5, align 8
  %37 = getelementptr inbounds %struct.psb_intel_sdvo, %struct.psb_intel_sdvo* %36, i32 0, i32 0
  %38 = call i32 @psb_intel_sdvo_get_mode_from_dtd(%struct.drm_display_mode* %35, i32* %37)
  %39 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %40 = call i32 @drm_mode_set_crtcinfo(%struct.drm_display_mode* %39, i32 0)
  store i32 1, i32* %4, align 4
  br label %41

41:                                               ; preds = %34, %33, %26, %11
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @psb_intel_sdvo_set_target_input(%struct.psb_intel_sdvo*) #1

declare dso_local i32 @psb_intel_sdvo_create_preferred_input_timing(%struct.psb_intel_sdvo*, i32, i32, i32) #1

declare dso_local i32 @psb_intel_sdvo_get_preferred_input_timing(%struct.psb_intel_sdvo*, i32*) #1

declare dso_local i32 @psb_intel_sdvo_get_mode_from_dtd(%struct.drm_display_mode*, i32*) #1

declare dso_local i32 @drm_mode_set_crtcinfo(%struct.drm_display_mode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
