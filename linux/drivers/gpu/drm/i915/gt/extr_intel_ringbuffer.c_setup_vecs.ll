; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_ringbuffer.c_setup_vecs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_ringbuffer.c_setup_vecs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_cs = type { i32, i32, i32, i32, i32, %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }

@gen6_ring_flush = common dso_local global i32 0, align 4
@PM_VEBOX_USER_INTERRUPT = common dso_local global i32 0, align 4
@hsw_vebox_irq_enable = common dso_local global i32 0, align 4
@hsw_vebox_irq_disable = common dso_local global i32 0, align 4
@gen7_xcs_emit_breadcrumb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_engine_cs*)* @setup_vecs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_vecs(%struct.intel_engine_cs* %0) #0 {
  %2 = alloca %struct.intel_engine_cs*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %2, align 8
  %4 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %5 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %4, i32 0, i32 5
  %6 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  store %struct.drm_i915_private* %6, %struct.drm_i915_private** %3, align 8
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %8 = call i32 @INTEL_GEN(%struct.drm_i915_private* %7)
  %9 = icmp slt i32 %8, 7
  %10 = zext i1 %9 to i32
  %11 = call i32 @GEM_BUG_ON(i32 %10)
  %12 = load i32, i32* @gen6_ring_flush, align 4
  %13 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %14 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %13, i32 0, i32 4
  store i32 %12, i32* %14, align 8
  %15 = load i32, i32* @PM_VEBOX_USER_INTERRUPT, align 4
  %16 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %17 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @hsw_vebox_irq_enable, align 4
  %19 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %20 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* @hsw_vebox_irq_disable, align 4
  %22 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %23 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @gen7_xcs_emit_breadcrumb, align 4
  %25 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %26 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  ret void
}

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
