; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_hdmi_wp.c_hdmi_wp_audio_core_req_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_hdmi_wp.c_hdmi_wp_audio_core_req_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_wp_data = type { i32 }

@HDMI_WP_AUDIO_CTRL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hdmi_wp_audio_core_req_enable(%struct.hdmi_wp_data* %0, i32 %1) #0 {
  %3 = alloca %struct.hdmi_wp_data*, align 8
  %4 = alloca i32, align 4
  store %struct.hdmi_wp_data* %0, %struct.hdmi_wp_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.hdmi_wp_data*, %struct.hdmi_wp_data** %3, align 8
  %6 = getelementptr inbounds %struct.hdmi_wp_data, %struct.hdmi_wp_data* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @HDMI_WP_AUDIO_CTRL, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @REG_FLD_MOD(i32 %7, i32 %8, i32 %9, i32 30, i32 30)
  ret i32 0
}

declare dso_local i32 @REG_FLD_MOD(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
