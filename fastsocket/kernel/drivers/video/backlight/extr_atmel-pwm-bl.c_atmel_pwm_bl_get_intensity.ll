; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/backlight/extr_atmel-pwm-bl.c_atmel_pwm_bl_get_intensity.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/backlight/extr_atmel-pwm-bl.c_atmel_pwm_bl_get_intensity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_device = type { i32 }
%struct.atmel_pwm_bl = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i64 }

@PWM_CDTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.backlight_device*)* @atmel_pwm_bl_get_intensity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_pwm_bl_get_intensity(%struct.backlight_device* %0) #0 {
  %2 = alloca %struct.backlight_device*, align 8
  %3 = alloca %struct.atmel_pwm_bl*, align 8
  %4 = alloca i32, align 4
  store %struct.backlight_device* %0, %struct.backlight_device** %2, align 8
  %5 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %6 = call %struct.atmel_pwm_bl* @bl_get_data(%struct.backlight_device* %5)
  store %struct.atmel_pwm_bl* %6, %struct.atmel_pwm_bl** %3, align 8
  %7 = load %struct.atmel_pwm_bl*, %struct.atmel_pwm_bl** %3, align 8
  %8 = getelementptr inbounds %struct.atmel_pwm_bl, %struct.atmel_pwm_bl* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %1
  %14 = load %struct.atmel_pwm_bl*, %struct.atmel_pwm_bl** %3, align 8
  %15 = getelementptr inbounds %struct.atmel_pwm_bl, %struct.atmel_pwm_bl* %14, i32 0, i32 0
  %16 = load i32, i32* @PWM_CDTY, align 4
  %17 = call i32 @pwm_channel_readl(i32* %15, i32 %16)
  %18 = load %struct.atmel_pwm_bl*, %struct.atmel_pwm_bl** %3, align 8
  %19 = getelementptr inbounds %struct.atmel_pwm_bl, %struct.atmel_pwm_bl* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sub nsw i32 %17, %22
  store i32 %23, i32* %4, align 4
  br label %35

24:                                               ; preds = %1
  %25 = load %struct.atmel_pwm_bl*, %struct.atmel_pwm_bl** %3, align 8
  %26 = getelementptr inbounds %struct.atmel_pwm_bl, %struct.atmel_pwm_bl* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.atmel_pwm_bl*, %struct.atmel_pwm_bl** %3, align 8
  %31 = getelementptr inbounds %struct.atmel_pwm_bl, %struct.atmel_pwm_bl* %30, i32 0, i32 0
  %32 = load i32, i32* @PWM_CDTY, align 4
  %33 = call i32 @pwm_channel_readl(i32* %31, i32 %32)
  %34 = sub nsw i32 %29, %33
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %24, %13
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local %struct.atmel_pwm_bl* @bl_get_data(%struct.backlight_device*) #1

declare dso_local i32 @pwm_channel_readl(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
