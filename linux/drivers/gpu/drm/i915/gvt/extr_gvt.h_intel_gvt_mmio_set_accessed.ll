; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gvt.h_intel_gvt_mmio_set_accessed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gvt.h_intel_gvt_mmio_set_accessed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_gvt = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@F_ACCESSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_gvt*, i32)* @intel_gvt_mmio_set_accessed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_gvt_mmio_set_accessed(%struct.intel_gvt* %0, i32 %1) #0 {
  %3 = alloca %struct.intel_gvt*, align 8
  %4 = alloca i32, align 4
  store %struct.intel_gvt* %0, %struct.intel_gvt** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @F_ACCESSED, align 4
  %6 = load %struct.intel_gvt*, %struct.intel_gvt** %3, align 8
  %7 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = lshr i32 %10, 2
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %9, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %14, %5
  store i32 %15, i32* %13, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
