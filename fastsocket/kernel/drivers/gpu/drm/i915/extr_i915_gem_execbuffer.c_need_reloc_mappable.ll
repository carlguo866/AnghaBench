; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem_execbuffer.c_need_reloc_mappable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem_execbuffer.c_need_reloc_mappable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_gem_object = type { %struct.drm_i915_gem_exec_object2* }
%struct.drm_i915_gem_exec_object2 = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_gem_object*)* @need_reloc_mappable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @need_reloc_mappable(%struct.drm_i915_gem_object* %0) #0 {
  %2 = alloca %struct.drm_i915_gem_object*, align 8
  %3 = alloca %struct.drm_i915_gem_exec_object2*, align 8
  store %struct.drm_i915_gem_object* %0, %struct.drm_i915_gem_object** %2, align 8
  %4 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %2, align 8
  %5 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %4, i32 0, i32 0
  %6 = load %struct.drm_i915_gem_exec_object2*, %struct.drm_i915_gem_exec_object2** %5, align 8
  store %struct.drm_i915_gem_exec_object2* %6, %struct.drm_i915_gem_exec_object2** %3, align 8
  %7 = load %struct.drm_i915_gem_exec_object2*, %struct.drm_i915_gem_exec_object2** %3, align 8
  %8 = getelementptr inbounds %struct.drm_i915_gem_exec_object2, %struct.drm_i915_gem_exec_object2* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %2, align 8
  %13 = call i32 @use_cpu_reloc(%struct.drm_i915_gem_object* %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  br label %16

16:                                               ; preds = %11, %1
  %17 = phi i1 [ false, %1 ], [ %15, %11 ]
  %18 = zext i1 %17 to i32
  ret i32 %18
}

declare dso_local i32 @use_cpu_reloc(%struct.drm_i915_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
