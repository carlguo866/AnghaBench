; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hotplug.c_intel_hpd_init_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hotplug.c_intel_hpd_init_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@i915_hotplug_work_func = common dso_local global i32 0, align 4
@i915_digport_work_func = common dso_local global i32 0, align 4
@i915_hpd_poll_init_work = common dso_local global i32 0, align 4
@intel_hpd_irq_storm_reenable_work = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_hpd_init_work(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %3 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %4 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 3
  %6 = load i32, i32* @i915_hotplug_work_func, align 4
  %7 = call i32 @INIT_DELAYED_WORK(i32* %5, i32 %6)
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %9 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 2
  %11 = load i32, i32* @i915_digport_work_func, align 4
  %12 = call i32 @INIT_WORK(i32* %10, i32 %11)
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %14 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* @i915_hpd_poll_init_work, align 4
  %17 = call i32 @INIT_WORK(i32* %15, i32 %16)
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %19 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* @intel_hpd_irq_storm_reenable_work, align 4
  %22 = call i32 @INIT_DELAYED_WORK(i32* %20, i32 %21)
  ret void
}

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
