; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/sunxi/extr_pinctrl-sunxi.c_sunxi_pinctrl_gpio_direction_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/sunxi/extr_pinctrl-sunxi.c_sunxi_pinctrl_gpio_direction_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32, i32)* @sunxi_pinctrl_gpio_direction_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunxi_pinctrl_gpio_direction_output(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @sunxi_pinctrl_gpio_set(%struct.gpio_chip* %7, i32 %8, i32 %9)
  %11 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %12 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %5, align 4
  %15 = add i32 %13, %14
  %16 = call i32 @pinctrl_gpio_direction_output(i32 %15)
  ret i32 %16
}

declare dso_local i32 @sunxi_pinctrl_gpio_set(%struct.gpio_chip*, i32, i32) #1

declare dso_local i32 @pinctrl_gpio_direction_output(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
