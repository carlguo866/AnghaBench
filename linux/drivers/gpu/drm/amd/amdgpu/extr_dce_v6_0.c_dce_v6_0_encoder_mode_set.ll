; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v6_0.c_dce_v6_0_encoder_mode_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v6_0.c_dce_v6_0_encoder_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.amdgpu_encoder = type { i32 }

@DRM_MODE_DPMS_OFF = common dso_local global i32 0, align 4
@ATOM_ENCODER_MODE_HDMI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, %struct.drm_display_mode*, %struct.drm_display_mode*)* @dce_v6_0_encoder_mode_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce_v6_0_encoder_mode_set(%struct.drm_encoder* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.amdgpu_encoder*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %6, align 8
  %9 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %10 = call %struct.amdgpu_encoder* @to_amdgpu_encoder(%struct.drm_encoder* %9)
  store %struct.amdgpu_encoder* %10, %struct.amdgpu_encoder** %7, align 8
  %11 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %12 = call i32 @amdgpu_atombios_encoder_get_encoder_mode(%struct.drm_encoder* %11)
  store i32 %12, i32* %8, align 4
  %13 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %14 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %7, align 8
  %17 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %19 = load i32, i32* @DRM_MODE_DPMS_OFF, align 4
  %20 = call i32 @amdgpu_atombios_encoder_dpms(%struct.drm_encoder* %18, i32 %19)
  %21 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %22 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %25 = call i32 @dce_v6_0_set_interleave(i32 %23, %struct.drm_display_mode* %24)
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @ATOM_ENCODER_MODE_HDMI, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %3
  %30 = load i32, i32* %8, align 4
  %31 = call i64 @ENCODER_MODE_IS_DP(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %29, %3
  %34 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %35 = call i32 @dce_v6_0_afmt_enable(%struct.drm_encoder* %34, i32 1)
  %36 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %37 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %38 = call i32 @dce_v6_0_afmt_setmode(%struct.drm_encoder* %36, %struct.drm_display_mode* %37)
  br label %39

39:                                               ; preds = %33, %29
  ret void
}

declare dso_local %struct.amdgpu_encoder* @to_amdgpu_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @amdgpu_atombios_encoder_get_encoder_mode(%struct.drm_encoder*) #1

declare dso_local i32 @amdgpu_atombios_encoder_dpms(%struct.drm_encoder*, i32) #1

declare dso_local i32 @dce_v6_0_set_interleave(i32, %struct.drm_display_mode*) #1

declare dso_local i64 @ENCODER_MODE_IS_DP(i32) #1

declare dso_local i32 @dce_v6_0_afmt_enable(%struct.drm_encoder*, i32) #1

declare dso_local i32 @dce_v6_0_afmt_setmode(%struct.drm_encoder*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
