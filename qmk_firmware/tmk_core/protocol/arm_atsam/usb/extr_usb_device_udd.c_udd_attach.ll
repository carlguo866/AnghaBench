; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/usb/extr_usb_device_udd.c_udd_attach.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/usb/extr_usb_device_udd.c_udd_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UDD_STATE_IDLE = common dso_local global i32 0, align 4
@usb_device = common dso_local global i32 0, align 4
@USB_DEVICE_CALLBACK_SUSPEND = common dso_local global i32 0, align 4
@_usb_on_suspend = common dso_local global i32 0, align 4
@USB_DEVICE_CALLBACK_SOF = common dso_local global i32 0, align 4
@_usb_on_sof_notify = common dso_local global i32 0, align 4
@USB_DEVICE_CALLBACK_RESET = common dso_local global i32 0, align 4
@_usb_on_bus_reset = common dso_local global i32 0, align 4
@USB_DEVICE_CALLBACK_WAKEUP = common dso_local global i32 0, align 4
@_usb_on_wakeup = common dso_local global i32 0, align 4
@USB_DEVICE_CALLBACK_LPMSUSP = common dso_local global i32 0, align 4
@_usb_device_lpm_suspend = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @udd_attach() #0 {
  %1 = load i32, i32* @UDD_STATE_IDLE, align 4
  %2 = call i32 @udd_sleep_mode(i32 %1)
  %3 = call i32 @usb_device_attach(i32* @usb_device)
  %4 = load i32, i32* @USB_DEVICE_CALLBACK_SUSPEND, align 4
  %5 = load i32, i32* @_usb_on_suspend, align 4
  %6 = call i32 @usb_device_register_callback(i32* @usb_device, i32 %4, i32 %5)
  %7 = load i32, i32* @USB_DEVICE_CALLBACK_SOF, align 4
  %8 = load i32, i32* @_usb_on_sof_notify, align 4
  %9 = call i32 @usb_device_register_callback(i32* @usb_device, i32 %7, i32 %8)
  %10 = load i32, i32* @USB_DEVICE_CALLBACK_RESET, align 4
  %11 = load i32, i32* @_usb_on_bus_reset, align 4
  %12 = call i32 @usb_device_register_callback(i32* @usb_device, i32 %10, i32 %11)
  %13 = load i32, i32* @USB_DEVICE_CALLBACK_WAKEUP, align 4
  %14 = load i32, i32* @_usb_on_wakeup, align 4
  %15 = call i32 @usb_device_register_callback(i32* @usb_device, i32 %13, i32 %14)
  %16 = load i32, i32* @USB_DEVICE_CALLBACK_SUSPEND, align 4
  %17 = call i32 @usb_device_enable_callback(i32* @usb_device, i32 %16)
  %18 = load i32, i32* @USB_DEVICE_CALLBACK_SOF, align 4
  %19 = call i32 @usb_device_enable_callback(i32* @usb_device, i32 %18)
  %20 = load i32, i32* @USB_DEVICE_CALLBACK_RESET, align 4
  %21 = call i32 @usb_device_enable_callback(i32* @usb_device, i32 %20)
  %22 = load i32, i32* @USB_DEVICE_CALLBACK_WAKEUP, align 4
  %23 = call i32 @usb_device_enable_callback(i32* @usb_device, i32 %22)
  ret void
}

declare dso_local i32 @udd_sleep_mode(i32) #1

declare dso_local i32 @usb_device_attach(i32*) #1

declare dso_local i32 @usb_device_register_callback(i32*, i32, i32) #1

declare dso_local i32 @usb_device_enable_callback(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
