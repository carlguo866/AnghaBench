; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_xhci_pci.c_xhci_interrupt_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_xhci_pci.c_xhci_interrupt_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_softc = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @xhci_interrupt_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xhci_interrupt_poll(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.xhci_softc*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.xhci_softc*
  store %struct.xhci_softc* %5, %struct.xhci_softc** %3, align 8
  %6 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %7 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %6, i32 0, i32 1
  %8 = call i32 @USB_BUS_UNLOCK(i32* %7)
  %9 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %10 = call i32 @xhci_interrupt(%struct.xhci_softc* %9)
  %11 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %12 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %11, i32 0, i32 1
  %13 = call i32 @USB_BUS_LOCK(i32* %12)
  %14 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %15 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %14, i32 0, i32 0
  %16 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %17 = call i32 @usb_callout_reset(i32* %15, i32 1, i8* bitcast (void (i8*)* @xhci_interrupt_poll to i8*), %struct.xhci_softc* %16)
  ret void
}

declare dso_local i32 @USB_BUS_UNLOCK(i32*) #1

declare dso_local i32 @xhci_interrupt(%struct.xhci_softc*) #1

declare dso_local i32 @USB_BUS_LOCK(i32*) #1

declare dso_local i32 @usb_callout_reset(i32*, i32, i8*, %struct.xhci_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
