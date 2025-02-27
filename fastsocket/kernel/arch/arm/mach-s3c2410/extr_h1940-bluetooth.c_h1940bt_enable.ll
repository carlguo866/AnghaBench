; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-s3c2410/extr_h1940-bluetooth.c_h1940bt_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-s3c2410/extr_h1940-bluetooth.c_h1940bt_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@H1940_LATCH_BLUETOOTH_POWER = common dso_local global i32 0, align 4
@state = common dso_local global i32 0, align 4
@LED_HALF = common dso_local global i32 0, align 4
@bt_led_trigger = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @h1940bt_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @h1940bt_enable(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %14

5:                                                ; preds = %1
  %6 = load i32, i32* @H1940_LATCH_BLUETOOTH_POWER, align 4
  %7 = call i32 @h1940_latch_control(i32 0, i32 %6)
  %8 = call i32 @mdelay(i32 10)
  %9 = call i32 @S3C2410_GPH(i32 1)
  %10 = call i32 @s3c2410_gpio_setpin(i32 %9, i32 1)
  %11 = call i32 @mdelay(i32 10)
  %12 = call i32 @S3C2410_GPH(i32 1)
  %13 = call i32 @s3c2410_gpio_setpin(i32 %12, i32 0)
  store i32 1, i32* @state, align 4
  br label %23

14:                                               ; preds = %1
  %15 = call i32 @S3C2410_GPH(i32 1)
  %16 = call i32 @s3c2410_gpio_setpin(i32 %15, i32 1)
  %17 = call i32 @mdelay(i32 10)
  %18 = call i32 @S3C2410_GPH(i32 1)
  %19 = call i32 @s3c2410_gpio_setpin(i32 %18, i32 0)
  %20 = call i32 @mdelay(i32 10)
  %21 = load i32, i32* @H1940_LATCH_BLUETOOTH_POWER, align 4
  %22 = call i32 @h1940_latch_control(i32 %21, i32 0)
  store i32 0, i32* @state, align 4
  br label %23

23:                                               ; preds = %14, %5
  ret void
}

declare dso_local i32 @h1940_latch_control(i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @s3c2410_gpio_setpin(i32, i32) #1

declare dso_local i32 @S3C2410_GPH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
