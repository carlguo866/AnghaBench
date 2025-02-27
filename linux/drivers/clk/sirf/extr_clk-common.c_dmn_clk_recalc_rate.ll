; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sirf/extr_clk-common.c_dmn_clk_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sirf/extr_clk-common.c_dmn_clk_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_dmn = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @dmn_clk_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dmn_clk_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.clk_dmn*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  store i64 %11, i64* %6, align 8
  %12 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %13 = call %struct.clk_dmn* @to_dmnclk(%struct.clk_hw* %12)
  store %struct.clk_dmn* %13, %struct.clk_dmn** %7, align 8
  %14 = load %struct.clk_dmn*, %struct.clk_dmn** %7, align 8
  %15 = getelementptr inbounds %struct.clk_dmn, %struct.clk_dmn* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @clkc_readl(i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @BIT(i32 24)
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i64, i64* %6, align 8
  store i64 %23, i64* %3, align 8
  br label %42

24:                                               ; preds = %2
  %25 = load i32, i32* %8, align 4
  %26 = ashr i32 %25, 16
  %27 = call i32 @BIT(i32 4)
  %28 = sub nsw i32 %27, 1
  %29 = and i32 %26, %28
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %8, align 4
  %31 = ashr i32 %30, 20
  %32 = call i32 @BIT(i32 4)
  %33 = sub nsw i32 %32, 1
  %34 = and i32 %31, %33
  store i32 %34, i32* %10, align 4
  %35 = load i64, i64* %6, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %10, align 4
  %38 = add nsw i32 %36, %37
  %39 = add nsw i32 %38, 2
  %40 = sext i32 %39 to i64
  %41 = udiv i64 %35, %40
  store i64 %41, i64* %3, align 8
  br label %42

42:                                               ; preds = %24, %22
  %43 = load i64, i64* %3, align 8
  ret i64 %43
}

declare dso_local %struct.clk_dmn* @to_dmnclk(%struct.clk_hw*) #1

declare dso_local i32 @clkc_readl(i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
