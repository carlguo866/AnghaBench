; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_transfer.c_usbd_xfer_set_flag.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_transfer.c_usbd_xfer_set_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usbd_xfer_set_flag(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %22 [
    i32 131, label %6
    i32 128, label %10
    i32 129, label %14
    i32 130, label %18
  ]

6:                                                ; preds = %2
  %7 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %8 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store i32 1, i32* %9, align 4
  br label %22

10:                                               ; preds = %2
  %11 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %12 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  store i32 1, i32* %13, align 4
  br label %22

14:                                               ; preds = %2
  %15 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %16 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  store i32 1, i32* %17, align 4
  br label %22

18:                                               ; preds = %2
  %19 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %20 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 3
  store i32 1, i32* %21, align 4
  br label %22

22:                                               ; preds = %2, %18, %14, %10, %6
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
