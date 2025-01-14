; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-elo.c_elo_flush_smartset_responses.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-elo.c_elo_flush_smartset_responses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }

@ELO_FLUSH_SMARTSET_RESPONSES = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@USB_CTRL_SET_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*)* @elo_flush_smartset_responses to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elo_flush_smartset_responses(%struct.usb_device* %0) #0 {
  %2 = alloca %struct.usb_device*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %2, align 8
  %3 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %4 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %5 = call i32 @usb_sndctrlpipe(%struct.usb_device* %4, i32 0)
  %6 = load i32, i32* @ELO_FLUSH_SMARTSET_RESPONSES, align 4
  %7 = load i32, i32* @USB_DIR_OUT, align 4
  %8 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @USB_CTRL_SET_TIMEOUT, align 4
  %13 = call i32 @usb_control_msg(%struct.usb_device* %3, i32 %5, i32 %6, i32 %11, i32 0, i32 0, i32* null, i32 0, i32 %12)
  ret i32 %13
}

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.usb_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
