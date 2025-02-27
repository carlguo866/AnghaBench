; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mdfld_dsi_dpi.c_mdfld_mipi_set_video_timing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mdfld_dsi_dpi.c_mdfld_mipi_set_video_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdfld_dsi_config = type { i32, i32, %struct.drm_display_mode*, %struct.drm_device* }
%struct.drm_display_mode = type { i32, i32 }
%struct.drm_device = type { i32 }
%struct.mdfld_dsi_dpi_timing = type { i32, i32, i32, i32, i32, i32, i32 }

@DSI_DPI_TIMING_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mdfld_dsi_config*, i32)* @mdfld_mipi_set_video_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mdfld_mipi_set_video_timing(%struct.mdfld_dsi_config* %0, i32 %1) #0 {
  %3 = alloca %struct.mdfld_dsi_config*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.mdfld_dsi_dpi_timing, align 4
  %7 = alloca %struct.drm_display_mode*, align 8
  store %struct.mdfld_dsi_config* %0, %struct.mdfld_dsi_config** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.mdfld_dsi_config*, %struct.mdfld_dsi_config** %3, align 8
  %9 = getelementptr inbounds %struct.mdfld_dsi_config, %struct.mdfld_dsi_config* %8, i32 0, i32 3
  %10 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  store %struct.drm_device* %10, %struct.drm_device** %5, align 8
  %11 = load %struct.mdfld_dsi_config*, %struct.mdfld_dsi_config** %3, align 8
  %12 = getelementptr inbounds %struct.mdfld_dsi_config, %struct.mdfld_dsi_config* %11, i32 0, i32 2
  %13 = load %struct.drm_display_mode*, %struct.drm_display_mode** %12, align 8
  store %struct.drm_display_mode* %13, %struct.drm_display_mode** %7, align 8
  %14 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %15 = load %struct.mdfld_dsi_config*, %struct.mdfld_dsi_config** %3, align 8
  %16 = getelementptr inbounds %struct.mdfld_dsi_config, %struct.mdfld_dsi_config* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.mdfld_dsi_config*, %struct.mdfld_dsi_config** %3, align 8
  %19 = getelementptr inbounds %struct.mdfld_dsi_config, %struct.mdfld_dsi_config* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @mdfld_dsi_dpi_timing_calculation(%struct.drm_display_mode* %14, %struct.mdfld_dsi_dpi_timing* %6, i32 %17, i32 %20)
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @MIPI_DPI_RESOLUTION_REG(i32 %22)
  %24 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %25 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = shl i32 %26, 16
  %28 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %29 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %27, %30
  %32 = call i32 @REG_WRITE(i32 %23, i32 %31)
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @MIPI_HSYNC_COUNT_REG(i32 %33)
  %35 = getelementptr inbounds %struct.mdfld_dsi_dpi_timing, %struct.mdfld_dsi_dpi_timing* %6, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @DSI_DPI_TIMING_MASK, align 4
  %38 = and i32 %36, %37
  %39 = call i32 @REG_WRITE(i32 %34, i32 %38)
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @MIPI_HBP_COUNT_REG(i32 %40)
  %42 = getelementptr inbounds %struct.mdfld_dsi_dpi_timing, %struct.mdfld_dsi_dpi_timing* %6, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @DSI_DPI_TIMING_MASK, align 4
  %45 = and i32 %43, %44
  %46 = call i32 @REG_WRITE(i32 %41, i32 %45)
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @MIPI_HFP_COUNT_REG(i32 %47)
  %49 = getelementptr inbounds %struct.mdfld_dsi_dpi_timing, %struct.mdfld_dsi_dpi_timing* %6, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @DSI_DPI_TIMING_MASK, align 4
  %52 = and i32 %50, %51
  %53 = call i32 @REG_WRITE(i32 %48, i32 %52)
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @MIPI_HACTIVE_COUNT_REG(i32 %54)
  %56 = getelementptr inbounds %struct.mdfld_dsi_dpi_timing, %struct.mdfld_dsi_dpi_timing* %6, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @DSI_DPI_TIMING_MASK, align 4
  %59 = and i32 %57, %58
  %60 = call i32 @REG_WRITE(i32 %55, i32 %59)
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @MIPI_VSYNC_COUNT_REG(i32 %61)
  %63 = getelementptr inbounds %struct.mdfld_dsi_dpi_timing, %struct.mdfld_dsi_dpi_timing* %6, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @DSI_DPI_TIMING_MASK, align 4
  %66 = and i32 %64, %65
  %67 = call i32 @REG_WRITE(i32 %62, i32 %66)
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @MIPI_VBP_COUNT_REG(i32 %68)
  %70 = getelementptr inbounds %struct.mdfld_dsi_dpi_timing, %struct.mdfld_dsi_dpi_timing* %6, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @DSI_DPI_TIMING_MASK, align 4
  %73 = and i32 %71, %72
  %74 = call i32 @REG_WRITE(i32 %69, i32 %73)
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @MIPI_VFP_COUNT_REG(i32 %75)
  %77 = getelementptr inbounds %struct.mdfld_dsi_dpi_timing, %struct.mdfld_dsi_dpi_timing* %6, i32 0, i32 6
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @DSI_DPI_TIMING_MASK, align 4
  %80 = and i32 %78, %79
  %81 = call i32 @REG_WRITE(i32 %76, i32 %80)
  ret void
}

declare dso_local i32 @mdfld_dsi_dpi_timing_calculation(%struct.drm_display_mode*, %struct.mdfld_dsi_dpi_timing*, i32, i32) #1

declare dso_local i32 @REG_WRITE(i32, i32) #1

declare dso_local i32 @MIPI_DPI_RESOLUTION_REG(i32) #1

declare dso_local i32 @MIPI_HSYNC_COUNT_REG(i32) #1

declare dso_local i32 @MIPI_HBP_COUNT_REG(i32) #1

declare dso_local i32 @MIPI_HFP_COUNT_REG(i32) #1

declare dso_local i32 @MIPI_HACTIVE_COUNT_REG(i32) #1

declare dso_local i32 @MIPI_VSYNC_COUNT_REG(i32) #1

declare dso_local i32 @MIPI_VBP_COUNT_REG(i32) #1

declare dso_local i32 @MIPI_VFP_COUNT_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
