; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ras.c_amdgpu_ras_pre_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ras.c_amdgpu_ras_pre_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.amdgpu_ras = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_ras_pre_fini(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.amdgpu_ras*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %5 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %6 = call %struct.amdgpu_ras* @amdgpu_ras_get_context(%struct.amdgpu_device* %5)
  store %struct.amdgpu_ras* %6, %struct.amdgpu_ras** %4, align 8
  %7 = load %struct.amdgpu_ras*, %struct.amdgpu_ras** %4, align 8
  %8 = icmp ne %struct.amdgpu_ras* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %15

10:                                               ; preds = %1
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %12 = call i32 @amdgpu_ras_disable_all_features(%struct.amdgpu_device* %11, i32 0)
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %14 = call i32 @amdgpu_ras_recovery_fini(%struct.amdgpu_device* %13)
  store i32 0, i32* %2, align 4
  br label %15

15:                                               ; preds = %10, %9
  %16 = load i32, i32* %2, align 4
  ret i32 %16
}

declare dso_local %struct.amdgpu_ras* @amdgpu_ras_get_context(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_ras_disable_all_features(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @amdgpu_ras_recovery_fini(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
