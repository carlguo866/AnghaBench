; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_cdc_ether.c_cdc_bind.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_cdc_ether.c_cdc_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32 }
%struct.usb_interface = type { i32 }
%struct.cdc_state = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*, %struct.usb_interface*)* @cdc_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdc_bind(%struct.usbnet* %0, %struct.usb_interface* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usbnet*, align 8
  %5 = alloca %struct.usb_interface*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdc_state*, align 8
  store %struct.usbnet* %0, %struct.usbnet** %4, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %5, align 8
  %8 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %9 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %8, i32 0, i32 0
  %10 = bitcast i32* %9 to i8*
  %11 = bitcast i8* %10 to %struct.cdc_state*
  store %struct.cdc_state* %11, %struct.cdc_state** %7, align 8
  %12 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %13 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %14 = call i32 @usbnet_generic_cdc_bind(%struct.usbnet* %12, %struct.usb_interface* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %3, align 4
  br label %42

19:                                               ; preds = %2
  %20 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %21 = load %struct.cdc_state*, %struct.cdc_state** %7, align 8
  %22 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @usbnet_get_ethernet_addr(%struct.usbnet* %20, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %19
  %30 = load %struct.cdc_state*, %struct.cdc_state** %7, align 8
  %31 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @usb_set_intfdata(i32 %32, i32* null)
  %34 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %35 = call i32 @driver_of(%struct.usb_interface* %34)
  %36 = load %struct.cdc_state*, %struct.cdc_state** %7, align 8
  %37 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @usb_driver_release_interface(i32 %35, i32 %38)
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %3, align 4
  br label %42

41:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %29, %17
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @usbnet_generic_cdc_bind(%struct.usbnet*, %struct.usb_interface*) #1

declare dso_local i32 @usbnet_get_ethernet_addr(%struct.usbnet*, i32) #1

declare dso_local i32 @usb_set_intfdata(i32, i32*) #1

declare dso_local i32 @usb_driver_release_interface(i32, i32) #1

declare dso_local i32 @driver_of(%struct.usb_interface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
