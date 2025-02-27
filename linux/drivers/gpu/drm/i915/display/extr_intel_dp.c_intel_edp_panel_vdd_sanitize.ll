; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_edp_panel_vdd_sanitize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_edp_panel_vdd_sanitize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { i32 }
%struct.drm_i915_private = type { i32 }
%struct.intel_digital_port = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"VDD left on by BIOS, adjusting state tracking\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_dp*)* @intel_edp_panel_vdd_sanitize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_edp_panel_vdd_sanitize(%struct.intel_dp* %0) #0 {
  %2 = alloca %struct.intel_dp*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.intel_digital_port*, align 8
  store %struct.intel_dp* %0, %struct.intel_dp** %2, align 8
  %5 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %6 = call %struct.drm_i915_private* @dp_to_i915(%struct.intel_dp* %5)
  store %struct.drm_i915_private* %6, %struct.drm_i915_private** %3, align 8
  %7 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %8 = call %struct.intel_digital_port* @dp_to_dig_port(%struct.intel_dp* %7)
  store %struct.intel_digital_port* %8, %struct.intel_digital_port** %4, align 8
  %9 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %10 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %9, i32 0, i32 0
  %11 = call i32 @lockdep_assert_held(i32* %10)
  %12 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %13 = call i32 @edp_have_panel_vdd(%struct.intel_dp* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %24

16:                                               ; preds = %1
  %17 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %19 = load %struct.intel_digital_port*, %struct.intel_digital_port** %4, align 8
  %20 = call i32 @intel_aux_power_domain(%struct.intel_digital_port* %19)
  %21 = call i32 @intel_display_power_get(%struct.drm_i915_private* %18, i32 %20)
  %22 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %23 = call i32 @edp_panel_vdd_schedule_off(%struct.intel_dp* %22)
  br label %24

24:                                               ; preds = %16, %15
  ret void
}

declare dso_local %struct.drm_i915_private* @dp_to_i915(%struct.intel_dp*) #1

declare dso_local %struct.intel_digital_port* @dp_to_dig_port(%struct.intel_dp*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @edp_have_panel_vdd(%struct.intel_dp*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @intel_display_power_get(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @intel_aux_power_domain(%struct.intel_digital_port*) #1

declare dso_local i32 @edp_panel_vdd_schedule_off(%struct.intel_dp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
