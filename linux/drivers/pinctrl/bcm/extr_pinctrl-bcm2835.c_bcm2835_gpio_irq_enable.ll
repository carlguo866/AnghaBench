; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-bcm2835.c_bcm2835_gpio_irq_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-bcm2835.c_bcm2835_gpio_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.gpio_chip = type { i32 }
%struct.bcm2835_pinctrl = type { i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @bcm2835_gpio_irq_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm2835_gpio_irq_enable(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca %struct.bcm2835_pinctrl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %9 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %10 = call %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data* %9)
  store %struct.gpio_chip* %10, %struct.gpio_chip** %3, align 8
  %11 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %12 = call %struct.bcm2835_pinctrl* @gpiochip_get_data(%struct.gpio_chip* %11)
  store %struct.bcm2835_pinctrl* %12, %struct.bcm2835_pinctrl** %4, align 8
  %13 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %14 = call i32 @irqd_to_hwirq(%struct.irq_data* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @GPIO_REG_SHIFT(i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @GPIO_REG_OFFSET(i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.bcm2835_pinctrl*, %struct.bcm2835_pinctrl** %4, align 8
  %20 = getelementptr inbounds %struct.bcm2835_pinctrl, %struct.bcm2835_pinctrl* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i64, i64* %8, align 8
  %26 = call i32 @raw_spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.bcm2835_pinctrl*, %struct.bcm2835_pinctrl** %4, align 8
  %29 = getelementptr inbounds %struct.bcm2835_pinctrl, %struct.bcm2835_pinctrl* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = call i32 @set_bit(i32 %27, i32* %33)
  %35 = load %struct.bcm2835_pinctrl*, %struct.bcm2835_pinctrl** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @bcm2835_gpio_irq_config(%struct.bcm2835_pinctrl* %35, i32 %36, i32 1)
  %38 = load %struct.bcm2835_pinctrl*, %struct.bcm2835_pinctrl** %4, align 8
  %39 = getelementptr inbounds %struct.bcm2835_pinctrl, %struct.bcm2835_pinctrl* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i64, i64* %8, align 8
  %45 = call i32 @raw_spin_unlock_irqrestore(i32* %43, i64 %44)
  ret void
}

declare dso_local %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local %struct.bcm2835_pinctrl* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @irqd_to_hwirq(%struct.irq_data*) #1

declare dso_local i32 @GPIO_REG_SHIFT(i32) #1

declare dso_local i32 @GPIO_REG_OFFSET(i32) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @bcm2835_gpio_irq_config(%struct.bcm2835_pinctrl*, i32, i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
