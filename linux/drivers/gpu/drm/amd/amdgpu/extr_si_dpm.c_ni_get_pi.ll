; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_ni_get_pi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_ni_get_pi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ni_power_info = type { i32 }
%struct.amdgpu_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ni_power_info* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ni_power_info* (%struct.amdgpu_device*)* @ni_get_pi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ni_power_info* @ni_get_pi(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca %struct.ni_power_info*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %4 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %5 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load %struct.ni_power_info*, %struct.ni_power_info** %7, align 8
  store %struct.ni_power_info* %8, %struct.ni_power_info** %3, align 8
  %9 = load %struct.ni_power_info*, %struct.ni_power_info** %3, align 8
  ret %struct.ni_power_info* %9
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
