; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_hfa384x_usb.c_usbctlx_get_rridresult.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_hfa384x_usb.c_usbctlx_get_rridresult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfa384x_usb_rridresp = type { i32, i32, i32 }
%struct.hfa384x_rridresult = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfa384x_usb_rridresp*, %struct.hfa384x_rridresult*)* @usbctlx_get_rridresult to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usbctlx_get_rridresult(%struct.hfa384x_usb_rridresp* %0, %struct.hfa384x_rridresult* %1) #0 {
  %3 = alloca %struct.hfa384x_usb_rridresp*, align 8
  %4 = alloca %struct.hfa384x_rridresult*, align 8
  store %struct.hfa384x_usb_rridresp* %0, %struct.hfa384x_usb_rridresp** %3, align 8
  store %struct.hfa384x_rridresult* %1, %struct.hfa384x_rridresult** %4, align 8
  %5 = load %struct.hfa384x_usb_rridresp*, %struct.hfa384x_usb_rridresp** %3, align 8
  %6 = getelementptr inbounds %struct.hfa384x_usb_rridresp, %struct.hfa384x_usb_rridresp* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @le16_to_cpu(i32 %7)
  %9 = load %struct.hfa384x_rridresult*, %struct.hfa384x_rridresult** %4, align 8
  %10 = getelementptr inbounds %struct.hfa384x_rridresult, %struct.hfa384x_rridresult* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  %11 = load %struct.hfa384x_usb_rridresp*, %struct.hfa384x_usb_rridresp** %3, align 8
  %12 = getelementptr inbounds %struct.hfa384x_usb_rridresp, %struct.hfa384x_usb_rridresp* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.hfa384x_rridresult*, %struct.hfa384x_rridresult** %4, align 8
  %15 = getelementptr inbounds %struct.hfa384x_rridresult, %struct.hfa384x_rridresult* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 4
  %16 = load %struct.hfa384x_usb_rridresp*, %struct.hfa384x_usb_rridresp** %3, align 8
  %17 = getelementptr inbounds %struct.hfa384x_usb_rridresp, %struct.hfa384x_usb_rridresp* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @le16_to_cpu(i32 %18)
  %20 = sub nsw i32 %19, 1
  %21 = mul nsw i32 %20, 2
  %22 = load %struct.hfa384x_rridresult*, %struct.hfa384x_rridresult** %4, align 8
  %23 = getelementptr inbounds %struct.hfa384x_rridresult, %struct.hfa384x_rridresult* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  ret void
}

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
