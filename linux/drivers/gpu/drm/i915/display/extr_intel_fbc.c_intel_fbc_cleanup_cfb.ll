; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_fbc.c_intel_fbc_cleanup_cfb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_fbc.c_intel_fbc_cleanup_cfb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.intel_fbc }
%struct.intel_fbc = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_fbc_cleanup_cfb(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca %struct.intel_fbc*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %4 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %5 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %4, i32 0, i32 0
  store %struct.intel_fbc* %5, %struct.intel_fbc** %3, align 8
  %6 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %7 = call i32 @fbc_supported(%struct.drm_i915_private* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %19

10:                                               ; preds = %1
  %11 = load %struct.intel_fbc*, %struct.intel_fbc** %3, align 8
  %12 = getelementptr inbounds %struct.intel_fbc, %struct.intel_fbc* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %15 = call i32 @__intel_fbc_cleanup_cfb(%struct.drm_i915_private* %14)
  %16 = load %struct.intel_fbc*, %struct.intel_fbc** %3, align 8
  %17 = getelementptr inbounds %struct.intel_fbc, %struct.intel_fbc* %16, i32 0, i32 0
  %18 = call i32 @mutex_unlock(i32* %17)
  br label %19

19:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @fbc_supported(%struct.drm_i915_private*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__intel_fbc_cleanup_cfb(%struct.drm_i915_private*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
