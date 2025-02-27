; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_oaktrail_hdmi.c_oaktrail_hdmi_audio_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_oaktrail_hdmi.c_oaktrail_hdmi_audio_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_psb_private* }
%struct.drm_psb_private = type { %struct.oaktrail_hdmi_dev* }
%struct.oaktrail_hdmi_dev = type { i32 }

@HDMI_HCR = common dso_local global i32 0, align 4
@HDMI_AUDIO_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*)* @oaktrail_hdmi_audio_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oaktrail_hdmi_audio_enable(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.drm_psb_private*, align 8
  %4 = alloca %struct.oaktrail_hdmi_dev*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %5 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %6 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %5, i32 0, i32 0
  %7 = load %struct.drm_psb_private*, %struct.drm_psb_private** %6, align 8
  store %struct.drm_psb_private* %7, %struct.drm_psb_private** %3, align 8
  %8 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %9 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %8, i32 0, i32 0
  %10 = load %struct.oaktrail_hdmi_dev*, %struct.oaktrail_hdmi_dev** %9, align 8
  store %struct.oaktrail_hdmi_dev* %10, %struct.oaktrail_hdmi_dev** %4, align 8
  %11 = load i32, i32* @HDMI_HCR, align 4
  %12 = call i32 @HDMI_WRITE(i32 %11, i32 103)
  %13 = load i32, i32* @HDMI_HCR, align 4
  %14 = call i32 @HDMI_READ(i32 %13)
  %15 = call i32 @HDMI_WRITE(i32 20904, i32 16)
  %16 = call i32 @HDMI_READ(i32 20904)
  %17 = load i32, i32* @HDMI_AUDIO_CTRL, align 4
  %18 = call i32 @HDMI_WRITE(i32 %17, i32 1)
  %19 = load i32, i32* @HDMI_AUDIO_CTRL, align 4
  %20 = call i32 @HDMI_READ(i32 %19)
  ret void
}

declare dso_local i32 @HDMI_WRITE(i32, i32) #1

declare dso_local i32 @HDMI_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
