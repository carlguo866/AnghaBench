; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-ingenic.c_ingenic_gpio_irq_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-ingenic.c_ingenic_gpio_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.gpio_chip = type { i32 }
%struct.ingenic_gpio_chip = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@ID_JZ4760 = common dso_local global i64 0, align 8
@JZ4760_GPIO_INT = common dso_local global i32 0, align 4
@JZ4740_GPIO_SELECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @ingenic_gpio_irq_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ingenic_gpio_irq_enable(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca %struct.ingenic_gpio_chip*, align 8
  %5 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %6 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %7 = call %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data* %6)
  store %struct.gpio_chip* %7, %struct.gpio_chip** %3, align 8
  %8 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %9 = call %struct.ingenic_gpio_chip* @gpiochip_get_data(%struct.gpio_chip* %8)
  store %struct.ingenic_gpio_chip* %9, %struct.ingenic_gpio_chip** %4, align 8
  %10 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %11 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  %13 = load %struct.ingenic_gpio_chip*, %struct.ingenic_gpio_chip** %4, align 8
  %14 = getelementptr inbounds %struct.ingenic_gpio_chip, %struct.ingenic_gpio_chip* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ID_JZ4760, align 8
  %19 = icmp sge i64 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.ingenic_gpio_chip*, %struct.ingenic_gpio_chip** %4, align 8
  %22 = load i32, i32* @JZ4760_GPIO_INT, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @ingenic_gpio_set_bit(%struct.ingenic_gpio_chip* %21, i32 %22, i32 %23, i32 1)
  br label %30

25:                                               ; preds = %1
  %26 = load %struct.ingenic_gpio_chip*, %struct.ingenic_gpio_chip** %4, align 8
  %27 = load i32, i32* @JZ4740_GPIO_SELECT, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @ingenic_gpio_set_bit(%struct.ingenic_gpio_chip* %26, i32 %27, i32 %28, i32 1)
  br label %30

30:                                               ; preds = %25, %20
  %31 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %32 = call i32 @ingenic_gpio_irq_unmask(%struct.irq_data* %31)
  ret void
}

declare dso_local %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local %struct.ingenic_gpio_chip* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @ingenic_gpio_set_bit(%struct.ingenic_gpio_chip*, i32, i32, i32) #1

declare dso_local i32 @ingenic_gpio_irq_unmask(%struct.irq_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
