; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_fifo_underrun.c_ironlake_set_fifo_underrun_reporting.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_fifo_underrun.c_ironlake_set_fifo_underrun_reporting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_i915_private = type { i32 }

@PIPE_A = common dso_local global i32 0, align 4
@DE_PIPEA_FIFO_UNDERRUN = common dso_local global i32 0, align 4
@DE_PIPEB_FIFO_UNDERRUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, i32, i32)* @ironlake_set_fifo_underrun_reporting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ironlake_set_fifo_underrun_reporting(%struct.drm_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_i915_private*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %10 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %9)
  store %struct.drm_i915_private* %10, %struct.drm_i915_private** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @PIPE_A, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @DE_PIPEA_FIFO_UNDERRUN, align 4
  br label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @DE_PIPEB_FIFO_UNDERRUN, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @ilk_enable_display_irq(%struct.drm_i915_private* %23, i32 %24)
  br label %30

26:                                               ; preds = %18
  %27 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @ilk_disable_display_irq(%struct.drm_i915_private* %27, i32 %28)
  br label %30

30:                                               ; preds = %26, %22
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local i32 @ilk_enable_display_irq(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @ilk_disable_display_irq(%struct.drm_i915_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
