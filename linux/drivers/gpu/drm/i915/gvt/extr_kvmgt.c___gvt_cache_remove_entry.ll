; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_kvmgt.c___gvt_cache_remove_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_kvmgt.c___gvt_cache_remove_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.gvt_dma = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_vgpu*, %struct.gvt_dma*)* @__gvt_cache_remove_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__gvt_cache_remove_entry(%struct.intel_vgpu* %0, %struct.gvt_dma* %1) #0 {
  %3 = alloca %struct.intel_vgpu*, align 8
  %4 = alloca %struct.gvt_dma*, align 8
  store %struct.intel_vgpu* %0, %struct.intel_vgpu** %3, align 8
  store %struct.gvt_dma* %1, %struct.gvt_dma** %4, align 8
  %5 = load %struct.gvt_dma*, %struct.gvt_dma** %4, align 8
  %6 = getelementptr inbounds %struct.gvt_dma, %struct.gvt_dma* %5, i32 0, i32 1
  %7 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %8 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 2
  %10 = call i32 @rb_erase(i32* %6, i32* %9)
  %11 = load %struct.gvt_dma*, %struct.gvt_dma** %4, align 8
  %12 = getelementptr inbounds %struct.gvt_dma, %struct.gvt_dma* %11, i32 0, i32 0
  %13 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %14 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = call i32 @rb_erase(i32* %12, i32* %15)
  %17 = load %struct.gvt_dma*, %struct.gvt_dma** %4, align 8
  %18 = call i32 @kfree(%struct.gvt_dma* %17)
  %19 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %20 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %21, align 4
  ret void
}

declare dso_local i32 @rb_erase(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.gvt_dma*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
