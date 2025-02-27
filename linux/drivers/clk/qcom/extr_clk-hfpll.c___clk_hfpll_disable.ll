; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-hfpll.c___clk_hfpll_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-hfpll.c___clk_hfpll_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hfpll = type { %struct.TYPE_2__, %struct.hfpll_data* }
%struct.TYPE_2__ = type { %struct.regmap* }
%struct.regmap = type { i32 }
%struct.hfpll_data = type { i32 }

@PLL_BYPASSNL = common dso_local global i32 0, align 4
@PLL_RESET_N = common dso_local global i32 0, align 4
@PLL_OUTCTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_hfpll*)* @__clk_hfpll_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__clk_hfpll_disable(%struct.clk_hfpll* %0) #0 {
  %2 = alloca %struct.clk_hfpll*, align 8
  %3 = alloca %struct.hfpll_data*, align 8
  %4 = alloca %struct.regmap*, align 8
  store %struct.clk_hfpll* %0, %struct.clk_hfpll** %2, align 8
  %5 = load %struct.clk_hfpll*, %struct.clk_hfpll** %2, align 8
  %6 = getelementptr inbounds %struct.clk_hfpll, %struct.clk_hfpll* %5, i32 0, i32 1
  %7 = load %struct.hfpll_data*, %struct.hfpll_data** %6, align 8
  store %struct.hfpll_data* %7, %struct.hfpll_data** %3, align 8
  %8 = load %struct.clk_hfpll*, %struct.clk_hfpll** %2, align 8
  %9 = getelementptr inbounds %struct.clk_hfpll, %struct.clk_hfpll* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.regmap*, %struct.regmap** %10, align 8
  store %struct.regmap* %11, %struct.regmap** %4, align 8
  %12 = load %struct.regmap*, %struct.regmap** %4, align 8
  %13 = load %struct.hfpll_data*, %struct.hfpll_data** %3, align 8
  %14 = getelementptr inbounds %struct.hfpll_data, %struct.hfpll_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @PLL_BYPASSNL, align 4
  %17 = load i32, i32* @PLL_RESET_N, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @PLL_OUTCTRL, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @regmap_update_bits(%struct.regmap* %12, i32 %15, i32 %20, i32 0)
  ret void
}

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
