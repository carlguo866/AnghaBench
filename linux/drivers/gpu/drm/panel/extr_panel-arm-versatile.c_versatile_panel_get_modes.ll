; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-arm-versatile.c_versatile_panel_get_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-arm-versatile.c_versatile_panel_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_panel = type { i32, %struct.drm_connector* }
%struct.drm_connector = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.versatile_panel = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.drm_display_mode = type { i32, i32, i32 }

@DRM_MODE_TYPE_DRIVER = common dso_local global i32 0, align 4
@DRM_MODE_TYPE_PREFERRED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_panel*)* @versatile_panel_get_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @versatile_panel_get_modes(%struct.drm_panel* %0) #0 {
  %2 = alloca %struct.drm_panel*, align 8
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.versatile_panel*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  store %struct.drm_panel* %0, %struct.drm_panel** %2, align 8
  %6 = load %struct.drm_panel*, %struct.drm_panel** %2, align 8
  %7 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %6, i32 0, i32 1
  %8 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  store %struct.drm_connector* %8, %struct.drm_connector** %3, align 8
  %9 = load %struct.drm_panel*, %struct.drm_panel** %2, align 8
  %10 = call %struct.versatile_panel* @to_versatile_panel(%struct.drm_panel* %9)
  store %struct.versatile_panel* %10, %struct.versatile_panel** %4, align 8
  %11 = load %struct.versatile_panel*, %struct.versatile_panel** %4, align 8
  %12 = getelementptr inbounds %struct.versatile_panel, %struct.versatile_panel* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %17 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 2
  store i32 %15, i32* %18, align 4
  %19 = load %struct.versatile_panel*, %struct.versatile_panel** %4, align 8
  %20 = getelementptr inbounds %struct.versatile_panel, %struct.versatile_panel* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %25 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  store i32 %23, i32* %26, align 4
  %27 = load %struct.versatile_panel*, %struct.versatile_panel** %4, align 8
  %28 = getelementptr inbounds %struct.versatile_panel, %struct.versatile_panel* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %33 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 4
  %35 = load %struct.drm_panel*, %struct.drm_panel** %2, align 8
  %36 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.versatile_panel*, %struct.versatile_panel** %4, align 8
  %39 = getelementptr inbounds %struct.versatile_panel, %struct.versatile_panel* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  %42 = call %struct.drm_display_mode* @drm_mode_duplicate(i32 %37, i32* %41)
  store %struct.drm_display_mode* %42, %struct.drm_display_mode** %5, align 8
  %43 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %44 = call i32 @drm_mode_set_name(%struct.drm_display_mode* %43)
  %45 = load i32, i32* @DRM_MODE_TYPE_DRIVER, align 4
  %46 = load i32, i32* @DRM_MODE_TYPE_PREFERRED, align 4
  %47 = or i32 %45, %46
  %48 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %49 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.versatile_panel*, %struct.versatile_panel** %4, align 8
  %51 = getelementptr inbounds %struct.versatile_panel, %struct.versatile_panel* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %56 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  %57 = load %struct.versatile_panel*, %struct.versatile_panel** %4, align 8
  %58 = getelementptr inbounds %struct.versatile_panel, %struct.versatile_panel* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %63 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %65 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %66 = call i32 @drm_mode_probed_add(%struct.drm_connector* %64, %struct.drm_display_mode* %65)
  ret i32 1
}

declare dso_local %struct.versatile_panel* @to_versatile_panel(%struct.drm_panel*) #1

declare dso_local %struct.drm_display_mode* @drm_mode_duplicate(i32, i32*) #1

declare dso_local i32 @drm_mode_set_name(%struct.drm_display_mode*) #1

declare dso_local i32 @drm_mode_probed_add(%struct.drm_connector*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
