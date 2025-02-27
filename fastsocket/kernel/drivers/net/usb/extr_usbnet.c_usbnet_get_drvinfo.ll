; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_usbnet.c_usbnet_get_drvinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_usbnet.c_usbnet_get_drvinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_drvinfo = type { i32, i32, i32, i32 }
%struct.usbnet = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@DRIVER_VERSION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usbnet_get_drvinfo(%struct.net_device* %0, %struct.ethtool_drvinfo* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_drvinfo*, align 8
  %5 = alloca %struct.usbnet*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_drvinfo* %1, %struct.ethtool_drvinfo** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.usbnet* @netdev_priv(%struct.net_device* %6)
  store %struct.usbnet* %7, %struct.usbnet** %5, align 8
  %8 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %9 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %12 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @strlcpy(i32 %10, i32 %13, i32 4)
  %15 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %16 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @DRIVER_VERSION, align 4
  %19 = call i32 @strlcpy(i32 %17, i32 %18, i32 4)
  %20 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %21 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %24 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @strlcpy(i32 %22, i32 %27, i32 4)
  %29 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %30 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %33 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @usb_make_path(i32 %31, i32 %34, i32 4)
  ret void
}

declare dso_local %struct.usbnet* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @usb_make_path(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
