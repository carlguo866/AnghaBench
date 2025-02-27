; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_intel_ddi_get_buf_trans_fdi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_intel_ddi_get_buf_trans_fdi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddi_buf_trans = type { i32 }
%struct.drm_i915_private = type { i32 }

@bdw_ddi_translations_fdi = common dso_local global %struct.ddi_buf_trans* null, align 8
@hsw_ddi_translations_fdi = common dso_local global %struct.ddi_buf_trans* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ddi_buf_trans* (%struct.drm_i915_private*, i32*)* @intel_ddi_get_buf_trans_fdi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ddi_buf_trans* @intel_ddi_get_buf_trans_fdi(%struct.drm_i915_private* %0, i32* %1) #0 {
  %3 = alloca %struct.ddi_buf_trans*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %7 = call i64 @IS_BROADWELL(%struct.drm_i915_private* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load %struct.ddi_buf_trans*, %struct.ddi_buf_trans** @bdw_ddi_translations_fdi, align 8
  %11 = call i32 @ARRAY_SIZE(%struct.ddi_buf_trans* %10)
  %12 = load i32*, i32** %5, align 8
  store i32 %11, i32* %12, align 4
  %13 = load %struct.ddi_buf_trans*, %struct.ddi_buf_trans** @bdw_ddi_translations_fdi, align 8
  store %struct.ddi_buf_trans* %13, %struct.ddi_buf_trans** %3, align 8
  br label %26

14:                                               ; preds = %2
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %16 = call i64 @IS_HASWELL(%struct.drm_i915_private* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load %struct.ddi_buf_trans*, %struct.ddi_buf_trans** @hsw_ddi_translations_fdi, align 8
  %20 = call i32 @ARRAY_SIZE(%struct.ddi_buf_trans* %19)
  %21 = load i32*, i32** %5, align 8
  store i32 %20, i32* %21, align 4
  %22 = load %struct.ddi_buf_trans*, %struct.ddi_buf_trans** @hsw_ddi_translations_fdi, align 8
  store %struct.ddi_buf_trans* %22, %struct.ddi_buf_trans** %3, align 8
  br label %26

23:                                               ; preds = %14
  br label %24

24:                                               ; preds = %23
  %25 = load i32*, i32** %5, align 8
  store i32 0, i32* %25, align 4
  store %struct.ddi_buf_trans* null, %struct.ddi_buf_trans** %3, align 8
  br label %26

26:                                               ; preds = %24, %18, %9
  %27 = load %struct.ddi_buf_trans*, %struct.ddi_buf_trans** %3, align 8
  ret %struct.ddi_buf_trans* %27
}

declare dso_local i64 @IS_BROADWELL(%struct.drm_i915_private*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.ddi_buf_trans*) #1

declare dso_local i64 @IS_HASWELL(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
