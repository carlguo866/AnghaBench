; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/gpio/extr_hw_gpio.c_dal_hw_gpio_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/gpio/extr_hw_gpio.c_dal_hw_gpio_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw_gpio_pin = type { i32 }
%struct.hw_gpio = type { i32 }

@GPIO_RESULT_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dal_hw_gpio_open(%struct.hw_gpio_pin* %0, i32 %1) #0 {
  %3 = alloca %struct.hw_gpio_pin*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hw_gpio*, align 8
  store %struct.hw_gpio_pin* %0, %struct.hw_gpio_pin** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.hw_gpio_pin*, %struct.hw_gpio_pin** %3, align 8
  %7 = call %struct.hw_gpio* @FROM_HW_GPIO_PIN(%struct.hw_gpio_pin* %6)
  store %struct.hw_gpio* %7, %struct.hw_gpio** %5, align 8
  %8 = load %struct.hw_gpio*, %struct.hw_gpio** %5, align 8
  %9 = call i32 @store_registers(%struct.hw_gpio* %8)
  %10 = load %struct.hw_gpio*, %struct.hw_gpio** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i64 @dal_hw_gpio_config_mode(%struct.hw_gpio* %10, i32 %11)
  %13 = load i64, i64* @GPIO_RESULT_OK, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = load %struct.hw_gpio_pin*, %struct.hw_gpio_pin** %3, align 8
  %17 = getelementptr inbounds %struct.hw_gpio_pin, %struct.hw_gpio_pin* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.hw_gpio_pin*, %struct.hw_gpio_pin** %3, align 8
  %19 = getelementptr inbounds %struct.hw_gpio_pin, %struct.hw_gpio_pin* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  ret i32 %20
}

declare dso_local %struct.hw_gpio* @FROM_HW_GPIO_PIN(%struct.hw_gpio_pin*) #1

declare dso_local i32 @store_registers(%struct.hw_gpio*) #1

declare dso_local i64 @dal_hw_gpio_config_mode(%struct.hw_gpio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
