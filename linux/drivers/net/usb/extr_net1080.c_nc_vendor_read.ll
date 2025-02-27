; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_net1080.c_nc_vendor_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_net1080.c_nc_vendor_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32 }

@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*, i32, i32, i32*)* @nc_vendor_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nc_vendor_read(%struct.usbnet* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.usbnet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %10 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @USB_DIR_IN, align 4
  %13 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* %7, align 4
  %18 = load i32*, i32** %8, align 8
  %19 = call i32 @usbnet_read_cmd(%struct.usbnet* %10, i32 %11, i32 %16, i32 0, i32 %17, i32* %18, i32 4)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %22, %4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i32*, i32** %8, align 8
  %28 = call i32 @le16_to_cpus(i32* %27)
  br label %29

29:                                               ; preds = %26, %23
  %30 = load i32, i32* %9, align 4
  ret i32 %30
}

declare dso_local i32 @usbnet_read_cmd(%struct.usbnet*, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @le16_to_cpus(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
