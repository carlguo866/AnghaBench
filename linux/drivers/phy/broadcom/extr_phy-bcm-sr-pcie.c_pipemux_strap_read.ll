; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/broadcom/extr_phy-bcm-sr-pcie.c_pipemux_strap_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/broadcom/extr_phy-bcm-sr-pcie.c_pipemux_strap_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sr_pcie_phy_core = type { i32, i64 }

@PCIE_PIPEMUX_CFG_OFFSET = common dso_local global i64 0, align 8
@PCIE_PIPEMUX_MASK = common dso_local global i32 0, align 4
@PCIE_PIPEMUX_SELECT_STRAP = common dso_local global i32 0, align 4
@CDRU_STRAP_DATA_LSW_OFFSET = common dso_local global i32 0, align 4
@PCIE_PIPEMUX_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sr_pcie_phy_core*)* @pipemux_strap_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pipemux_strap_read(%struct.sr_pcie_phy_core* %0) #0 {
  %2 = alloca %struct.sr_pcie_phy_core*, align 8
  %3 = alloca i32, align 4
  store %struct.sr_pcie_phy_core* %0, %struct.sr_pcie_phy_core** %2, align 8
  %4 = load %struct.sr_pcie_phy_core*, %struct.sr_pcie_phy_core** %2, align 8
  %5 = getelementptr inbounds %struct.sr_pcie_phy_core, %struct.sr_pcie_phy_core* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @PCIE_PIPEMUX_CFG_OFFSET, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @readl(i64 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @PCIE_PIPEMUX_MASK, align 4
  %11 = load i32, i32* %3, align 4
  %12 = and i32 %11, %10
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @PCIE_PIPEMUX_SELECT_STRAP, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %1
  %17 = load %struct.sr_pcie_phy_core*, %struct.sr_pcie_phy_core** %2, align 8
  %18 = getelementptr inbounds %struct.sr_pcie_phy_core, %struct.sr_pcie_phy_core* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @CDRU_STRAP_DATA_LSW_OFFSET, align 4
  %21 = call i32 @regmap_read(i32 %19, i32 %20, i32* %3)
  %22 = load i32, i32* @PCIE_PIPEMUX_SHIFT, align 4
  %23 = load i32, i32* %3, align 4
  %24 = ashr i32 %23, %22
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* @PCIE_PIPEMUX_MASK, align 4
  %26 = load i32, i32* %3, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %16, %1
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
