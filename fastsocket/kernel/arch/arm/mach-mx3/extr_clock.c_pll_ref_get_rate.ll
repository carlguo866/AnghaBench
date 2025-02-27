; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-mx3/extr_clock.c_pll_ref_get_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-mx3/extr_clock.c_pll_ref_get_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MXC_CCM_CCMR = common dso_local global i32 0, align 4
@MXC_CCM_CCMR_PRCS_MASK = common dso_local global i64 0, align 8
@MXC_CCM_CCMR_PRCS_OFFSET = common dso_local global i64 0, align 8
@CKIL_CLK_FREQ = common dso_local global i32 0, align 4
@ckih_clk = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @pll_ref_get_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pll_ref_get_rate() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @MXC_CCM_CCMR, align 4
  %5 = call i64 @__raw_readl(i32 %4)
  store i64 %5, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = load i64, i64* @MXC_CCM_CCMR_PRCS_MASK, align 8
  %8 = and i64 %6, %7
  %9 = load i64, i64* @MXC_CCM_CCMR_PRCS_OFFSET, align 8
  %10 = lshr i64 %8, %9
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %18

14:                                               ; preds = %0
  %15 = load i32, i32* @CKIL_CLK_FREQ, align 4
  %16 = mul nsw i32 %15, 1024
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %1, align 8
  br label %20

18:                                               ; preds = %0
  %19 = call i64 @clk_get_rate(i32* @ckih_clk)
  store i64 %19, i64* %1, align 8
  br label %20

20:                                               ; preds = %18, %14
  %21 = load i64, i64* %1, align 8
  ret i64 %21
}

declare dso_local i64 @__raw_readl(i32) #1

declare dso_local i64 @clk_get_rate(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
