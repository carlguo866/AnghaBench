; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv6xx_dpm.c_rv6xx_enable_pcie_gen2_support.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv6xx_dpm.c_rv6xx_enable_pcie_gen2_support.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@PCIE_LC_SPEED_CNTL = common dso_local global i32 0, align 4
@LC_OTHER_SIDE_EVER_SENT_GEN2 = common dso_local global i32 0, align 4
@LC_OTHER_SIDE_SUPPORTS_GEN2 = common dso_local global i32 0, align 4
@LC_GEN2_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @rv6xx_enable_pcie_gen2_support to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rv6xx_enable_pcie_gen2_support(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %4 = load i32, i32* @PCIE_LC_SPEED_CNTL, align 4
  %5 = call i32 @RREG32_PCIE_PORT(i32 %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @LC_OTHER_SIDE_EVER_SENT_GEN2, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @LC_OTHER_SIDE_SUPPORTS_GEN2, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %10
  %16 = load i32, i32* @LC_GEN2_EN, align 4
  %17 = load i32, i32* %3, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* @PCIE_LC_SPEED_CNTL, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @WREG32_PCIE_PORT(i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %15, %10, %1
  ret void
}

declare dso_local i32 @RREG32_PCIE_PORT(i32) #1

declare dso_local i32 @WREG32_PCIE_PORT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
