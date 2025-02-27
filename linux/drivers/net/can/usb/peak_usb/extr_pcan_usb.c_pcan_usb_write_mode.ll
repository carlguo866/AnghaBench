; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/peak_usb/extr_pcan_usb.c_pcan_usb_write_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/peak_usb/extr_pcan_usb.c_pcan_usb_write_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.peak_usb_device = type { i32 }

@SJA1000_MODE_INIT = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@PCAN_USB_STARTUP_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.peak_usb_device*, i32)* @pcan_usb_write_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcan_usb_write_mode(%struct.peak_usb_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.peak_usb_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.peak_usb_device* %0, %struct.peak_usb_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.peak_usb_device*, %struct.peak_usb_device** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @pcan_usb_set_bus(%struct.peak_usb_device* %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %29

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = load %struct.peak_usb_device*, %struct.peak_usb_device** %4, align 8
  %19 = load i32, i32* @SJA1000_MODE_INIT, align 4
  %20 = call i32 @pcan_usb_set_sja1000(%struct.peak_usb_device* %18, i32 %19)
  store i32 %20, i32* %6, align 4
  br label %27

21:                                               ; preds = %14
  %22 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %23 = call i32 @set_current_state(i32 %22)
  %24 = load i32, i32* @PCAN_USB_STARTUP_TIMEOUT, align 4
  %25 = call i32 @msecs_to_jiffies(i32 %24)
  %26 = call i32 @schedule_timeout(i32 %25)
  br label %27

27:                                               ; preds = %21, %17
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %27, %12
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @pcan_usb_set_bus(%struct.peak_usb_device*, i32) #1

declare dso_local i32 @pcan_usb_set_sja1000(%struct.peak_usb_device*, i32) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @schedule_timeout(i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
