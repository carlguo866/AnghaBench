; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_selftest_workarounds.c_find_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_selftest_workarounds.c_find_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.regmask = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*, i32, %struct.regmask*, i64)* @find_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_reg(%struct.drm_i915_private* %0, i32 %1, %struct.regmask* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.regmask*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.regmask* %2, %struct.regmask** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call i64 @i915_mmio_reg_offset(i32 %11)
  store i64 %12, i64* %10, align 8
  br label %13

13:                                               ; preds = %35, %4
  %14 = load i64, i64* %9, align 8
  %15 = add i64 %14, -1
  store i64 %15, i64* %9, align 8
  %16 = icmp ne i64 %14, 0
  br i1 %16, label %17, label %38

17:                                               ; preds = %13
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %19 = call %struct.TYPE_2__* @INTEL_INFO(%struct.drm_i915_private* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.regmask*, %struct.regmask** %8, align 8
  %23 = getelementptr inbounds %struct.regmask, %struct.regmask* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %21, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %17
  %28 = load %struct.regmask*, %struct.regmask** %8, align 8
  %29 = getelementptr inbounds %struct.regmask, %struct.regmask* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @i915_mmio_reg_offset(i32 %30)
  %32 = load i64, i64* %10, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store i32 1, i32* %5, align 4
  br label %39

35:                                               ; preds = %27, %17
  %36 = load %struct.regmask*, %struct.regmask** %8, align 8
  %37 = getelementptr inbounds %struct.regmask, %struct.regmask* %36, i32 1
  store %struct.regmask* %37, %struct.regmask** %8, align 8
  br label %13

38:                                               ; preds = %13
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %38, %34
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i64 @i915_mmio_reg_offset(i32) #1

declare dso_local %struct.TYPE_2__* @INTEL_INFO(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
