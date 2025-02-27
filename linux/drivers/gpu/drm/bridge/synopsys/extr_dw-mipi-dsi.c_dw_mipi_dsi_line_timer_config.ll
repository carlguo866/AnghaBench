; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-mipi-dsi.c_dw_mipi_dsi_line_timer_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-mipi-dsi.c_dw_mipi_dsi_line_timer_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_mipi_dsi = type { i32 }
%struct.drm_display_mode = type { i64, i64, i64 }

@DSI_VID_HLINE_TIME = common dso_local global i32 0, align 4
@DSI_VID_HSA_TIME = common dso_local global i32 0, align 4
@DSI_VID_HBP_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dw_mipi_dsi*, %struct.drm_display_mode*)* @dw_mipi_dsi_line_timer_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dw_mipi_dsi_line_timer_config(%struct.dw_mipi_dsi* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca %struct.dw_mipi_dsi*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.dw_mipi_dsi* %0, %struct.dw_mipi_dsi** %3, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %4, align 8
  %9 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %10 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %5, align 8
  %12 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %13 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %16 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = sub nsw i64 %14, %17
  store i64 %18, i64* %6, align 8
  %19 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %20 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %23 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = sub nsw i64 %21, %24
  store i64 %25, i64* %7, align 8
  %26 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %3, align 8
  %27 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %28 = load i64, i64* %5, align 8
  %29 = call i64 @dw_mipi_dsi_get_hcomponent_lbcc(%struct.dw_mipi_dsi* %26, %struct.drm_display_mode* %27, i64 %28)
  store i64 %29, i64* %8, align 8
  %30 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %3, align 8
  %31 = load i32, i32* @DSI_VID_HLINE_TIME, align 4
  %32 = load i64, i64* %8, align 8
  %33 = call i32 @dsi_write(%struct.dw_mipi_dsi* %30, i32 %31, i64 %32)
  %34 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %3, align 8
  %35 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %36 = load i64, i64* %6, align 8
  %37 = call i64 @dw_mipi_dsi_get_hcomponent_lbcc(%struct.dw_mipi_dsi* %34, %struct.drm_display_mode* %35, i64 %36)
  store i64 %37, i64* %8, align 8
  %38 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %3, align 8
  %39 = load i32, i32* @DSI_VID_HSA_TIME, align 4
  %40 = load i64, i64* %8, align 8
  %41 = call i32 @dsi_write(%struct.dw_mipi_dsi* %38, i32 %39, i64 %40)
  %42 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %3, align 8
  %43 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %44 = load i64, i64* %7, align 8
  %45 = call i64 @dw_mipi_dsi_get_hcomponent_lbcc(%struct.dw_mipi_dsi* %42, %struct.drm_display_mode* %43, i64 %44)
  store i64 %45, i64* %8, align 8
  %46 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %3, align 8
  %47 = load i32, i32* @DSI_VID_HBP_TIME, align 4
  %48 = load i64, i64* %8, align 8
  %49 = call i32 @dsi_write(%struct.dw_mipi_dsi* %46, i32 %47, i64 %48)
  ret void
}

declare dso_local i64 @dw_mipi_dsi_get_hcomponent_lbcc(%struct.dw_mipi_dsi*, %struct.drm_display_mode*, i64) #1

declare dso_local i32 @dsi_write(%struct.dw_mipi_dsi*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
