; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.h_i915_pd_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.h_i915_pd_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_page_directory = type { %struct.i915_page_directory** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.i915_page_directory* (%struct.i915_page_directory*, i16)* @i915_pd_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.i915_page_directory* @i915_pd_entry(%struct.i915_page_directory* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.i915_page_directory*, align 8
  %4 = alloca i16, align 2
  store %struct.i915_page_directory* %0, %struct.i915_page_directory** %3, align 8
  store i16 %1, i16* %4, align 2
  %5 = load %struct.i915_page_directory*, %struct.i915_page_directory** %3, align 8
  %6 = getelementptr inbounds %struct.i915_page_directory, %struct.i915_page_directory* %5, i32 0, i32 0
  %7 = load %struct.i915_page_directory**, %struct.i915_page_directory*** %6, align 8
  %8 = load i16, i16* %4, align 2
  %9 = zext i16 %8 to i64
  %10 = getelementptr inbounds %struct.i915_page_directory*, %struct.i915_page_directory** %7, i64 %9
  %11 = load %struct.i915_page_directory*, %struct.i915_page_directory** %10, align 8
  ret %struct.i915_page_directory* %11
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
