; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stx104.c_stx104_gpio_get_multiple.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stx104.c_stx104_gpio_get_multiple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.stx104_gpio = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i64*, i64*)* @stx104_gpio_get_multiple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stx104_gpio_get_multiple(%struct.gpio_chip* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.stx104_gpio*, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %8 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %9 = call %struct.stx104_gpio* @gpiochip_get_data(%struct.gpio_chip* %8)
  store %struct.stx104_gpio* %9, %struct.stx104_gpio** %7, align 8
  %10 = load %struct.stx104_gpio*, %struct.stx104_gpio** %7, align 8
  %11 = getelementptr inbounds %struct.stx104_gpio, %struct.stx104_gpio* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @inb(i32 %12)
  %14 = load i64*, i64** %6, align 8
  store i64 %13, i64* %14, align 8
  ret i32 0
}

declare dso_local %struct.stx104_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i64 @inb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
