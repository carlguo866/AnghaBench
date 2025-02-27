; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-hcd.c_ehci_get_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-hcd.c_ehci_get_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.ehci_hcd = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*)* @ehci_get_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehci_get_frame(%struct.usb_hcd* %0) #0 {
  %2 = alloca %struct.usb_hcd*, align 8
  %3 = alloca %struct.ehci_hcd*, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %2, align 8
  %4 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %5 = call %struct.ehci_hcd* @hcd_to_ehci(%struct.usb_hcd* %4)
  store %struct.ehci_hcd* %5, %struct.ehci_hcd** %3, align 8
  %6 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %7 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %8 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = call i32 @ehci_readl(%struct.ehci_hcd* %6, i32* %10)
  %12 = ashr i32 %11, 3
  %13 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %14 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = srem i32 %12, %15
  ret i32 %16
}

declare dso_local %struct.ehci_hcd* @hcd_to_ehci(%struct.usb_hcd*) #1

declare dso_local i32 @ehci_readl(%struct.ehci_hcd*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
