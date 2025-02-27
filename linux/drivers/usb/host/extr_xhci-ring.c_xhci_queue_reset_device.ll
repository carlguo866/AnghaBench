; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_xhci_queue_reset_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_xhci_queue_reset_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32 }
%struct.xhci_command = type { i32 }

@TRB_RESET_DEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xhci_queue_reset_device(%struct.xhci_hcd* %0, %struct.xhci_command* %1, i32 %2) #0 {
  %4 = alloca %struct.xhci_hcd*, align 8
  %5 = alloca %struct.xhci_command*, align 8
  %6 = alloca i32, align 4
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %4, align 8
  store %struct.xhci_command* %1, %struct.xhci_command** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %8 = load %struct.xhci_command*, %struct.xhci_command** %5, align 8
  %9 = load i32, i32* @TRB_RESET_DEV, align 4
  %10 = call i32 @TRB_TYPE(i32 %9)
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @SLOT_ID_FOR_TRB(i32 %11)
  %13 = or i32 %10, %12
  %14 = call i32 @queue_command(%struct.xhci_hcd* %7, %struct.xhci_command* %8, i32 0, i32 0, i32 0, i32 %13, i32 0)
  ret i32 %14
}

declare dso_local i32 @queue_command(%struct.xhci_hcd*, %struct.xhci_command*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @TRB_TYPE(i32) #1

declare dso_local i32 @SLOT_ID_FOR_TRB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
