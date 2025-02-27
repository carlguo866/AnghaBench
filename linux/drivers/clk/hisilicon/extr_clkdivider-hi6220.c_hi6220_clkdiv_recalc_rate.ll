; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/hisilicon/extr_clkdivider-hi6220.c_hi6220_clkdiv_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/hisilicon/extr_clkdivider-hi6220.c_hi6220_clkdiv_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.hi6220_clk_divider = type { i32, i32, i32, i32 }

@CLK_DIVIDER_ROUND_CLOSEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @hi6220_clkdiv_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @hi6220_clkdiv_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hi6220_clk_divider*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %8 = call %struct.hi6220_clk_divider* @to_hi6220_clk_divider(%struct.clk_hw* %7)
  store %struct.hi6220_clk_divider* %8, %struct.hi6220_clk_divider** %6, align 8
  %9 = load %struct.hi6220_clk_divider*, %struct.hi6220_clk_divider** %6, align 8
  %10 = getelementptr inbounds %struct.hi6220_clk_divider, %struct.hi6220_clk_divider* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @readl_relaxed(i32 %11)
  %13 = load %struct.hi6220_clk_divider*, %struct.hi6220_clk_divider** %6, align 8
  %14 = getelementptr inbounds %struct.hi6220_clk_divider, %struct.hi6220_clk_divider* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = lshr i32 %12, %15
  store i32 %16, i32* %5, align 4
  %17 = load %struct.hi6220_clk_divider*, %struct.hi6220_clk_divider** %6, align 8
  %18 = getelementptr inbounds %struct.hi6220_clk_divider, %struct.hi6220_clk_divider* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @div_mask(i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %5, align 4
  %23 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %24 = load i64, i64* %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.hi6220_clk_divider*, %struct.hi6220_clk_divider** %6, align 8
  %27 = getelementptr inbounds %struct.hi6220_clk_divider, %struct.hi6220_clk_divider* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @CLK_DIVIDER_ROUND_CLOSEST, align 4
  %30 = load %struct.hi6220_clk_divider*, %struct.hi6220_clk_divider** %6, align 8
  %31 = getelementptr inbounds %struct.hi6220_clk_divider, %struct.hi6220_clk_divider* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @divider_recalc_rate(%struct.clk_hw* %23, i64 %24, i32 %25, i32 %28, i32 %29, i32 %32)
  ret i64 %33
}

declare dso_local %struct.hi6220_clk_divider* @to_hi6220_clk_divider(%struct.clk_hw*) #1

declare dso_local i32 @readl_relaxed(i32) #1

declare dso_local i32 @div_mask(i32) #1

declare dso_local i64 @divider_recalc_rate(%struct.clk_hw*, i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
