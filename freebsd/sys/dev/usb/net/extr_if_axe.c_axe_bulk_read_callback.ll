; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_axe.c_axe_bulk_read_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_axe.c_axe_bulk_read_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.axe_softc = type { %struct.usb_ether }
%struct.usb_ether = type { i32 }
%struct.usb_page_cache = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"bulk read error, %s\0A\00", align 1
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @axe_bulk_read_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @axe_bulk_read_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.axe_softc*, align 8
  %6 = alloca %struct.usb_ether*, align 8
  %7 = alloca %struct.usb_page_cache*, align 8
  %8 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %10 = call %struct.axe_softc* @usbd_xfer_softc(%struct.usb_xfer* %9)
  store %struct.axe_softc* %10, %struct.axe_softc** %5, align 8
  %11 = load %struct.axe_softc*, %struct.axe_softc** %5, align 8
  %12 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %11, i32 0, i32 0
  store %struct.usb_ether* %12, %struct.usb_ether** %6, align 8
  %13 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %14 = call i32 @usbd_xfer_status(%struct.usb_xfer* %13, i32* %8, i32* null, i32* null, i32* null)
  %15 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %16 = call i32 @USB_GET_STATE(%struct.usb_xfer* %15)
  switch i32 %16, label %34 [
    i32 128, label %17
    i32 129, label %24
  ]

17:                                               ; preds = %2
  %18 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %19 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %18, i32 0)
  store %struct.usb_page_cache* %19, %struct.usb_page_cache** %7, align 8
  %20 = load %struct.usb_ether*, %struct.usb_ether** %6, align 8
  %21 = load %struct.usb_page_cache*, %struct.usb_page_cache** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @axe_rx_frame(%struct.usb_ether* %20, %struct.usb_page_cache* %21, i32 %22)
  br label %24

24:                                               ; preds = %2, %17
  br label %25

25:                                               ; preds = %41, %24
  %26 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %27 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %28 = call i32 @usbd_xfer_max_len(%struct.usb_xfer* %27)
  %29 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %26, i32 0, i32 %28)
  %30 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %31 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %30)
  %32 = load %struct.usb_ether*, %struct.usb_ether** %6, align 8
  %33 = call i32 @uether_rxflush(%struct.usb_ether* %32)
  br label %45

34:                                               ; preds = %2
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @usbd_errstr(i32 %35)
  %37 = call i32 @DPRINTF(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %43 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %42)
  br label %25

44:                                               ; preds = %34
  br label %45

45:                                               ; preds = %44, %25
  ret void
}

declare dso_local %struct.axe_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_status(%struct.usb_xfer*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer*, i32) #1

declare dso_local i32 @axe_rx_frame(%struct.usb_ether*, %struct.usb_page_cache*, i32) #1

declare dso_local i32 @usbd_xfer_set_frame_len(%struct.usb_xfer*, i32, i32) #1

declare dso_local i32 @usbd_xfer_max_len(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_transfer_submit(%struct.usb_xfer*) #1

declare dso_local i32 @uether_rxflush(%struct.usb_ether*) #1

declare dso_local i32 @DPRINTF(i8*, i32) #1

declare dso_local i32 @usbd_errstr(i32) #1

declare dso_local i32 @usbd_xfer_set_stall(%struct.usb_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
