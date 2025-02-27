; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gem_shrinker.c_msm_gem_shrinker_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gem_shrinker.c_msm_gem_shrinker_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.msm_drm_private* }
%struct.msm_drm_private = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@msm_gem_shrinker_count = common dso_local global i32 0, align 4
@msm_gem_shrinker_scan = common dso_local global i32 0, align 4
@DEFAULT_SEEKS = common dso_local global i32 0, align 4
@msm_gem_shrinker_vmap = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @msm_gem_shrinker_init(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.msm_drm_private*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %4 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %5 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %4, i32 0, i32 0
  %6 = load %struct.msm_drm_private*, %struct.msm_drm_private** %5, align 8
  store %struct.msm_drm_private* %6, %struct.msm_drm_private** %3, align 8
  %7 = load i32, i32* @msm_gem_shrinker_count, align 4
  %8 = load %struct.msm_drm_private*, %struct.msm_drm_private** %3, align 8
  %9 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  store i32 %7, i32* %10, align 4
  %11 = load i32, i32* @msm_gem_shrinker_scan, align 4
  %12 = load %struct.msm_drm_private*, %struct.msm_drm_private** %3, align 8
  %13 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  store i32 %11, i32* %14, align 4
  %15 = load i32, i32* @DEFAULT_SEEKS, align 4
  %16 = load %struct.msm_drm_private*, %struct.msm_drm_private** %3, align 8
  %17 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i32 %15, i32* %18, align 4
  %19 = load %struct.msm_drm_private*, %struct.msm_drm_private** %3, align 8
  %20 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %19, i32 0, i32 1
  %21 = call i32 @register_shrinker(%struct.TYPE_4__* %20)
  %22 = call i32 @WARN_ON(i32 %21)
  %23 = load i32, i32* @msm_gem_shrinker_vmap, align 4
  %24 = load %struct.msm_drm_private*, %struct.msm_drm_private** %3, align 8
  %25 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 4
  %27 = load %struct.msm_drm_private*, %struct.msm_drm_private** %3, align 8
  %28 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %27, i32 0, i32 0
  %29 = call i32 @register_vmap_purge_notifier(%struct.TYPE_3__* %28)
  %30 = call i32 @WARN_ON(i32 %29)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @register_shrinker(%struct.TYPE_4__*) #1

declare dso_local i32 @register_vmap_purge_notifier(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
