; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_wishbone-serial.c_wishbone_serial_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_wishbone-serial.c_wishbone_serial_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }
%struct.usb_serial_port = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"Could not mark device as open (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.usb_serial_port*)* @wishbone_serial_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wishbone_serial_open(%struct.tty_struct* %0, %struct.usb_serial_port* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.usb_serial_port*, align 8
  %6 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store %struct.usb_serial_port* %1, %struct.usb_serial_port** %5, align 8
  %7 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %8 = call i32 @usb_gsi_openclose(%struct.usb_serial_port* %7, i32 1)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %2
  %12 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %13 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @dev_err(i32* %17, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %32

21:                                               ; preds = %2
  %22 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %23 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %24 = call i32 @usb_serial_generic_open(%struct.tty_struct* %22, %struct.usb_serial_port* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %29 = call i32 @usb_gsi_openclose(%struct.usb_serial_port* %28, i32 0)
  br label %30

30:                                               ; preds = %27, %21
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %30, %11
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @usb_gsi_openclose(%struct.usb_serial_port*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @usb_serial_generic_open(%struct.tty_struct*, %struct.usb_serial_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
