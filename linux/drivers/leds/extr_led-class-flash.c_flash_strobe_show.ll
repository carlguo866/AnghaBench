; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_led-class-flash.c_flash_strobe_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_led-class-flash.c_flash_strobe_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.led_classdev = type { i32 }
%struct.led_classdev_flash = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @flash_strobe_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flash_strobe_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.led_classdev*, align 8
  %9 = alloca %struct.led_classdev_flash*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call %struct.led_classdev* @dev_get_drvdata(%struct.device* %12)
  store %struct.led_classdev* %13, %struct.led_classdev** %8, align 8
  %14 = load %struct.led_classdev*, %struct.led_classdev** %8, align 8
  %15 = call %struct.led_classdev_flash* @lcdev_to_flcdev(%struct.led_classdev* %14)
  store %struct.led_classdev_flash* %15, %struct.led_classdev_flash** %9, align 8
  %16 = load %struct.led_classdev_flash*, %struct.led_classdev_flash** %9, align 8
  %17 = call i32 @led_get_flash_strobe(%struct.led_classdev_flash* %16, i32* %10)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %11, align 4
  store i32 %21, i32* %4, align 4
  br label %26

22:                                               ; preds = %3
  %23 = load i8*, i8** %7, align 8
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @sprintf(i8* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %24)
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %22, %20
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local %struct.led_classdev* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.led_classdev_flash* @lcdev_to_flcdev(%struct.led_classdev*) #1

declare dso_local i32 @led_get_flash_strobe(%struct.led_classdev_flash*, i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
