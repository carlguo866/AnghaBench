; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_mod_gadget.c_usbhsg_ep_free_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_mod_gadget.c_usbhsg_ep_free_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { i32 }
%struct.usb_request = type { i32 }
%struct.usbhsg_request = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ep*, %struct.usb_request*)* @usbhsg_ep_free_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usbhsg_ep_free_request(%struct.usb_ep* %0, %struct.usb_request* %1) #0 {
  %3 = alloca %struct.usb_ep*, align 8
  %4 = alloca %struct.usb_request*, align 8
  %5 = alloca %struct.usbhsg_request*, align 8
  store %struct.usb_ep* %0, %struct.usb_ep** %3, align 8
  store %struct.usb_request* %1, %struct.usb_request** %4, align 8
  %6 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %7 = call %struct.usbhsg_request* @usbhsg_req_to_ureq(%struct.usb_request* %6)
  store %struct.usbhsg_request* %7, %struct.usbhsg_request** %5, align 8
  %8 = load %struct.usbhsg_request*, %struct.usbhsg_request** %5, align 8
  %9 = getelementptr inbounds %struct.usbhsg_request, %struct.usbhsg_request* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = call i32 @list_empty(i32* %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @WARN_ON(i32 %14)
  %16 = load %struct.usbhsg_request*, %struct.usbhsg_request** %5, align 8
  %17 = call i32 @kfree(%struct.usbhsg_request* %16)
  ret void
}

declare dso_local %struct.usbhsg_request* @usbhsg_req_to_ureq(%struct.usb_request*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @kfree(%struct.usbhsg_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
