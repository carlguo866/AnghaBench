; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_hdmi5.c_hdmi_display_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_hdmi5.c_hdmi_display_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dss_device = type { i32 }
%struct.omap_hdmi = type { i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"Enter hdmi_display_disable\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_dss_device*)* @hdmi_display_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdmi_display_disable(%struct.omap_dss_device* %0) #0 {
  %2 = alloca %struct.omap_dss_device*, align 8
  %3 = alloca %struct.omap_hdmi*, align 8
  %4 = alloca i64, align 8
  store %struct.omap_dss_device* %0, %struct.omap_dss_device** %2, align 8
  %5 = load %struct.omap_dss_device*, %struct.omap_dss_device** %2, align 8
  %6 = call %struct.omap_hdmi* @dssdev_to_hdmi(%struct.omap_dss_device* %5)
  store %struct.omap_hdmi* %6, %struct.omap_hdmi** %3, align 8
  %7 = call i32 @DSSDBG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %9 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %8, i32 0, i32 1
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %12 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %11, i32 0, i32 2
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %16 = call i32 @hdmi_stop_audio_stream(%struct.omap_hdmi* %15)
  %17 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %18 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %17, i32 0, i32 0
  store i32 0, i32* %18, align 4
  %19 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %20 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %19, i32 0, i32 2
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @spin_unlock_irqrestore(i32* %20, i64 %21)
  %23 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %24 = call i32 @hdmi_power_off_full(%struct.omap_hdmi* %23)
  %25 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %26 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %25, i32 0, i32 1
  %27 = call i32 @mutex_unlock(i32* %26)
  ret void
}

declare dso_local %struct.omap_hdmi* @dssdev_to_hdmi(%struct.omap_dss_device*) #1

declare dso_local i32 @DSSDBG(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @hdmi_stop_audio_stream(%struct.omap_hdmi*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @hdmi_power_off_full(%struct.omap_hdmi*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
