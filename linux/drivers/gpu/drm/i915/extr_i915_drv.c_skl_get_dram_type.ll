; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_drv.c_skl_get_dram_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_drv.c_skl_get_dram_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@SKL_MAD_INTER_CHANNEL_0_0_0_MCHBAR_MCMAIN = common dso_local global i32 0, align 4
@SKL_DRAM_DDR_TYPE_MASK = common dso_local global i32 0, align 4
@INTEL_DRAM_DDR3 = common dso_local global i32 0, align 4
@INTEL_DRAM_DDR4 = common dso_local global i32 0, align 4
@INTEL_DRAM_LPDDR3 = common dso_local global i32 0, align 4
@INTEL_DRAM_LPDDR4 = common dso_local global i32 0, align 4
@INTEL_DRAM_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*)* @skl_get_dram_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_get_dram_type(%struct.drm_i915_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  %5 = load i32, i32* @SKL_MAD_INTER_CHANNEL_0_0_0_MCHBAR_MCMAIN, align 4
  %6 = call i32 @I915_READ(i32 %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @SKL_DRAM_DDR_TYPE_MASK, align 4
  %9 = and i32 %7, %8
  switch i32 %9, label %18 [
    i32 131, label %10
    i32 130, label %12
    i32 129, label %14
    i32 128, label %16
  ]

10:                                               ; preds = %1
  %11 = load i32, i32* @INTEL_DRAM_DDR3, align 4
  store i32 %11, i32* %2, align 4
  br label %22

12:                                               ; preds = %1
  %13 = load i32, i32* @INTEL_DRAM_DDR4, align 4
  store i32 %13, i32* %2, align 4
  br label %22

14:                                               ; preds = %1
  %15 = load i32, i32* @INTEL_DRAM_LPDDR3, align 4
  store i32 %15, i32* %2, align 4
  br label %22

16:                                               ; preds = %1
  %17 = load i32, i32* @INTEL_DRAM_LPDDR4, align 4
  store i32 %17, i32* %2, align 4
  br label %22

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @MISSING_CASE(i32 %19)
  %21 = load i32, i32* @INTEL_DRAM_UNKNOWN, align 4
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %18, %16, %14, %12, %10
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @MISSING_CASE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
