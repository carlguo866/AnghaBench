; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cxusb.c_cxusb_bluebird_gpio_pulse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cxusb.c_cxusb_bluebird_gpio_pulse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dvb_usb_device*, i32, i32)* @cxusb_bluebird_gpio_pulse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxusb_bluebird_gpio_pulse(%struct.dvb_usb_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dvb_usb_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %14

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  br label %14

14:                                               ; preds = %12, %11
  %15 = phi i32 [ 0, %11 ], [ %13, %12 ]
  %16 = call i32 @cxusb_bluebird_gpio_rw(%struct.dvb_usb_device* %7, i32 %8, i32 %15)
  %17 = call i32 @msleep(i32 5)
  %18 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = load i32, i32* %5, align 4
  br label %25

24:                                               ; preds = %14
  br label %25

25:                                               ; preds = %24, %22
  %26 = phi i32 [ %23, %22 ], [ 0, %24 ]
  %27 = call i32 @cxusb_bluebird_gpio_rw(%struct.dvb_usb_device* %18, i32 %19, i32 %26)
  ret void
}

declare dso_local i32 @cxusb_bluebird_gpio_rw(%struct.dvb_usb_device*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
