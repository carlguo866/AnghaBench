; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-tc3589x.c_tc3589x_gpio_direction_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-tc3589x.c_tc3589x_gpio_direction_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.tc3589x_gpio = type { %struct.tc3589x* }
%struct.tc3589x = type { i32 }

@TC3589x_GPIODIR0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @tc3589x_gpio_direction_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc3589x_gpio_direction_input(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tc3589x_gpio*, align 8
  %6 = alloca %struct.tc3589x*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %10 = call %struct.tc3589x_gpio* @gpiochip_get_data(%struct.gpio_chip* %9)
  store %struct.tc3589x_gpio* %10, %struct.tc3589x_gpio** %5, align 8
  %11 = load %struct.tc3589x_gpio*, %struct.tc3589x_gpio** %5, align 8
  %12 = getelementptr inbounds %struct.tc3589x_gpio, %struct.tc3589x_gpio* %11, i32 0, i32 0
  %13 = load %struct.tc3589x*, %struct.tc3589x** %12, align 8
  store %struct.tc3589x* %13, %struct.tc3589x** %6, align 8
  %14 = load i64, i64* @TC3589x_GPIODIR0, align 8
  %15 = load i32, i32* %4, align 4
  %16 = udiv i32 %15, 8
  %17 = zext i32 %16 to i64
  %18 = add nsw i64 %14, %17
  store i64 %18, i64* %7, align 8
  %19 = load i32, i32* %4, align 4
  %20 = urem i32 %19, 8
  store i32 %20, i32* %8, align 4
  %21 = load %struct.tc3589x*, %struct.tc3589x** %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @BIT(i32 %23)
  %25 = call i32 @tc3589x_set_bits(%struct.tc3589x* %21, i64 %22, i32 %24, i32 0)
  ret i32 %25
}

declare dso_local %struct.tc3589x_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @tc3589x_set_bits(%struct.tc3589x*, i64, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
