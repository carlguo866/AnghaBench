; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_bxt_get_buf_trans_edp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_bxt_get_buf_trans_edp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxt_ddi_buf_trans = type { i32 }
%struct.drm_i915_private = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@bxt_ddi_translations_edp = common dso_local global %struct.bxt_ddi_buf_trans* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bxt_ddi_buf_trans* (%struct.drm_i915_private*, i32*)* @bxt_get_buf_trans_edp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bxt_ddi_buf_trans* @bxt_get_buf_trans_edp(%struct.drm_i915_private* %0, i32* %1) #0 {
  %3 = alloca %struct.bxt_ddi_buf_trans*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %7 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.bxt_ddi_buf_trans*, %struct.bxt_ddi_buf_trans** @bxt_ddi_translations_edp, align 8
  %14 = call i32 @ARRAY_SIZE(%struct.bxt_ddi_buf_trans* %13)
  %15 = load i32*, i32** %5, align 8
  store i32 %14, i32* %15, align 4
  %16 = load %struct.bxt_ddi_buf_trans*, %struct.bxt_ddi_buf_trans** @bxt_ddi_translations_edp, align 8
  store %struct.bxt_ddi_buf_trans* %16, %struct.bxt_ddi_buf_trans** %3, align 8
  br label %21

17:                                               ; preds = %2
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = call %struct.bxt_ddi_buf_trans* @bxt_get_buf_trans_dp(%struct.drm_i915_private* %18, i32* %19)
  store %struct.bxt_ddi_buf_trans* %20, %struct.bxt_ddi_buf_trans** %3, align 8
  br label %21

21:                                               ; preds = %17, %12
  %22 = load %struct.bxt_ddi_buf_trans*, %struct.bxt_ddi_buf_trans** %3, align 8
  ret %struct.bxt_ddi_buf_trans* %22
}

declare dso_local i32 @ARRAY_SIZE(%struct.bxt_ddi_buf_trans*) #1

declare dso_local %struct.bxt_ddi_buf_trans* @bxt_get_buf_trans_dp(%struct.drm_i915_private*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
