; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-max77693.c_max77693_clear_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-max77693.c_max77693_clear_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max77693_led_device = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max77693_led_device*, i32)* @max77693_clear_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77693_clear_mode(%struct.max77693_led_device* %0, i32 %1) #0 {
  %3 = alloca %struct.max77693_led_device*, align 8
  %4 = alloca i32, align 4
  store %struct.max77693_led_device* %0, %struct.max77693_led_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.max77693_led_device*, %struct.max77693_led_device** %3, align 8
  %6 = getelementptr inbounds %struct.max77693_led_device, %struct.max77693_led_device* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = shl i32 %10, 1
  %12 = load i32, i32* %4, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %4, align 4
  br label %14

14:                                               ; preds = %9, %2
  %15 = load i32, i32* %4, align 4
  %16 = xor i32 %15, -1
  %17 = load %struct.max77693_led_device*, %struct.max77693_led_device** %3, align 8
  %18 = getelementptr inbounds %struct.max77693_led_device, %struct.max77693_led_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = and i32 %19, %16
  store i32 %20, i32* %18, align 8
  %21 = load %struct.max77693_led_device*, %struct.max77693_led_device** %3, align 8
  %22 = load %struct.max77693_led_device*, %struct.max77693_led_device** %3, align 8
  %23 = getelementptr inbounds %struct.max77693_led_device, %struct.max77693_led_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @max77693_set_mode_reg(%struct.max77693_led_device* %21, i32 %24)
  ret i32 %25
}

declare dso_local i32 @max77693_set_mode_reg(%struct.max77693_led_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
