; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-stmp3xxx/extr_clock.c_lcdif_get_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-stmp3xxx/extr_clock.c_lcdif_get_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@REGS_CLKCTRL_BASE = common dso_local global i64 0, align 8
@HW_CLKCTRL_FRAC = common dso_local global i64 0, align 8
@BM_CLKCTRL_FRAC_PIXFRAC = common dso_local global i32 0, align 4
@BP_CLKCTRL_FRAC_PIXFRAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk*)* @lcdif_get_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @lcdif_get_rate(%struct.clk* %0) #0 {
  %2 = alloca %struct.clk*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.clk* %0, %struct.clk** %2, align 8
  %6 = load %struct.clk*, %struct.clk** %2, align 8
  %7 = getelementptr inbounds %struct.clk, %struct.clk* %6, i32 0, i32 3
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %3, align 8
  store i32 255, i32* %5, align 4
  %11 = load %struct.clk*, %struct.clk** %2, align 8
  %12 = getelementptr inbounds %struct.clk, %struct.clk* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @__raw_readl(i64 %13)
  %15 = load %struct.clk*, %struct.clk** %2, align 8
  %16 = getelementptr inbounds %struct.clk, %struct.clk* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = ashr i32 %14, %17
  %19 = and i32 %18, 255
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %4, align 8
  %21 = load i64, i64* %4, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %1
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* %3, align 8
  %26 = sdiv i64 %25, %24
  store i64 %26, i64* %3, align 8
  %27 = load i64, i64* @REGS_CLKCTRL_BASE, align 8
  %28 = load i64, i64* @HW_CLKCTRL_FRAC, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @__raw_readl(i64 %29)
  %31 = load i32, i32* @BM_CLKCTRL_FRAC_PIXFRAC, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* @BP_CLKCTRL_FRAC_PIXFRAC, align 4
  %34 = ashr i32 %32, %33
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %4, align 8
  %36 = load i64, i64* %4, align 8
  %37 = load i64, i64* %3, align 8
  %38 = sdiv i64 %37, %36
  store i64 %38, i64* %3, align 8
  br label %39

39:                                               ; preds = %23, %1
  %40 = load i64, i64* %3, align 8
  %41 = load %struct.clk*, %struct.clk** %2, align 8
  %42 = getelementptr inbounds %struct.clk, %struct.clk* %41, i32 0, i32 1
  store i64 %40, i64* %42, align 8
  %43 = load i64, i64* %3, align 8
  ret i64 %43
}

declare dso_local i32 @__raw_readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
