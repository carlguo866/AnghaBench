; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gfx_v7.c_invalidate_tlbs_vmid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gfx_v7.c_invalidate_tlbs_vmid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kgd_dev = type { i32 }
%struct.amdgpu_device = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"non kfd vmid\0A\00", align 1
@mmVM_INVALIDATE_REQUEST = common dso_local global i32 0, align 4
@mmVM_INVALIDATE_RESPONSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kgd_dev*, i32)* @invalidate_tlbs_vmid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @invalidate_tlbs_vmid(%struct.kgd_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kgd_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_device*, align 8
  store %struct.kgd_dev* %0, %struct.kgd_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.kgd_dev*, %struct.kgd_dev** %4, align 8
  %8 = bitcast %struct.kgd_dev* %7 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %8, %struct.amdgpu_device** %6, align 8
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @amdgpu_amdkfd_is_kfd_vmid(%struct.amdgpu_device* %9, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = call i32 @pr_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %22

15:                                               ; preds = %2
  %16 = load i32, i32* @mmVM_INVALIDATE_REQUEST, align 4
  %17 = load i32, i32* %5, align 4
  %18 = shl i32 1, %17
  %19 = call i32 @WREG32(i32 %16, i32 %18)
  %20 = load i32, i32* @mmVM_INVALIDATE_RESPONSE, align 4
  %21 = call i32 @RREG32(i32 %20)
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %15, %13
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @amdgpu_amdkfd_is_kfd_vmid(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @RREG32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
