; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/bcm63xx/extr_clk.c_xtm_set.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/bcm63xx/extr_clk.c_xtm_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }

@clk_swpkt_sar = common dso_local global i32 0, align 4
@CKCTL_6368_SAR_EN = common dso_local global i32 0, align 4
@BCM63XX_RESET_SAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk*, i32)* @xtm_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xtm_set(%struct.clk* %0, i32 %1) #0 {
  %3 = alloca %struct.clk*, align 8
  %4 = alloca i32, align 4
  store %struct.clk* %0, %struct.clk** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = call i32 (...) @BCMCPU_IS_6368()
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %28

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = call i32 @clk_enable_unlocked(i32* @clk_swpkt_sar)
  br label %15

13:                                               ; preds = %8
  %14 = call i32 @clk_disable_unlocked(i32* @clk_swpkt_sar)
  br label %15

15:                                               ; preds = %13, %11
  %16 = load i32, i32* @CKCTL_6368_SAR_EN, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @bcm_hwclock_set(i32 %16, i32 %17)
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %15
  %22 = load i32, i32* @BCM63XX_RESET_SAR, align 4
  %23 = call i32 @bcm63xx_core_set_reset(i32 %22, i32 1)
  %24 = call i32 @mdelay(i32 1)
  %25 = load i32, i32* @BCM63XX_RESET_SAR, align 4
  %26 = call i32 @bcm63xx_core_set_reset(i32 %25, i32 0)
  %27 = call i32 @mdelay(i32 1)
  br label %28

28:                                               ; preds = %7, %21, %15
  ret void
}

declare dso_local i32 @BCMCPU_IS_6368(...) #1

declare dso_local i32 @clk_enable_unlocked(i32*) #1

declare dso_local i32 @clk_disable_unlocked(i32*) #1

declare dso_local i32 @bcm_hwclock_set(i32, i32) #1

declare dso_local i32 @bcm63xx_core_set_reset(i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
