; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/socfpga/extr_clk-pll-s10.c_clk_pll_get_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/socfpga/extr_clk-pll-s10.c_clk_pll_get_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.socfpga_pll = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CLK_MGR_PLL_CLK_SRC_SHIFT = common dso_local global i32 0, align 4
@CLK_MGR_PLL_CLK_SRC_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @clk_pll_get_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_pll_get_parent(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.socfpga_pll*, align 8
  %4 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %5 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %6 = call %struct.socfpga_pll* @to_socfpga_clk(%struct.clk_hw* %5)
  store %struct.socfpga_pll* %6, %struct.socfpga_pll** %3, align 8
  %7 = load %struct.socfpga_pll*, %struct.socfpga_pll** %3, align 8
  %8 = getelementptr inbounds %struct.socfpga_pll, %struct.socfpga_pll* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @readl(i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @CLK_MGR_PLL_CLK_SRC_SHIFT, align 4
  %14 = ashr i32 %12, %13
  %15 = load i32, i32* @CLK_MGR_PLL_CLK_SRC_MASK, align 4
  %16 = and i32 %14, %15
  ret i32 %16
}

declare dso_local %struct.socfpga_pll* @to_socfpga_clk(%struct.clk_hw*) #1

declare dso_local i32 @readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
