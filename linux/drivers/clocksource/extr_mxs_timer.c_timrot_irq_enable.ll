; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_mxs_timer.c_timrot_irq_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_mxs_timer.c_timrot_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BM_TIMROT_TIMCTRLn_IRQ_EN = common dso_local global i32 0, align 4
@mxs_timrot_base = common dso_local global i64 0, align 8
@STMP_OFFSET_REG_SET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @timrot_irq_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timrot_irq_enable() #0 {
  %1 = load i32, i32* @BM_TIMROT_TIMCTRLn_IRQ_EN, align 4
  %2 = load i64, i64* @mxs_timrot_base, align 8
  %3 = call i64 @HW_TIMROT_TIMCTRLn(i32 0)
  %4 = add nsw i64 %2, %3
  %5 = load i64, i64* @STMP_OFFSET_REG_SET, align 8
  %6 = add nsw i64 %4, %5
  %7 = call i32 @__raw_writel(i32 %1, i64 %6)
  ret void
}

declare dso_local i32 @__raw_writel(i32, i64) #1

declare dso_local i64 @HW_TIMROT_TIMCTRLn(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
