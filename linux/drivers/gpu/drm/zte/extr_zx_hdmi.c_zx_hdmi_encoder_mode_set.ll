; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_hdmi.c_zx_hdmi_encoder_mode_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_hdmi.c_zx_hdmi_encoder_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.zx_hdmi = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, %struct.drm_display_mode*, %struct.drm_display_mode*)* @zx_hdmi_encoder_mode_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zx_hdmi_encoder_mode_set(%struct.drm_encoder* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.zx_hdmi*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %6, align 8
  %8 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %9 = call %struct.zx_hdmi* @to_zx_hdmi(%struct.drm_encoder* %8)
  store %struct.zx_hdmi* %9, %struct.zx_hdmi** %7, align 8
  %10 = load %struct.zx_hdmi*, %struct.zx_hdmi** %7, align 8
  %11 = getelementptr inbounds %struct.zx_hdmi, %struct.zx_hdmi* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  %15 = load %struct.zx_hdmi*, %struct.zx_hdmi** %7, align 8
  %16 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %17 = call i32 @zx_hdmi_config_video_avi(%struct.zx_hdmi* %15, %struct.drm_display_mode* %16)
  %18 = load %struct.zx_hdmi*, %struct.zx_hdmi** %7, align 8
  %19 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %20 = call i32 @zx_hdmi_config_video_vsi(%struct.zx_hdmi* %18, %struct.drm_display_mode* %19)
  br label %21

21:                                               ; preds = %14, %3
  ret void
}

declare dso_local %struct.zx_hdmi* @to_zx_hdmi(%struct.drm_encoder*) #1

declare dso_local i32 @zx_hdmi_config_video_avi(%struct.zx_hdmi*, %struct.drm_display_mode*) #1

declare dso_local i32 @zx_hdmi_config_video_vsi(%struct.zx_hdmi*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
