; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/sirf/extr_pinctrl-atlas7.c_atlas7_gpio_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/sirf/extr_pinctrl-atlas7.c_atlas7_gpio_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i64 }
%struct.atlas7_gpio_chip = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_chip*, i32)* @atlas7_gpio_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atlas7_gpio_free(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.atlas7_gpio_chip*, align 8
  %6 = alloca i64, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %8 = call %struct.atlas7_gpio_chip* @gpiochip_get_data(%struct.gpio_chip* %7)
  store %struct.atlas7_gpio_chip* %8, %struct.atlas7_gpio_chip** %5, align 8
  %9 = load %struct.atlas7_gpio_chip*, %struct.atlas7_gpio_chip** %5, align 8
  %10 = getelementptr inbounds %struct.atlas7_gpio_chip, %struct.atlas7_gpio_chip* %9, i32 0, i32 0
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @raw_spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.atlas7_gpio_chip*, %struct.atlas7_gpio_chip** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @__atlas7_gpio_irq_mask(%struct.atlas7_gpio_chip* %13, i32 %14)
  %16 = load %struct.atlas7_gpio_chip*, %struct.atlas7_gpio_chip** %5, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @__atlas7_gpio_set_input(%struct.atlas7_gpio_chip* %16, i32 %17)
  %19 = load %struct.atlas7_gpio_chip*, %struct.atlas7_gpio_chip** %5, align 8
  %20 = getelementptr inbounds %struct.atlas7_gpio_chip, %struct.atlas7_gpio_chip* %19, i32 0, i32 0
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @raw_spin_unlock_irqrestore(i32* %20, i64 %21)
  %23 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %24 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = zext i32 %26 to i64
  %28 = add nsw i64 %25, %27
  %29 = call i32 @pinctrl_gpio_free(i64 %28)
  ret void
}

declare dso_local %struct.atlas7_gpio_chip* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__atlas7_gpio_irq_mask(%struct.atlas7_gpio_chip*, i32) #1

declare dso_local i32 @__atlas7_gpio_set_input(%struct.atlas7_gpio_chip*, i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pinctrl_gpio_free(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
