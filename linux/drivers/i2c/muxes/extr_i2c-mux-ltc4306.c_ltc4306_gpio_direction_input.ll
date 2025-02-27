; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/muxes/extr_i2c-mux-ltc4306.c_ltc4306_gpio_direction_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/muxes/extr_i2c-mux-ltc4306.c_ltc4306_gpio_direction_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.ltc4306 = type { i32 }

@LTC_REG_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @ltc4306_gpio_direction_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltc4306_gpio_direction_input(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ltc4306*, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %7 = call %struct.ltc4306* @gpiochip_get_data(%struct.gpio_chip* %6)
  store %struct.ltc4306* %7, %struct.ltc4306** %5, align 8
  %8 = load %struct.ltc4306*, %struct.ltc4306** %5, align 8
  %9 = getelementptr inbounds %struct.ltc4306, %struct.ltc4306* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @LTC_REG_MODE, align 4
  %12 = load i32, i32* %4, align 4
  %13 = sub i32 7, %12
  %14 = call i32 @BIT(i32 %13)
  %15 = load i32, i32* %4, align 4
  %16 = sub i32 7, %15
  %17 = call i32 @BIT(i32 %16)
  %18 = call i32 @regmap_update_bits(i32 %10, i32 %11, i32 %14, i32 %17)
  ret i32 %18
}

declare dso_local %struct.ltc4306* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
