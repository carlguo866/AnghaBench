; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_sierra.c_sierra_stop_rx_urbs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_sierra.c_sierra_stop_rx_urbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { i32 }
%struct.sierra_port_private = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_serial_port*)* @sierra_stop_rx_urbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sierra_stop_rx_urbs(%struct.usb_serial_port* %0) #0 {
  %2 = alloca %struct.usb_serial_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sierra_port_private*, align 8
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %2, align 8
  %5 = load %struct.usb_serial_port*, %struct.usb_serial_port** %2, align 8
  %6 = call %struct.sierra_port_private* @usb_get_serial_port_data(%struct.usb_serial_port* %5)
  store %struct.sierra_port_private* %6, %struct.sierra_port_private** %4, align 8
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %22, %1
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.sierra_port_private*, %struct.sierra_port_private** %4, align 8
  %10 = getelementptr inbounds %struct.sierra_port_private, %struct.sierra_port_private* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %25

13:                                               ; preds = %7
  %14 = load %struct.sierra_port_private*, %struct.sierra_port_private** %4, align 8
  %15 = getelementptr inbounds %struct.sierra_port_private, %struct.sierra_port_private* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @usb_kill_urb(i32 %20)
  br label %22

22:                                               ; preds = %13
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %3, align 4
  br label %7

25:                                               ; preds = %7
  %26 = load %struct.usb_serial_port*, %struct.usb_serial_port** %2, align 8
  %27 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @usb_kill_urb(i32 %28)
  ret void
}

declare dso_local %struct.sierra_port_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @usb_kill_urb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
