; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_connector_break_all_links.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_connector_break_all_links.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_connector = type { %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i32*, i32 }

@DRM_MODE_DPMS_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_connector*)* @intel_connector_break_all_links to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_connector_break_all_links(%struct.intel_connector* %0) #0 {
  %2 = alloca %struct.intel_connector*, align 8
  store %struct.intel_connector* %0, %struct.intel_connector** %2, align 8
  %3 = load i32, i32* @DRM_MODE_DPMS_OFF, align 4
  %4 = load %struct.intel_connector*, %struct.intel_connector** %2, align 8
  %5 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  store i32 %3, i32* %6, align 8
  %7 = load %struct.intel_connector*, %struct.intel_connector** %2, align 8
  %8 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store i32* null, i32** %9, align 8
  %10 = load %struct.intel_connector*, %struct.intel_connector** %2, align 8
  %11 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  store i32 0, i32* %13, align 8
  %14 = load %struct.intel_connector*, %struct.intel_connector** %2, align 8
  %15 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  store i32* null, i32** %18, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
