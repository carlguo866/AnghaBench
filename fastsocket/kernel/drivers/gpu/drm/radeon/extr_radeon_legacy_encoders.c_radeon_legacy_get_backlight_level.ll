; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_legacy_encoders.c_radeon_legacy_get_backlight_level.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_legacy_encoders.c_radeon_legacy_get_backlight_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_encoder = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }

@RADEON_LVDS_GEN_CNTL = common dso_local global i32 0, align 4
@RADEON_LVDS_BL_MOD_LEVEL_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_legacy_get_backlight_level(%struct.radeon_encoder* %0) #0 {
  %2 = alloca %struct.radeon_encoder*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca i32, align 4
  store %struct.radeon_encoder* %0, %struct.radeon_encoder** %2, align 8
  %6 = load %struct.radeon_encoder*, %struct.radeon_encoder** %2, align 8
  %7 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  store %struct.drm_device* %9, %struct.drm_device** %3, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 0
  %12 = load %struct.radeon_device*, %struct.radeon_device** %11, align 8
  store %struct.radeon_device* %12, %struct.radeon_device** %4, align 8
  %13 = load i32, i32* @RADEON_LVDS_GEN_CNTL, align 4
  %14 = call i32 @RREG32(i32 %13)
  %15 = load i32, i32* @RADEON_LVDS_BL_MOD_LEVEL_SHIFT, align 4
  %16 = ashr i32 %14, %15
  %17 = and i32 %16, 255
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  ret i32 %18
}

declare dso_local i32 @RREG32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
