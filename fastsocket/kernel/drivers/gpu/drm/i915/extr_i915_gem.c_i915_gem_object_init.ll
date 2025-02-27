; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_object_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_object_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_gem_object = type { i32, %struct.TYPE_4__, i32, i32, %struct.drm_i915_gem_object_ops*, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.drm_i915_gem_object_ops = type { i32 }

@I915_FENCE_REG_NONE = common dso_local global i32 0, align 4
@I915_MADV_WILLNEED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i915_gem_object_init(%struct.drm_i915_gem_object* %0, %struct.drm_i915_gem_object_ops* %1) #0 {
  %3 = alloca %struct.drm_i915_gem_object*, align 8
  %4 = alloca %struct.drm_i915_gem_object_ops*, align 8
  store %struct.drm_i915_gem_object* %0, %struct.drm_i915_gem_object** %3, align 8
  store %struct.drm_i915_gem_object_ops* %1, %struct.drm_i915_gem_object_ops** %4, align 8
  %5 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %6 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %5, i32 0, i32 8
  %7 = call i32 @INIT_LIST_HEAD(i32* %6)
  %8 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %9 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %8, i32 0, i32 7
  %10 = call i32 @INIT_LIST_HEAD(i32* %9)
  %11 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %12 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %11, i32 0, i32 6
  %13 = call i32 @INIT_LIST_HEAD(i32* %12)
  %14 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %15 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %14, i32 0, i32 5
  %16 = call i32 @INIT_LIST_HEAD(i32* %15)
  %17 = load %struct.drm_i915_gem_object_ops*, %struct.drm_i915_gem_object_ops** %4, align 8
  %18 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %19 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %18, i32 0, i32 4
  store %struct.drm_i915_gem_object_ops* %17, %struct.drm_i915_gem_object_ops** %19, align 8
  %20 = load i32, i32* @I915_FENCE_REG_NONE, align 4
  %21 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %22 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @I915_MADV_WILLNEED, align 4
  %24 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %25 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  %26 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %27 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %29 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %35 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @i915_gem_info_add_obj(i32 %33, i32 %37)
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @i915_gem_info_add_obj(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
