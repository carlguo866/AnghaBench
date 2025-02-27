; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_trinity_dpm.c_trinity_gfx_powergating_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_trinity_dpm.c_trinity_gfx_powergating_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@CC_SMU_TST_EFUSE1_MISC = common dso_local global i32 0, align 4
@RB_BACKEND_DISABLE_MASK = common dso_local global i32 0, align 4
@SMU_SCRATCH_A = common dso_local global i32 0, align 4
@SCLK_PWRMGT_CNTL = common dso_local global i32 0, align 4
@DYN_PWR_DOWN_EN = common dso_local global i32 0, align 4
@GB_ADDR_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, i32)* @trinity_gfx_powergating_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trinity_gfx_powergating_enable(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %25

7:                                                ; preds = %2
  %8 = load i32, i32* @CC_SMU_TST_EFUSE1_MISC, align 4
  %9 = call i32 @RREG32_SMC(i32 %8)
  %10 = load i32, i32* @RB_BACKEND_DISABLE_MASK, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %7
  %14 = load i32, i32* @SMU_SCRATCH_A, align 4
  %15 = load i32, i32* @SMU_SCRATCH_A, align 4
  %16 = call i32 @RREG32_SMC(i32 %15)
  %17 = or i32 %16, 1
  %18 = call i32 @WREG32_SMC(i32 %14, i32 %17)
  br label %19

19:                                               ; preds = %13, %7
  %20 = load i32, i32* @SCLK_PWRMGT_CNTL, align 4
  %21 = load i32, i32* @DYN_PWR_DOWN_EN, align 4
  %22 = load i32, i32* @DYN_PWR_DOWN_EN, align 4
  %23 = xor i32 %22, -1
  %24 = call i32 @WREG32_P(i32 %20, i32 %21, i32 %23)
  br label %32

25:                                               ; preds = %2
  %26 = load i32, i32* @SCLK_PWRMGT_CNTL, align 4
  %27 = load i32, i32* @DYN_PWR_DOWN_EN, align 4
  %28 = xor i32 %27, -1
  %29 = call i32 @WREG32_P(i32 %26, i32 0, i32 %28)
  %30 = load i32, i32* @GB_ADDR_CONFIG, align 4
  %31 = call i32 @RREG32(i32 %30)
  br label %32

32:                                               ; preds = %25, %19
  ret void
}

declare dso_local i32 @RREG32_SMC(i32) #1

declare dso_local i32 @WREG32_SMC(i32, i32) #1

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

declare dso_local i32 @RREG32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
