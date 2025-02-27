; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_shrinker.c_can_release_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_shrinker.c_can_release_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_gem_object = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i64, i32 }

@I915_MADV_DONTNEED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_gem_object*)* @can_release_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @can_release_pages(%struct.drm_i915_gem_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_i915_gem_object*, align 8
  store %struct.drm_i915_gem_object* %0, %struct.drm_i915_gem_object** %3, align 8
  %4 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %5 = call i32 @i915_gem_object_is_shrinkable(%struct.drm_i915_gem_object* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %38

8:                                                ; preds = %1
  %9 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %10 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = call i64 @atomic_read(i32* %11)
  %13 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %14 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %13, i32 0, i32 2
  %15 = call i64 @atomic_read(i32* %14)
  %16 = icmp sgt i64 %12, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %38

18:                                               ; preds = %8
  %19 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %20 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @READ_ONCE(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %38

25:                                               ; preds = %18
  %26 = call i64 (...) @swap_available()
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %25
  %29 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %30 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @I915_MADV_DONTNEED, align 8
  %34 = icmp eq i64 %32, %33
  br label %35

35:                                               ; preds = %28, %25
  %36 = phi i1 [ true, %25 ], [ %34, %28 ]
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %35, %24, %17, %7
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @i915_gem_object_is_shrinkable(%struct.drm_i915_gem_object*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i64 @swap_available(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
