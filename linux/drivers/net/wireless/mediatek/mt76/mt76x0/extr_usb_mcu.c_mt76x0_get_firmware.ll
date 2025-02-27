; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_usb_mcu.c_mt76x0_get_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_usb_mcu.c_mt76x0_get_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.firmware = type { i32 }

@MT7610E_FIRMWARE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"%s not found, switching to %s\00", align 1
@MT7610U_FIRMWARE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt76x02_dev*, %struct.firmware**)* @mt76x0_get_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt76x0_get_firmware(%struct.mt76x02_dev* %0, %struct.firmware** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mt76x02_dev*, align 8
  %5 = alloca %struct.firmware**, align 8
  %6 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %4, align 8
  store %struct.firmware** %1, %struct.firmware*** %5, align 8
  %7 = load %struct.firmware**, %struct.firmware*** %5, align 8
  %8 = load i32, i32* @MT7610E_FIRMWARE, align 4
  %9 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %10 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @firmware_request_nowarn(%struct.firmware** %7, i32 %8, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %2
  %17 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %18 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @MT7610E_FIRMWARE, align 4
  %22 = load i32, i32* @MT7610U_FIRMWARE, align 4
  %23 = call i32 @dev_info(i32 %20, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22)
  %24 = load %struct.firmware**, %struct.firmware*** %5, align 8
  %25 = load i32, i32* @MT7610U_FIRMWARE, align 4
  %26 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %27 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @request_firmware(%struct.firmware** %24, i32 %25, i32 %29)
  store i32 %30, i32* %3, align 4
  br label %32

31:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %16
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @firmware_request_nowarn(%struct.firmware**, i32, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
