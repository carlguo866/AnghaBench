; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_mod_gadget.c_usbhsg_set_selfpowered.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_mod_gadget.c_usbhsg_set_selfpowered.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_gadget = type { i32 }
%struct.usbhsg_gpriv = type { i32 }

@USBHSG_STATUS_SELF_POWERED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_gadget*, i32)* @usbhsg_set_selfpowered to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbhsg_set_selfpowered(%struct.usb_gadget* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_gadget*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.usbhsg_gpriv*, align 8
  store %struct.usb_gadget* %0, %struct.usb_gadget** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.usb_gadget*, %struct.usb_gadget** %3, align 8
  %7 = call %struct.usbhsg_gpriv* @usbhsg_gadget_to_gpriv(%struct.usb_gadget* %6)
  store %struct.usbhsg_gpriv* %7, %struct.usbhsg_gpriv** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.usbhsg_gpriv*, %struct.usbhsg_gpriv** %5, align 8
  %12 = load i32, i32* @USBHSG_STATUS_SELF_POWERED, align 4
  %13 = call i32 @usbhsg_status_set(%struct.usbhsg_gpriv* %11, i32 %12)
  br label %18

14:                                               ; preds = %2
  %15 = load %struct.usbhsg_gpriv*, %struct.usbhsg_gpriv** %5, align 8
  %16 = load i32, i32* @USBHSG_STATUS_SELF_POWERED, align 4
  %17 = call i32 @usbhsg_status_clr(%struct.usbhsg_gpriv* %15, i32 %16)
  br label %18

18:                                               ; preds = %14, %10
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = load %struct.usb_gadget*, %struct.usb_gadget** %3, align 8
  %23 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  ret i32 0
}

declare dso_local %struct.usbhsg_gpriv* @usbhsg_gadget_to_gpriv(%struct.usb_gadget*) #1

declare dso_local i32 @usbhsg_status_set(%struct.usbhsg_gpriv*, i32) #1

declare dso_local i32 @usbhsg_status_clr(%struct.usbhsg_gpriv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
