; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_aqc111.c_aqc111_vlan_rx_add_vid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_aqc111.c_aqc111_vlan_rx_add_vid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.usbnet = type { i32 }

@AQ_ACCESS_MAC = common dso_local global i32 0, align 4
@SFR_VLAN_ID_CONTROL = common dso_local global i32 0, align 4
@SFR_VLAN_ID_ADDRESS = common dso_local global i32 0, align 4
@SFR_VLAN_CONTROL_RD = common dso_local global i32 0, align 4
@SFR_VLAN_ID_DATA0 = common dso_local global i32 0, align 4
@SFR_VLAN_CONTROL_WE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32)* @aqc111_vlan_rx_add_vid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aqc111_vlan_rx_add_vid(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.usbnet*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.usbnet* @netdev_priv(%struct.net_device* %11)
  store %struct.usbnet* %12, %struct.usbnet** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load %struct.usbnet*, %struct.usbnet** %7, align 8
  %14 = load i32, i32* @AQ_ACCESS_MAC, align 4
  %15 = load i32, i32* @SFR_VLAN_ID_CONTROL, align 4
  %16 = call i32 @aqc111_read_cmd(%struct.usbnet* %13, i32 %14, i32 %15, i32 1, i32 1, i32* %10)
  %17 = load i32, i32* %10, align 4
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %6, align 4
  %19 = sdiv i32 %18, 16
  store i32 %19, i32* %10, align 4
  %20 = load %struct.usbnet*, %struct.usbnet** %7, align 8
  %21 = load i32, i32* @AQ_ACCESS_MAC, align 4
  %22 = load i32, i32* @SFR_VLAN_ID_ADDRESS, align 4
  %23 = call i32 @aqc111_write_cmd(%struct.usbnet* %20, i32 %21, i32 %22, i32 1, i32 1, i32* %10)
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @SFR_VLAN_CONTROL_RD, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %10, align 4
  %27 = load %struct.usbnet*, %struct.usbnet** %7, align 8
  %28 = load i32, i32* @AQ_ACCESS_MAC, align 4
  %29 = load i32, i32* @SFR_VLAN_ID_CONTROL, align 4
  %30 = call i32 @aqc111_write_cmd(%struct.usbnet* %27, i32 %28, i32 %29, i32 1, i32 1, i32* %10)
  %31 = load %struct.usbnet*, %struct.usbnet** %7, align 8
  %32 = load i32, i32* @AQ_ACCESS_MAC, align 4
  %33 = load i32, i32* @SFR_VLAN_ID_DATA0, align 4
  %34 = call i32 @aqc111_read16_cmd(%struct.usbnet* %31, i32 %32, i32 %33, i32 2, i32* %9)
  %35 = load i32, i32* %6, align 4
  %36 = srem i32 %35, 16
  %37 = shl i32 1, %36
  %38 = load i32, i32* %9, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %9, align 4
  %40 = load %struct.usbnet*, %struct.usbnet** %7, align 8
  %41 = load i32, i32* @AQ_ACCESS_MAC, align 4
  %42 = load i32, i32* @SFR_VLAN_ID_DATA0, align 4
  %43 = call i32 @aqc111_write16_cmd(%struct.usbnet* %40, i32 %41, i32 %42, i32 2, i32* %9)
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @SFR_VLAN_CONTROL_WE, align 4
  %46 = or i32 %44, %45
  store i32 %46, i32* %10, align 4
  %47 = load %struct.usbnet*, %struct.usbnet** %7, align 8
  %48 = load i32, i32* @AQ_ACCESS_MAC, align 4
  %49 = load i32, i32* @SFR_VLAN_ID_CONTROL, align 4
  %50 = call i32 @aqc111_write_cmd(%struct.usbnet* %47, i32 %48, i32 %49, i32 1, i32 1, i32* %10)
  ret i32 0
}

declare dso_local %struct.usbnet* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @aqc111_read_cmd(%struct.usbnet*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @aqc111_write_cmd(%struct.usbnet*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @aqc111_read16_cmd(%struct.usbnet*, i32, i32, i32, i32*) #1

declare dso_local i32 @aqc111_write16_cmd(%struct.usbnet*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
