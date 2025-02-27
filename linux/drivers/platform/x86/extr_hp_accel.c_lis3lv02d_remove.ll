; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_hp_accel.c_lis3lv02d_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_hp_accel.c_lis3lv02d_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.acpi_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@hp_accel_i8042_filter = common dso_local global i32 0, align 4
@lis3_dev = common dso_local global i32 0, align 4
@hpled_led = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*)* @lis3lv02d_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lis3lv02d_remove(%struct.acpi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_device*, align 8
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  %4 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %5 = icmp ne %struct.acpi_device* %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* @EINVAL, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %2, align 4
  br label %17

9:                                                ; preds = %1
  %10 = load i32, i32* @hp_accel_i8042_filter, align 4
  %11 = call i32 @i8042_remove_filter(i32 %10)
  %12 = call i32 @lis3lv02d_joystick_disable(i32* @lis3_dev)
  %13 = call i32 @lis3lv02d_poweroff(i32* @lis3_dev)
  %14 = call i32 @led_classdev_unregister(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hpled_led, i32 0, i32 1))
  %15 = call i32 @flush_work(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hpled_led, i32 0, i32 0))
  %16 = call i32 @lis3lv02d_remove_fs(i32* @lis3_dev)
  store i32 %16, i32* %2, align 4
  br label %17

17:                                               ; preds = %9, %6
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

declare dso_local i32 @i8042_remove_filter(i32) #1

declare dso_local i32 @lis3lv02d_joystick_disable(i32*) #1

declare dso_local i32 @lis3lv02d_poweroff(i32*) #1

declare dso_local i32 @led_classdev_unregister(i32*) #1

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @lis3lv02d_remove_fs(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
