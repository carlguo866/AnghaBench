; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_ringbuffer.c_remap_l3_slice.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_ringbuffer.c_remap_l3_slice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_request = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32** }

@GEN7_L3LOG_SIZE = common dso_local global i32 0, align 4
@MI_NOOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_request*, i32)* @remap_l3_slice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remap_l3_slice(%struct.i915_request* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i915_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.i915_request* %0, %struct.i915_request** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %10 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32**, i32*** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32*, i32** %14, i64 %16
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %7, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %70

22:                                               ; preds = %2
  %23 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %24 = load i32, i32* @GEN7_L3LOG_SIZE, align 4
  %25 = sdiv i32 %24, 4
  %26 = mul nsw i32 %25, 2
  %27 = add nsw i32 %26, 2
  %28 = call i32* @intel_ring_begin(%struct.i915_request* %23, i32 %27)
  store i32* %28, i32** %6, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = call i64 @IS_ERR(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %22
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @PTR_ERR(i32* %33)
  store i32 %34, i32* %3, align 4
  br label %70

35:                                               ; preds = %22
  %36 = load i32, i32* @GEN7_L3LOG_SIZE, align 4
  %37 = sdiv i32 %36, 4
  %38 = call i32 @MI_LOAD_REGISTER_IMM(i32 %37)
  %39 = load i32*, i32** %6, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %6, align 8
  store i32 %38, i32* %39, align 4
  store i32 0, i32* %8, align 4
  br label %41

41:                                               ; preds = %60, %35
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @GEN7_L3LOG_SIZE, align 4
  %44 = sdiv i32 %43, 4
  %45 = icmp slt i32 %42, %44
  br i1 %45, label %46, label %63

46:                                               ; preds = %41
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @GEN7_L3LOG(i32 %47, i32 %48)
  %50 = call i32 @i915_mmio_reg_offset(i32 %49)
  %51 = load i32*, i32** %6, align 8
  %52 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %52, i32** %6, align 8
  store i32 %50, i32* %51, align 4
  %53 = load i32*, i32** %7, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %6, align 8
  %59 = getelementptr inbounds i32, i32* %58, i32 1
  store i32* %59, i32** %6, align 8
  store i32 %57, i32* %58, align 4
  br label %60

60:                                               ; preds = %46
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %8, align 4
  br label %41

63:                                               ; preds = %41
  %64 = load i32, i32* @MI_NOOP, align 4
  %65 = load i32*, i32** %6, align 8
  %66 = getelementptr inbounds i32, i32* %65, i32 1
  store i32* %66, i32** %6, align 8
  store i32 %64, i32* %65, align 4
  %67 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %68 = load i32*, i32** %6, align 8
  %69 = call i32 @intel_ring_advance(%struct.i915_request* %67, i32* %68)
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %63, %32, %21
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32* @intel_ring_begin(%struct.i915_request*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @MI_LOAD_REGISTER_IMM(i32) #1

declare dso_local i32 @i915_mmio_reg_offset(i32) #1

declare dso_local i32 @GEN7_L3LOG(i32, i32) #1

declare dso_local i32 @intel_ring_advance(%struct.i915_request*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
