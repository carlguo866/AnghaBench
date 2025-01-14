; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_asix_devices.c_ax88772_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_asix_devices.c_ax88772_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { %struct.TYPE_2__, i32, %struct.asix_common_private* }
%struct.TYPE_2__ = type { i32 }
%struct.asix_common_private = type { i8*, i8* }

@AX_MEDIUM_RE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"ax88772_suspend: medium=0x%04x\0A\00", align 1
@MII_BMCR = common dso_local global i32 0, align 4
@MII_ADVERTISE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbnet*)* @ax88772_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ax88772_suspend(%struct.usbnet* %0) #0 {
  %2 = alloca %struct.usbnet*, align 8
  %3 = alloca %struct.asix_common_private*, align 8
  %4 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %2, align 8
  %5 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %6 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %5, i32 0, i32 2
  %7 = load %struct.asix_common_private*, %struct.asix_common_private** %6, align 8
  store %struct.asix_common_private* %7, %struct.asix_common_private** %3, align 8
  %8 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %9 = call i32 @asix_read_medium_status(%struct.usbnet* %8, i32 1)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* @AX_MEDIUM_RE, align 4
  %11 = xor i32 %10, -1
  %12 = load i32, i32* %4, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %4, align 4
  %14 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @asix_write_medium_mode(%struct.usbnet* %14, i32 %15, i32 1)
  %17 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %18 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %21 = call i32 @asix_read_medium_status(%struct.usbnet* %20, i32 1)
  %22 = call i32 @netdev_dbg(i32 %19, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %24 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %27 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @MII_BMCR, align 4
  %31 = call i8* @asix_mdio_read_nopm(i32 %25, i32 %29, i32 %30)
  %32 = load %struct.asix_common_private*, %struct.asix_common_private** %3, align 8
  %33 = getelementptr inbounds %struct.asix_common_private, %struct.asix_common_private* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  %34 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %35 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %38 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @MII_ADVERTISE, align 4
  %42 = call i8* @asix_mdio_read_nopm(i32 %36, i32 %40, i32 %41)
  %43 = load %struct.asix_common_private*, %struct.asix_common_private** %3, align 8
  %44 = getelementptr inbounds %struct.asix_common_private, %struct.asix_common_private* %43, i32 0, i32 0
  store i8* %42, i8** %44, align 8
  ret void
}

declare dso_local i32 @asix_read_medium_status(%struct.usbnet*, i32) #1

declare dso_local i32 @asix_write_medium_mode(%struct.usbnet*, i32, i32) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i32) #1

declare dso_local i8* @asix_mdio_read_nopm(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
