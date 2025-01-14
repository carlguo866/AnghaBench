; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-tegra194.c_tegra_pcie_dw_resume_early.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-tegra194.c_tegra_pcie_dw_resume_early.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.tegra_pcie_dw = type { i32 }

@APPL_CTRL = common dso_local global i32 0, align 4
@APPL_CTRL_HW_HOT_RST_MODE_MASK = common dso_local global i32 0, align 4
@APPL_CTRL_HW_HOT_RST_MODE_SHIFT = common dso_local global i32 0, align 4
@APPL_CTRL_HW_HOT_RST_MODE_IMDT_RST = common dso_local global i32 0, align 4
@APPL_CTRL_HW_HOT_RST_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @tegra_pcie_dw_resume_early to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_pcie_dw_resume_early(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.tegra_pcie_dw*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.tegra_pcie_dw* @dev_get_drvdata(%struct.device* %6)
  store %struct.tegra_pcie_dw* %7, %struct.tegra_pcie_dw** %4, align 8
  %8 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %4, align 8
  %9 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %36

13:                                               ; preds = %1
  %14 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %4, align 8
  %15 = load i32, i32* @APPL_CTRL, align 4
  %16 = call i32 @appl_readl(%struct.tegra_pcie_dw* %14, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* @APPL_CTRL_HW_HOT_RST_MODE_MASK, align 4
  %18 = load i32, i32* @APPL_CTRL_HW_HOT_RST_MODE_SHIFT, align 4
  %19 = shl i32 %17, %18
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %5, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* @APPL_CTRL_HW_HOT_RST_MODE_IMDT_RST, align 4
  %24 = load i32, i32* @APPL_CTRL_HW_HOT_RST_MODE_SHIFT, align 4
  %25 = shl i32 %23, %24
  %26 = load i32, i32* %5, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* @APPL_CTRL_HW_HOT_RST_EN, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %5, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %5, align 4
  %32 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @APPL_CTRL, align 4
  %35 = call i32 @appl_writel(%struct.tegra_pcie_dw* %32, i32 %33, i32 %34)
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %13, %12
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.tegra_pcie_dw* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @appl_readl(%struct.tegra_pcie_dw*, i32) #1

declare dso_local i32 @appl_writel(%struct.tegra_pcie_dw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
