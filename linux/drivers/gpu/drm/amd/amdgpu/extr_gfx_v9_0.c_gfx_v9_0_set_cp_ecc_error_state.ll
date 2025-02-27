; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_set_cp_ecc_error_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_set_cp_ecc_error_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.amdgpu_irq_src = type { i32 }

@GC = common dso_local global i32 0, align 4
@CP_INT_CNTL_RING0 = common dso_local global i32 0, align 4
@CP_ECC_ERROR_INT_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, %struct.amdgpu_irq_src*, i32, i32)* @gfx_v9_0_set_cp_ecc_error_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v9_0_set_cp_ecc_error_state(%struct.amdgpu_device* %0, %struct.amdgpu_irq_src* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca %struct.amdgpu_irq_src*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %5, align 8
  store %struct.amdgpu_irq_src* %1, %struct.amdgpu_irq_src** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %28 [
    i32 129, label %10
    i32 128, label %19
  ]

10:                                               ; preds = %4
  %11 = load i32, i32* @GC, align 4
  %12 = load i32, i32* @CP_INT_CNTL_RING0, align 4
  %13 = load i32, i32* @CP_ECC_ERROR_INT_ENABLE, align 4
  %14 = call i32 @WREG32_FIELD15(i32 %11, i32 0, i32 %12, i32 %13, i32 0)
  %15 = call i32 @DISABLE_ECC_ON_ME_PIPE(i32 1, i32 0)
  %16 = call i32 @DISABLE_ECC_ON_ME_PIPE(i32 1, i32 1)
  %17 = call i32 @DISABLE_ECC_ON_ME_PIPE(i32 1, i32 2)
  %18 = call i32 @DISABLE_ECC_ON_ME_PIPE(i32 1, i32 3)
  br label %29

19:                                               ; preds = %4
  %20 = load i32, i32* @GC, align 4
  %21 = load i32, i32* @CP_INT_CNTL_RING0, align 4
  %22 = load i32, i32* @CP_ECC_ERROR_INT_ENABLE, align 4
  %23 = call i32 @WREG32_FIELD15(i32 %20, i32 0, i32 %21, i32 %22, i32 1)
  %24 = call i32 @ENABLE_ECC_ON_ME_PIPE(i32 1, i32 0)
  %25 = call i32 @ENABLE_ECC_ON_ME_PIPE(i32 1, i32 1)
  %26 = call i32 @ENABLE_ECC_ON_ME_PIPE(i32 1, i32 2)
  %27 = call i32 @ENABLE_ECC_ON_ME_PIPE(i32 1, i32 3)
  br label %29

28:                                               ; preds = %4
  br label %29

29:                                               ; preds = %28, %19, %10
  ret i32 0
}

declare dso_local i32 @WREG32_FIELD15(i32, i32, i32, i32, i32) #1

declare dso_local i32 @DISABLE_ECC_ON_ME_PIPE(i32, i32) #1

declare dso_local i32 @ENABLE_ECC_ON_ME_PIPE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
