; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-mxs.c_mxs_gpio_get_direction.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-mxs.c_mxs_gpio_get_direction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.mxs_gpio_port = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @mxs_gpio_get_direction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxs_gpio_get_direction(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mxs_gpio_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %9 = call %struct.mxs_gpio_port* @gpiochip_get_data(%struct.gpio_chip* %8)
  store %struct.mxs_gpio_port* %9, %struct.mxs_gpio_port** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = shl i32 1, %10
  store i32 %11, i32* %6, align 4
  %12 = load %struct.mxs_gpio_port*, %struct.mxs_gpio_port** %5, align 8
  %13 = getelementptr inbounds %struct.mxs_gpio_port, %struct.mxs_gpio_port* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.mxs_gpio_port*, %struct.mxs_gpio_port** %5, align 8
  %16 = call i64 @PINCTRL_DOE(%struct.mxs_gpio_port* %15)
  %17 = add nsw i64 %14, %16
  %18 = call i32 @readl(i64 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %6, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  ret i32 %24
}

declare dso_local %struct.mxs_gpio_port* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @PINCTRL_DOE(%struct.mxs_gpio_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
