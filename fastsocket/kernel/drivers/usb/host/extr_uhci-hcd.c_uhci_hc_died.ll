; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_uhci-hcd.c_uhci_hc_died.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_uhci-hcd.c_uhci_hc_died.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uhci_hcd = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uhci_hcd*)* @uhci_hc_died to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uhci_hc_died(%struct.uhci_hcd* %0) #0 {
  %2 = alloca %struct.uhci_hcd*, align 8
  store %struct.uhci_hcd* %0, %struct.uhci_hcd** %2, align 8
  %3 = load %struct.uhci_hcd*, %struct.uhci_hcd** %2, align 8
  %4 = call i32 @uhci_get_current_frame_number(%struct.uhci_hcd* %3)
  %5 = load %struct.uhci_hcd*, %struct.uhci_hcd** %2, align 8
  %6 = call i32 @uhci_dev(%struct.uhci_hcd* %5)
  %7 = call i32 @to_pci_dev(i32 %6)
  %8 = load %struct.uhci_hcd*, %struct.uhci_hcd** %2, align 8
  %9 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @uhci_reset_hc(i32 %7, i32 %10)
  %12 = load %struct.uhci_hcd*, %struct.uhci_hcd** %2, align 8
  %13 = call i32 @finish_reset(%struct.uhci_hcd* %12)
  %14 = load %struct.uhci_hcd*, %struct.uhci_hcd** %2, align 8
  %15 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %14, i32 0, i32 0
  store i32 1, i32* %15, align 4
  %16 = load %struct.uhci_hcd*, %struct.uhci_hcd** %2, align 8
  %17 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 4
  ret void
}

declare dso_local i32 @uhci_get_current_frame_number(%struct.uhci_hcd*) #1

declare dso_local i32 @uhci_reset_hc(i32, i32) #1

declare dso_local i32 @to_pci_dev(i32) #1

declare dso_local i32 @uhci_dev(%struct.uhci_hcd*) #1

declare dso_local i32 @finish_reset(%struct.uhci_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
