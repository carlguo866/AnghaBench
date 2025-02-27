; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-wmi.c_asus_wmi_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-wmi.c_asus_wmi_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.asus_wmi = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @asus_wmi_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asus_wmi_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.asus_wmi*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.asus_wmi* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.asus_wmi* %5, %struct.asus_wmi** %3, align 8
  %6 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %7 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @wmi_remove_notify_handler(i32 %10)
  %12 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %13 = call i32 @asus_wmi_backlight_exit(%struct.asus_wmi* %12)
  %14 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %15 = call i32 @asus_wmi_input_exit(%struct.asus_wmi* %14)
  %16 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %17 = call i32 @asus_wmi_led_exit(%struct.asus_wmi* %16)
  %18 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %19 = call i32 @asus_wmi_rfkill_exit(%struct.asus_wmi* %18)
  %20 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %21 = call i32 @asus_wmi_debugfs_exit(%struct.asus_wmi* %20)
  %22 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %23 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @asus_wmi_sysfs_exit(i32 %24)
  %26 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %27 = call i32 @asus_fan_set_auto(%struct.asus_wmi* %26)
  %28 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %29 = call i32 @asus_wmi_battery_exit(%struct.asus_wmi* %28)
  %30 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %31 = call i32 @kfree(%struct.asus_wmi* %30)
  ret i32 0
}

declare dso_local %struct.asus_wmi* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @wmi_remove_notify_handler(i32) #1

declare dso_local i32 @asus_wmi_backlight_exit(%struct.asus_wmi*) #1

declare dso_local i32 @asus_wmi_input_exit(%struct.asus_wmi*) #1

declare dso_local i32 @asus_wmi_led_exit(%struct.asus_wmi*) #1

declare dso_local i32 @asus_wmi_rfkill_exit(%struct.asus_wmi*) #1

declare dso_local i32 @asus_wmi_debugfs_exit(%struct.asus_wmi*) #1

declare dso_local i32 @asus_wmi_sysfs_exit(i32) #1

declare dso_local i32 @asus_fan_set_auto(%struct.asus_wmi*) #1

declare dso_local i32 @asus_wmi_battery_exit(%struct.asus_wmi*) #1

declare dso_local i32 @kfree(%struct.asus_wmi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
