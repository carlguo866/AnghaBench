; ModuleID = '/home/carl/AnghaBench/linux/drivers/ssb/extr_driver_gpio.c_ssb_gpio_chipco_get_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ssb/extr_driver_gpio.c_ssb_gpio_chipco_get_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.ssb_bus = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @ssb_gpio_chipco_get_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssb_gpio_chipco_get_value(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ssb_bus*, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %7 = call %struct.ssb_bus* @gpiochip_get_data(%struct.gpio_chip* %6)
  store %struct.ssb_bus* %7, %struct.ssb_bus** %5, align 8
  %8 = load %struct.ssb_bus*, %struct.ssb_bus** %5, align 8
  %9 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %8, i32 0, i32 0
  %10 = load i32, i32* %4, align 4
  %11 = shl i32 1, %10
  %12 = call i32 @ssb_chipco_gpio_in(i32* %9, i32 %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  ret i32 %16
}

declare dso_local %struct.ssb_bus* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @ssb_chipco_gpio_in(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
