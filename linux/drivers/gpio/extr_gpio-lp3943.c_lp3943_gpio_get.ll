; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-lp3943.c_lp3943_gpio_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-lp3943.c_lp3943_gpio_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.lp3943_gpio = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @lp3943_gpio_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp3943_gpio_get(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.lp3943_gpio*, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %8 = call %struct.lp3943_gpio* @gpiochip_get_data(%struct.gpio_chip* %7)
  store %struct.lp3943_gpio* %8, %struct.lp3943_gpio** %6, align 8
  %9 = load %struct.lp3943_gpio*, %struct.lp3943_gpio** %6, align 8
  %10 = getelementptr inbounds %struct.lp3943_gpio, %struct.lp3943_gpio* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @BIT(i32 %12)
  %14 = and i32 %11, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.lp3943_gpio*, %struct.lp3943_gpio** %6, align 8
  %18 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @lp3943_get_gpio_in_status(%struct.lp3943_gpio* %17, %struct.gpio_chip* %18, i32 %19)
  store i32 %20, i32* %3, align 4
  br label %26

21:                                               ; preds = %2
  %22 = load %struct.lp3943_gpio*, %struct.lp3943_gpio** %6, align 8
  %23 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @lp3943_get_gpio_out_status(%struct.lp3943_gpio* %22, %struct.gpio_chip* %23, i32 %24)
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %21, %16
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local %struct.lp3943_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @lp3943_get_gpio_in_status(%struct.lp3943_gpio*, %struct.gpio_chip*, i32) #1

declare dso_local i32 @lp3943_get_gpio_out_status(%struct.lp3943_gpio*, %struct.gpio_chip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
