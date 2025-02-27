; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl2.c_atl2_init_pcie.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl2.c_atl2_init_pcie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl2_hw = type { i32 }

@LTSSM_TEST_MODE_DEF = common dso_local global i32 0, align 4
@REG_LTSSM_TEST_MODE = common dso_local global i32 0, align 4
@PCIE_DLL_TX_CTRL1_DEF = common dso_local global i32 0, align 4
@REG_PCIE_DLL_TX_CTRL1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atl2_hw*)* @atl2_init_pcie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atl2_init_pcie(%struct.atl2_hw* %0) #0 {
  %2 = alloca %struct.atl2_hw*, align 8
  %3 = alloca i32, align 4
  store %struct.atl2_hw* %0, %struct.atl2_hw** %2, align 8
  %4 = load i32, i32* @LTSSM_TEST_MODE_DEF, align 4
  store i32 %4, i32* %3, align 4
  %5 = load %struct.atl2_hw*, %struct.atl2_hw** %2, align 8
  %6 = load i32, i32* @REG_LTSSM_TEST_MODE, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @ATL2_WRITE_REG(%struct.atl2_hw* %5, i32 %6, i32 %7)
  %9 = load i32, i32* @PCIE_DLL_TX_CTRL1_DEF, align 4
  store i32 %9, i32* %3, align 4
  %10 = load %struct.atl2_hw*, %struct.atl2_hw** %2, align 8
  %11 = load i32, i32* @REG_PCIE_DLL_TX_CTRL1, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @ATL2_WRITE_REG(%struct.atl2_hw* %10, i32 %11, i32 %12)
  ret void
}

declare dso_local i32 @ATL2_WRITE_REG(%struct.atl2_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
