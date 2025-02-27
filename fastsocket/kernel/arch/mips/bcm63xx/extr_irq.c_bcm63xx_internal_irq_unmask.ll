; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/bcm63xx/extr_irq.c_bcm63xx_internal_irq_unmask.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/bcm63xx/extr_irq.c_bcm63xx_internal_irq_unmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IRQ_INTERNAL_BASE = common dso_local global i64 0, align 8
@PERF_IRQMASK_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @bcm63xx_internal_irq_unmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm63xx_internal_irq_unmask(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i64, i64* @IRQ_INTERNAL_BASE, align 8
  %5 = load i32, i32* %2, align 4
  %6 = zext i32 %5 to i64
  %7 = sub nsw i64 %6, %4
  %8 = trunc i64 %7 to i32
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* @PERF_IRQMASK_REG, align 4
  %10 = call i32 @bcm_perf_readl(i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %2, align 4
  %12 = shl i32 1, %11
  %13 = load i32, i32* %3, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @PERF_IRQMASK_REG, align 4
  %17 = call i32 @bcm_perf_writel(i32 %15, i32 %16)
  ret void
}

declare dso_local i32 @bcm_perf_readl(i32) #1

declare dso_local i32 @bcm_perf_writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
