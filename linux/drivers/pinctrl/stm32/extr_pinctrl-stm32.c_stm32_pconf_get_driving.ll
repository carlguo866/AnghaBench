; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/stm32/extr_pinctrl-stm32.c_stm32_pconf_get_driving.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/stm32/extr_pinctrl-stm32.c_stm32_pconf_get_driving.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_gpio_bank = type { i32, i32, i64 }

@STM32_GPIO_TYPER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32_gpio_bank*, i32)* @stm32_pconf_get_driving to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_pconf_get_driving(%struct.stm32_gpio_bank* %0, i32 %1) #0 {
  %3 = alloca %struct.stm32_gpio_bank*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.stm32_gpio_bank* %0, %struct.stm32_gpio_bank** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.stm32_gpio_bank*, %struct.stm32_gpio_bank** %3, align 8
  %8 = getelementptr inbounds %struct.stm32_gpio_bank, %struct.stm32_gpio_bank* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @clk_enable(i32 %9)
  %11 = load %struct.stm32_gpio_bank*, %struct.stm32_gpio_bank** %3, align 8
  %12 = getelementptr inbounds %struct.stm32_gpio_bank, %struct.stm32_gpio_bank* %11, i32 0, i32 1
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.stm32_gpio_bank*, %struct.stm32_gpio_bank** %3, align 8
  %16 = getelementptr inbounds %struct.stm32_gpio_bank, %struct.stm32_gpio_bank* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @STM32_GPIO_TYPER, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @readl_relaxed(i64 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @BIT(i32 %21)
  %23 = load i32, i32* %6, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %6, align 4
  %25 = load %struct.stm32_gpio_bank*, %struct.stm32_gpio_bank** %3, align 8
  %26 = getelementptr inbounds %struct.stm32_gpio_bank, %struct.stm32_gpio_bank* %25, i32 0, i32 1
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* %26, i64 %27)
  %29 = load %struct.stm32_gpio_bank*, %struct.stm32_gpio_bank** %3, align 8
  %30 = getelementptr inbounds %struct.stm32_gpio_bank, %struct.stm32_gpio_bank* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @clk_disable(i32 %31)
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %4, align 4
  %35 = lshr i32 %33, %34
  ret i32 %35
}

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
