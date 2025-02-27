; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_option.c_option_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_option.c_option_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial = type { %struct.usb_wwan_intf_private*, %struct.TYPE_8__*, %struct.TYPE_10__* }
%struct.usb_wwan_intf_private = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i64 }
%struct.usb_device_id = type { i32 }

@DLINK_VENDOR_ID = common dso_local global i64 0, align 8
@DLINK_PRODUCT_DWM_652 = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@option_send_setup = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial*, %struct.usb_device_id*)* @option_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @option_probe(%struct.usb_serial* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_serial*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_wwan_intf_private*, align 8
  store %struct.usb_serial* %0, %struct.usb_serial** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %7 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %8 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %7, i32 0, i32 2
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @DLINK_VENDOR_ID, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %37

15:                                               ; preds = %2
  %16 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %17 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %16, i32 0, i32 2
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @DLINK_PRODUCT_DWM_652, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %15
  %25 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %26 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %25, i32 0, i32 1
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 8
  br i1 %33, label %34, label %37

34:                                               ; preds = %24
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %54

37:                                               ; preds = %24, %15, %2
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.usb_wwan_intf_private* @kzalloc(i32 8, i32 %38)
  %40 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %41 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %40, i32 0, i32 0
  store %struct.usb_wwan_intf_private* %39, %struct.usb_wwan_intf_private** %41, align 8
  store %struct.usb_wwan_intf_private* %39, %struct.usb_wwan_intf_private** %6, align 8
  %42 = load %struct.usb_wwan_intf_private*, %struct.usb_wwan_intf_private** %6, align 8
  %43 = icmp ne %struct.usb_wwan_intf_private* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %37
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %54

47:                                               ; preds = %37
  %48 = load i32, i32* @option_send_setup, align 4
  %49 = load %struct.usb_wwan_intf_private*, %struct.usb_wwan_intf_private** %6, align 8
  %50 = getelementptr inbounds %struct.usb_wwan_intf_private, %struct.usb_wwan_intf_private* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.usb_wwan_intf_private*, %struct.usb_wwan_intf_private** %6, align 8
  %52 = getelementptr inbounds %struct.usb_wwan_intf_private, %struct.usb_wwan_intf_private* %51, i32 0, i32 0
  %53 = call i32 @spin_lock_init(i32* %52)
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %47, %44, %34
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local %struct.usb_wwan_intf_private* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
