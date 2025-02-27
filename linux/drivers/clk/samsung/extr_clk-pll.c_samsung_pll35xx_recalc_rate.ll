; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/samsung/extr_clk-pll.c_samsung_pll35xx_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/samsung/extr_clk-pll.c_samsung_pll35xx_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.samsung_clk_pll = type { i32 }

@PLL35XX_MDIV_SHIFT = common dso_local global i32 0, align 4
@PLL35XX_MDIV_MASK = common dso_local global i32 0, align 4
@PLL35XX_PDIV_SHIFT = common dso_local global i32 0, align 4
@PLL35XX_PDIV_MASK = common dso_local global i32 0, align 4
@PLL35XX_SDIV_SHIFT = common dso_local global i32 0, align 4
@PLL35XX_SDIV_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @samsung_pll35xx_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @samsung_pll35xx_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.samsung_clk_pll*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %12 = call %struct.samsung_clk_pll* @to_clk_pll(%struct.clk_hw* %11)
  store %struct.samsung_clk_pll* %12, %struct.samsung_clk_pll** %5, align 8
  %13 = load i64, i64* %4, align 8
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %10, align 4
  %15 = load %struct.samsung_clk_pll*, %struct.samsung_clk_pll** %5, align 8
  %16 = getelementptr inbounds %struct.samsung_clk_pll, %struct.samsung_clk_pll* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @readl_relaxed(i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @PLL35XX_MDIV_SHIFT, align 4
  %21 = ashr i32 %19, %20
  %22 = load i32, i32* @PLL35XX_MDIV_MASK, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @PLL35XX_PDIV_SHIFT, align 4
  %26 = ashr i32 %24, %25
  %27 = load i32, i32* @PLL35XX_PDIV_MASK, align 4
  %28 = and i32 %26, %27
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @PLL35XX_SDIV_SHIFT, align 4
  %31 = ashr i32 %29, %30
  %32 = load i32, i32* @PLL35XX_SDIV_MASK, align 4
  %33 = and i32 %31, %32
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %10, align 4
  %36 = mul nsw i32 %35, %34
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = shl i32 %38, %39
  %41 = call i32 @do_div(i32 %37, i32 %40)
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  ret i64 %43
}

declare dso_local %struct.samsung_clk_pll* @to_clk_pll(%struct.clk_hw*) #1

declare dso_local i32 @readl_relaxed(i32) #1

declare dso_local i32 @do_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
