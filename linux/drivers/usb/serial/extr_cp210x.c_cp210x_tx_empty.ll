; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_cp210x.c_cp210x_tx_empty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_cp210x.c_cp210x_tx_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial_port*)* @cp210x_tx_empty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp210x_tx_empty(%struct.usb_serial_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_serial_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %3, align 8
  %6 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %7 = call i32 @cp210x_get_tx_queue_byte_count(%struct.usb_serial_port* %6, i32* %5)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %16

11:                                               ; preds = %1
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %2, align 4
  br label %16

16:                                               ; preds = %11, %10
  %17 = load i32, i32* %2, align 4
  ret i32 %17
}

declare dso_local i32 @cp210x_get_tx_queue_byte_count(%struct.usb_serial_port*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
