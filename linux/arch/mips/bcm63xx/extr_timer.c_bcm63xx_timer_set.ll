; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/bcm63xx/extr_timer.c_bcm63xx_timer_set.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/bcm63xx/extr_timer.c_bcm63xx_timer_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BCM63XX_TIMER_COUNT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TIMER_CTL_COUNTDOWN_MASK = common dso_local global i32 0, align 4
@timer_reg_lock = common dso_local global i32 0, align 4
@TIMER_CTL_MONOTONIC_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bcm63xx_timer_set(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @BCM63XX_TIMER_COUNT, align 4
  %13 = icmp sge i32 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %59

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @bcm63xx_timer_countdown(i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @TIMER_CTL_COUNTDOWN_MASK, align 4
  %22 = xor i32 %21, -1
  %23 = and i32 %20, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %59

28:                                               ; preds = %17
  %29 = load i64, i64* %10, align 8
  %30 = call i32 @raw_spin_lock_irqsave(i32* @timer_reg_lock, i64 %29)
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @TIMER_CTLx_REG(i32 %31)
  %33 = call i32 @bcm_timer_readl(i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %28
  %37 = load i32, i32* @TIMER_CTL_MONOTONIC_MASK, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %8, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %8, align 4
  br label %45

41:                                               ; preds = %28
  %42 = load i32, i32* @TIMER_CTL_MONOTONIC_MASK, align 4
  %43 = load i32, i32* %8, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %41, %36
  %46 = load i32, i32* @TIMER_CTL_COUNTDOWN_MASK, align 4
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %8, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %8, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @TIMER_CTLx_REG(i32 %54)
  %56 = call i32 @bcm_timer_writel(i32 %53, i32 %55)
  %57 = load i64, i64* %10, align 8
  %58 = call i32 @raw_spin_unlock_irqrestore(i32* @timer_reg_lock, i64 %57)
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %45, %25, %14
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @bcm63xx_timer_countdown(i32) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @bcm_timer_readl(i32) #1

declare dso_local i32 @TIMER_CTLx_REG(i32) #1

declare dso_local i32 @bcm_timer_writel(i32, i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
