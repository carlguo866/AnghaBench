; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_cdclk.c_bxt_sanitize_cdclk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_cdclk.c_bxt_sanitize_cdclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"Current CDCLK\00", align 1
@CDCLK_CTL = common dso_local global i32 0, align 4
@BXT_CDCLK_CD2X_PIPE_NONE = common dso_local global i32 0, align 4
@BXT_CDCLK_CD2X_DIV_SEL_MASK = common dso_local global i32 0, align 4
@BXT_CDCLK_SSA_PRECHARGE_ENABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Sanitizing cdclk programmed by pre-os\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @bxt_sanitize_cdclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxt_sanitize_cdclk(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %5 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %6 = call i32 @intel_update_cdclk(%struct.drm_i915_private* %5)
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %8 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = call i32 @intel_dump_cdclk_state(%struct.TYPE_4__* %9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %12 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %1
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %19 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %24 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %22, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %17, %1
  br label %63

30:                                               ; preds = %17
  %31 = load i32, i32* @CDCLK_CTL, align 4
  %32 = call i32 @I915_READ(i32 %31)
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* @BXT_CDCLK_CD2X_PIPE_NONE, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %3, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @BXT_CDCLK_CD2X_DIV_SEL_MASK, align 4
  %39 = and i32 %37, %38
  %40 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %41 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @skl_cdclk_decimal(i32 %44)
  %46 = or i32 %39, %45
  store i32 %46, i32* %4, align 4
  %47 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %48 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp sge i32 %51, 500000
  br i1 %52, label %53, label %57

53:                                               ; preds = %30
  %54 = load i32, i32* @BXT_CDCLK_SSA_PRECHARGE_ENABLE, align 4
  %55 = load i32, i32* %4, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %53, %30
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* %4, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  br label %73

62:                                               ; preds = %57
  br label %63

63:                                               ; preds = %62, %29
  %64 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %65 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %66 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  store i32 0, i32* %68, align 4
  %69 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %70 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  store i32 -1, i32* %72, align 4
  br label %73

73:                                               ; preds = %63, %61
  ret void
}

declare dso_local i32 @intel_update_cdclk(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_dump_cdclk_state(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @skl_cdclk_decimal(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
