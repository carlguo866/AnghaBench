; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sirf/extr_clk-atlas7.c_unit_clk_is_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sirf/extr_clk-atlas7.c_unit_clk_is_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_unit = type { i32, i64 }

@SIRFSOC_CLKC_ROOT_CLK_EN0_STAT = common dso_local global i64 0, align 8
@SIRFSOC_CLKC_ROOT_CLK_EN0_SET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @unit_clk_is_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unit_clk_is_enabled(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.clk_unit*, align 8
  %4 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %5 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %6 = call %struct.clk_unit* @to_unitclk(%struct.clk_hw* %5)
  store %struct.clk_unit* %6, %struct.clk_unit** %3, align 8
  %7 = load %struct.clk_unit*, %struct.clk_unit** %3, align 8
  %8 = getelementptr inbounds %struct.clk_unit, %struct.clk_unit* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @SIRFSOC_CLKC_ROOT_CLK_EN0_STAT, align 8
  %11 = add nsw i64 %9, %10
  %12 = load i64, i64* @SIRFSOC_CLKC_ROOT_CLK_EN0_SET, align 8
  %13 = sub nsw i64 %11, %12
  store i64 %13, i64* %4, align 8
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @clkc_readl(i64 %14)
  %16 = load %struct.clk_unit*, %struct.clk_unit** %3, align 8
  %17 = getelementptr inbounds %struct.clk_unit, %struct.clk_unit* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @BIT(i32 %18)
  %20 = and i32 %15, %19
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  ret i32 %24
}

declare dso_local %struct.clk_unit* @to_unitclk(%struct.clk_hw*) #1

declare dso_local i32 @clkc_readl(i64) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
