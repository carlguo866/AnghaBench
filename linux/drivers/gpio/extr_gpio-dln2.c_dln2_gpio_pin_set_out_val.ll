; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-dln2.c_dln2_gpio_pin_set_out_val.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-dln2.c_dln2_gpio_pin_set_out_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dln2_gpio = type { i32 }
%struct.dln2_gpio_pin_val = type { i32, i32 }

@DLN2_GPIO_PIN_SET_OUT_VAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dln2_gpio*, i32, i32)* @dln2_gpio_pin_set_out_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dln2_gpio_pin_set_out_val(%struct.dln2_gpio* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dln2_gpio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dln2_gpio_pin_val, align 4
  store %struct.dln2_gpio* %0, %struct.dln2_gpio** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = getelementptr inbounds %struct.dln2_gpio_pin_val, %struct.dln2_gpio_pin_val* %7, i32 0, i32 0
  %9 = load i32, i32* %6, align 4
  store i32 %9, i32* %8, align 4
  %10 = getelementptr inbounds %struct.dln2_gpio_pin_val, %struct.dln2_gpio_pin_val* %7, i32 0, i32 1
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @cpu_to_le16(i32 %11)
  store i32 %12, i32* %10, align 4
  %13 = load %struct.dln2_gpio*, %struct.dln2_gpio** %4, align 8
  %14 = getelementptr inbounds %struct.dln2_gpio, %struct.dln2_gpio* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @DLN2_GPIO_PIN_SET_OUT_VAL, align 4
  %17 = call i32 @dln2_transfer_tx(i32 %15, i32 %16, %struct.dln2_gpio_pin_val* %7, i32 8)
  ret i32 %17
}

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @dln2_transfer_tx(i32, i32, %struct.dln2_gpio_pin_val*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
