; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci.c_xhci_all_ports_seen_u0.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci.c_xhci_all_ports_seen_u0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xhci_hcd*)* @xhci_all_ports_seen_u0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xhci_all_ports_seen_u0(%struct.xhci_hcd* %0) #0 {
  %2 = alloca %struct.xhci_hcd*, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %2, align 8
  %3 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %4 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %7 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = shl i32 1, %8
  %10 = sub nsw i32 %9, 1
  %11 = icmp eq i32 %5, %10
  %12 = zext i1 %11 to i32
  ret i32 %12
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
