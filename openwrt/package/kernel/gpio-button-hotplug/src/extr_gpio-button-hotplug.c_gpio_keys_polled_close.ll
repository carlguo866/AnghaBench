; ModuleID = '/home/carl/AnghaBench/openwrt/package/kernel/gpio-button-hotplug/src/extr_gpio-button-hotplug.c_gpio_keys_polled_close.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/kernel/gpio-button-hotplug/src/extr_gpio-button-hotplug.c_gpio_keys_polled_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_keys_button_dev = type { i32, i32, %struct.gpio_keys_platform_data* }
%struct.gpio_keys_platform_data = type { i32 (i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_keys_button_dev*)* @gpio_keys_polled_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gpio_keys_polled_close(%struct.gpio_keys_button_dev* %0) #0 {
  %2 = alloca %struct.gpio_keys_button_dev*, align 8
  %3 = alloca %struct.gpio_keys_platform_data*, align 8
  store %struct.gpio_keys_button_dev* %0, %struct.gpio_keys_button_dev** %2, align 8
  %4 = load %struct.gpio_keys_button_dev*, %struct.gpio_keys_button_dev** %2, align 8
  %5 = getelementptr inbounds %struct.gpio_keys_button_dev, %struct.gpio_keys_button_dev* %4, i32 0, i32 2
  %6 = load %struct.gpio_keys_platform_data*, %struct.gpio_keys_platform_data** %5, align 8
  store %struct.gpio_keys_platform_data* %6, %struct.gpio_keys_platform_data** %3, align 8
  %7 = load %struct.gpio_keys_button_dev*, %struct.gpio_keys_button_dev** %2, align 8
  %8 = getelementptr inbounds %struct.gpio_keys_button_dev, %struct.gpio_keys_button_dev* %7, i32 0, i32 1
  %9 = call i32 @cancel_delayed_work_sync(i32* %8)
  %10 = load %struct.gpio_keys_platform_data*, %struct.gpio_keys_platform_data** %3, align 8
  %11 = getelementptr inbounds %struct.gpio_keys_platform_data, %struct.gpio_keys_platform_data* %10, i32 0, i32 0
  %12 = load i32 (i32)*, i32 (i32)** %11, align 8
  %13 = icmp ne i32 (i32)* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load %struct.gpio_keys_platform_data*, %struct.gpio_keys_platform_data** %3, align 8
  %16 = getelementptr inbounds %struct.gpio_keys_platform_data, %struct.gpio_keys_platform_data* %15, i32 0, i32 0
  %17 = load i32 (i32)*, i32 (i32)** %16, align 8
  %18 = load %struct.gpio_keys_button_dev*, %struct.gpio_keys_button_dev** %2, align 8
  %19 = getelementptr inbounds %struct.gpio_keys_button_dev, %struct.gpio_keys_button_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 %17(i32 %20)
  br label %22

22:                                               ; preds = %14, %1
  ret void
}

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
