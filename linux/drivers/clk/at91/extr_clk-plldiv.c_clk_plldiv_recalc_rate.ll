; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/at91/extr_clk-plldiv.c_clk_plldiv_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/at91/extr_clk-plldiv.c_clk_plldiv_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_plldiv = type { i32 }

@AT91_PMC_MCKR = common dso_local global i32 0, align 4
@AT91_PMC_PLLADIV2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @clk_plldiv_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clk_plldiv_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.clk_plldiv*, align 8
  %7 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %9 = call %struct.clk_plldiv* @to_clk_plldiv(%struct.clk_hw* %8)
  store %struct.clk_plldiv* %9, %struct.clk_plldiv** %6, align 8
  %10 = load %struct.clk_plldiv*, %struct.clk_plldiv** %6, align 8
  %11 = getelementptr inbounds %struct.clk_plldiv, %struct.clk_plldiv* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @AT91_PMC_MCKR, align 4
  %14 = call i32 @regmap_read(i32 %12, i32 %13, i32* %7)
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @AT91_PMC_PLLADIV2, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i64, i64* %5, align 8
  %21 = udiv i64 %20, 2
  store i64 %21, i64* %3, align 8
  br label %24

22:                                               ; preds = %2
  %23 = load i64, i64* %5, align 8
  store i64 %23, i64* %3, align 8
  br label %24

24:                                               ; preds = %22, %19
  %25 = load i64, i64* %3, align 8
  ret i64 %25
}

declare dso_local %struct.clk_plldiv* @to_clk_plldiv(%struct.clk_hw*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
