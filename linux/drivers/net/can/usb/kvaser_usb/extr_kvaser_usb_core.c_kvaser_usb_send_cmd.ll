; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_core.c_kvaser_usb_send_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_core.c_kvaser_usb_send_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvaser_usb = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@KVASER_USB_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvaser_usb_send_cmd(%struct.kvaser_usb* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.kvaser_usb*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.kvaser_usb* %0, %struct.kvaser_usb** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.kvaser_usb*, %struct.kvaser_usb** %4, align 8
  %9 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.kvaser_usb*, %struct.kvaser_usb** %4, align 8
  %12 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.kvaser_usb*, %struct.kvaser_usb** %4, align 8
  %15 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @usb_sndbulkpipe(i32 %13, i32 %18)
  %20 = load i8*, i8** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @KVASER_USB_TIMEOUT, align 4
  %23 = call i32 @usb_bulk_msg(i32 %10, i32 %19, i8* %20, i32 %21, i32* %7, i32 %22)
  ret i32 %23
}

declare dso_local i32 @usb_bulk_msg(i32, i32, i8*, i32, i32*, i32) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
