; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni_dpm.c_ni_pcie_performance_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni_dpm.c_ni_pcie_performance_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@PCIE_PERF_REQ_PECI_GEN1 = common dso_local global i64 0, align 8
@PCIE_PERF_REQ_PECI_GEN2 = common dso_local global i64 0, align 8
@PCIE_PERF_REQ_REMOVE_REGISTRY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, i64, i32)* @ni_pcie_performance_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_pcie_performance_request(%struct.radeon_device* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
