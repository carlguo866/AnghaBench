; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_esd_usb2.c_esd_usb2_send_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_esd_usb2.c_esd_usb2_send_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esd_usb2 = type { i32 }
%struct.esd_usb2_msg = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.esd_usb2*, %struct.esd_usb2_msg*)* @esd_usb2_send_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esd_usb2_send_msg(%struct.esd_usb2* %0, %struct.esd_usb2_msg* %1) #0 {
  %3 = alloca %struct.esd_usb2*, align 8
  %4 = alloca %struct.esd_usb2_msg*, align 8
  %5 = alloca i32, align 4
  store %struct.esd_usb2* %0, %struct.esd_usb2** %3, align 8
  store %struct.esd_usb2_msg* %1, %struct.esd_usb2_msg** %4, align 8
  %6 = load %struct.esd_usb2*, %struct.esd_usb2** %3, align 8
  %7 = getelementptr inbounds %struct.esd_usb2, %struct.esd_usb2* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.esd_usb2*, %struct.esd_usb2** %3, align 8
  %10 = getelementptr inbounds %struct.esd_usb2, %struct.esd_usb2* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @usb_sndbulkpipe(i32 %11, i32 2)
  %13 = load %struct.esd_usb2_msg*, %struct.esd_usb2_msg** %4, align 8
  %14 = load %struct.esd_usb2_msg*, %struct.esd_usb2_msg** %4, align 8
  %15 = getelementptr inbounds %struct.esd_usb2_msg, %struct.esd_usb2_msg* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = shl i32 %18, 2
  %20 = call i32 @usb_bulk_msg(i32 %8, i32 %12, %struct.esd_usb2_msg* %13, i32 %19, i32* %5, i32 1000)
  ret i32 %20
}

declare dso_local i32 @usb_bulk_msg(i32, i32, %struct.esd_usb2_msg*, i32, i32*, i32) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
