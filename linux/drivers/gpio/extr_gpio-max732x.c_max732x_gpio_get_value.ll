; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-max732x.c_max732x_gpio_get_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-max732x.c_max732x_gpio_get_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.max732x_chip = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @max732x_gpio_get_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max732x_gpio_get_value(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.max732x_chip*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %10 = call %struct.max732x_chip* @gpiochip_get_data(%struct.gpio_chip* %9)
  store %struct.max732x_chip* %10, %struct.max732x_chip** %6, align 8
  %11 = load %struct.max732x_chip*, %struct.max732x_chip** %6, align 8
  %12 = load %struct.max732x_chip*, %struct.max732x_chip** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @is_group_a(%struct.max732x_chip* %12, i32 %13)
  %15 = call i32 @max732x_readb(%struct.max732x_chip* %11, i32 %14, i32* %7)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %3, align 4
  br label %30

20:                                               ; preds = %2
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, 7
  %24 = shl i32 1, %23
  %25 = and i32 %21, %24
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %20, %18
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local %struct.max732x_chip* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @max732x_readb(%struct.max732x_chip*, i32, i32*) #1

declare dso_local i32 @is_group_a(%struct.max732x_chip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
