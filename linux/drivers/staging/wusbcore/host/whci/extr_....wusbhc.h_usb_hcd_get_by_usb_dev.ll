; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wusbcore/host/whci/extr_....wusbhc.h_usb_hcd_get_by_usb_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wusbcore/host/whci/extr_....wusbhc.h_usb_hcd_get_by_usb_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.usb_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.usb_hcd* (%struct.usb_device*)* @usb_hcd_get_by_usb_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.usb_hcd* @usb_hcd_get_by_usb_dev(%struct.usb_device* %0) #0 {
  %2 = alloca %struct.usb_device*, align 8
  %3 = alloca %struct.usb_hcd*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %2, align 8
  %4 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %5 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.usb_hcd* @bus_to_hcd(i32 %6)
  store %struct.usb_hcd* %7, %struct.usb_hcd** %3, align 8
  %8 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %9 = call %struct.usb_hcd* @usb_get_hcd(%struct.usb_hcd* %8)
  ret %struct.usb_hcd* %9
}

declare dso_local %struct.usb_hcd* @bus_to_hcd(i32) #1

declare dso_local %struct.usb_hcd* @usb_get_hcd(%struct.usb_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
