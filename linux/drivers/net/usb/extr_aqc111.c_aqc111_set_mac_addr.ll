; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_aqc111.c_aqc111_set_mac_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_aqc111.c_aqc111_set_mac_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.usbnet = type { i32 }

@AQ_ACCESS_MAC = common dso_local global i32 0, align 4
@SFR_NODE_ID = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*)* @aqc111_set_mac_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aqc111_set_mac_addr(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.usbnet*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.usbnet* @netdev_priv(%struct.net_device* %8)
  store %struct.usbnet* %9, %struct.usbnet** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @eth_mac_addr(%struct.net_device* %10, i8* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %3, align 4
  br label %27

17:                                               ; preds = %2
  %18 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %19 = load i32, i32* @AQ_ACCESS_MAC, align 4
  %20 = load i32, i32* @SFR_NODE_ID, align 4
  %21 = load i32, i32* @ETH_ALEN, align 4
  %22 = load i32, i32* @ETH_ALEN, align 4
  %23 = load %struct.net_device*, %struct.net_device** %4, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @aqc111_write_cmd(%struct.usbnet* %18, i32 %19, i32 %20, i32 %21, i32 %22, i32 %25)
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %17, %15
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local %struct.usbnet* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @eth_mac_addr(%struct.net_device*, i8*) #1

declare dso_local i32 @aqc111_write_cmd(%struct.usbnet*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
