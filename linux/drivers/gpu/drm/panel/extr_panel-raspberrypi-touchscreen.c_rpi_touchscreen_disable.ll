; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-raspberrypi-touchscreen.c_rpi_touchscreen_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-raspberrypi-touchscreen.c_rpi_touchscreen_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_panel = type { i32 }
%struct.rpi_touchscreen = type { i32 }

@REG_PWM = common dso_local global i32 0, align 4
@REG_POWERON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_panel*)* @rpi_touchscreen_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpi_touchscreen_disable(%struct.drm_panel* %0) #0 {
  %2 = alloca %struct.drm_panel*, align 8
  %3 = alloca %struct.rpi_touchscreen*, align 8
  store %struct.drm_panel* %0, %struct.drm_panel** %2, align 8
  %4 = load %struct.drm_panel*, %struct.drm_panel** %2, align 8
  %5 = call %struct.rpi_touchscreen* @panel_to_ts(%struct.drm_panel* %4)
  store %struct.rpi_touchscreen* %5, %struct.rpi_touchscreen** %3, align 8
  %6 = load %struct.rpi_touchscreen*, %struct.rpi_touchscreen** %3, align 8
  %7 = load i32, i32* @REG_PWM, align 4
  %8 = call i32 @rpi_touchscreen_i2c_write(%struct.rpi_touchscreen* %6, i32 %7, i32 0)
  %9 = load %struct.rpi_touchscreen*, %struct.rpi_touchscreen** %3, align 8
  %10 = load i32, i32* @REG_POWERON, align 4
  %11 = call i32 @rpi_touchscreen_i2c_write(%struct.rpi_touchscreen* %9, i32 %10, i32 0)
  %12 = call i32 @udelay(i32 1)
  ret i32 0
}

declare dso_local %struct.rpi_touchscreen* @panel_to_ts(%struct.drm_panel*) #1

declare dso_local i32 @rpi_touchscreen_i2c_write(%struct.rpi_touchscreen*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
