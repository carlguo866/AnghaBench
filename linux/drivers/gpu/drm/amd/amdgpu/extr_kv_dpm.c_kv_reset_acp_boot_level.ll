; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_kv_dpm.c_kv_reset_acp_boot_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_kv_dpm.c_kv_reset_acp_boot_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.kv_power_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @kv_reset_acp_boot_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kv_reset_acp_boot_level(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca %struct.kv_power_info*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %4 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %5 = call %struct.kv_power_info* @kv_get_pi(%struct.amdgpu_device* %4)
  store %struct.kv_power_info* %5, %struct.kv_power_info** %3, align 8
  %6 = load %struct.kv_power_info*, %struct.kv_power_info** %3, align 8
  %7 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %6, i32 0, i32 0
  store i32 255, i32* %7, align 4
  ret void
}

declare dso_local %struct.kv_power_info* @kv_get_pi(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
