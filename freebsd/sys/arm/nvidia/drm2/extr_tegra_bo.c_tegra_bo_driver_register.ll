; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_tegra_bo.c_tegra_bo_driver_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_tegra_bo.c_tegra_bo_driver_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_driver = type { i32, i32, i32, i32*, i32 }

@tegra_bo_free_object = common dso_local global i32 0, align 4
@tegra_gem_pager_ops = common dso_local global i32 0, align 4
@tegra_bo_dumb_create = common dso_local global i32 0, align 4
@tegra_bo_dumb_map_offset = common dso_local global i32 0, align 4
@tegra_bo_dumb_destroy = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tegra_bo_driver_register(%struct.drm_driver* %0) #0 {
  %2 = alloca %struct.drm_driver*, align 8
  store %struct.drm_driver* %0, %struct.drm_driver** %2, align 8
  %3 = load i32, i32* @tegra_bo_free_object, align 4
  %4 = load %struct.drm_driver*, %struct.drm_driver** %2, align 8
  %5 = getelementptr inbounds %struct.drm_driver, %struct.drm_driver* %4, i32 0, i32 4
  store i32 %3, i32* %5, align 8
  %6 = load %struct.drm_driver*, %struct.drm_driver** %2, align 8
  %7 = getelementptr inbounds %struct.drm_driver, %struct.drm_driver* %6, i32 0, i32 3
  store i32* @tegra_gem_pager_ops, i32** %7, align 8
  %8 = load i32, i32* @tegra_bo_dumb_create, align 4
  %9 = load %struct.drm_driver*, %struct.drm_driver** %2, align 8
  %10 = getelementptr inbounds %struct.drm_driver, %struct.drm_driver* %9, i32 0, i32 2
  store i32 %8, i32* %10, align 8
  %11 = load i32, i32* @tegra_bo_dumb_map_offset, align 4
  %12 = load %struct.drm_driver*, %struct.drm_driver** %2, align 8
  %13 = getelementptr inbounds %struct.drm_driver, %struct.drm_driver* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @tegra_bo_dumb_destroy, align 4
  %15 = load %struct.drm_driver*, %struct.drm_driver** %2, align 8
  %16 = getelementptr inbounds %struct.drm_driver, %struct.drm_driver* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
