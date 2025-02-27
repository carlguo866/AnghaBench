; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-bcm2835.c___bcm2835_gpio_irq_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-bcm2835.c___bcm2835_gpio_irq_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm2835_pinctrl = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm2835_pinctrl*, i32, i32, i32)* @__bcm2835_gpio_irq_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__bcm2835_gpio_irq_config(%struct.bcm2835_pinctrl* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.bcm2835_pinctrl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bcm2835_pinctrl* %0, %struct.bcm2835_pinctrl** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %7, align 4
  %11 = call i32 @GPIO_REG_OFFSET(i32 %10)
  %12 = mul nsw i32 %11, 4
  %13 = load i32, i32* %6, align 4
  %14 = add i32 %13, %12
  store i32 %14, i32* %6, align 4
  %15 = load %struct.bcm2835_pinctrl*, %struct.bcm2835_pinctrl** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @bcm2835_gpio_rd(%struct.bcm2835_pinctrl* %15, i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @GPIO_REG_SHIFT(i32 %21)
  %23 = call i32 @BIT(i32 %22)
  %24 = load i32, i32* %9, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %9, align 4
  br label %33

26:                                               ; preds = %4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @GPIO_REG_SHIFT(i32 %27)
  %29 = call i32 @BIT(i32 %28)
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %9, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %26, %20
  %34 = load %struct.bcm2835_pinctrl*, %struct.bcm2835_pinctrl** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @bcm2835_gpio_wr(%struct.bcm2835_pinctrl* %34, i32 %35, i32 %36)
  ret void
}

declare dso_local i32 @GPIO_REG_OFFSET(i32) #1

declare dso_local i32 @bcm2835_gpio_rd(%struct.bcm2835_pinctrl*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @GPIO_REG_SHIFT(i32) #1

declare dso_local i32 @bcm2835_gpio_wr(%struct.bcm2835_pinctrl*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
