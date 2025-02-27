; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_pages.c_i915_gem_object_get_dma_address_len.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_pages.c_i915_gem_object_get_dma_address_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_gem_object = type { i32 }
%struct.scatterlist = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @i915_gem_object_get_dma_address_len(%struct.drm_i915_gem_object* %0, i64 %1, i32* %2) #0 {
  %4 = alloca %struct.drm_i915_gem_object*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_i915_gem_object* %0, %struct.drm_i915_gem_object** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %10 = load i64, i64* %5, align 8
  %11 = call %struct.scatterlist* @i915_gem_object_get_sg(%struct.drm_i915_gem_object* %9, i64 %10, i32* %8)
  store %struct.scatterlist* %11, %struct.scatterlist** %7, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %3
  %15 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %16 = call i32 @sg_dma_len(%struct.scatterlist* %15)
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @PAGE_SHIFT, align 4
  %19 = shl i32 %17, %18
  %20 = sub i32 %16, %19
  %21 = load i32*, i32** %6, align 8
  store i32 %20, i32* %21, align 4
  br label %22

22:                                               ; preds = %14, %3
  %23 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %24 = call i64 @sg_dma_address(%struct.scatterlist* %23)
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @PAGE_SHIFT, align 4
  %27 = shl i32 %25, %26
  %28 = zext i32 %27 to i64
  %29 = add nsw i64 %24, %28
  ret i64 %29
}

declare dso_local %struct.scatterlist* @i915_gem_object_get_sg(%struct.drm_i915_gem_object*, i64, i32*) #1

declare dso_local i32 @sg_dma_len(%struct.scatterlist*) #1

declare dso_local i64 @sg_dma_address(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
