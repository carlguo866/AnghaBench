; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_mcu.c_mt7615_driver_own.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_mcu.c_mt7615_driver_own.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7615_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MT_CFG_LPCR_HOST = common dso_local global i32 0, align 4
@MT_CFG_LPCR_HOST_DRV_OWN = common dso_local global i32 0, align 4
@MT_CFG_LPCR_HOST_FW_OWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Timeout for driver own\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt7615_dev*)* @mt7615_driver_own to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7615_driver_own(%struct.mt7615_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mt7615_dev*, align 8
  store %struct.mt7615_dev* %0, %struct.mt7615_dev** %3, align 8
  %4 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %5 = load i32, i32* @MT_CFG_LPCR_HOST, align 4
  %6 = load i32, i32* @MT_CFG_LPCR_HOST_DRV_OWN, align 4
  %7 = call i32 @mt76_wr(%struct.mt7615_dev* %4, i32 %5, i32 %6)
  %8 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %9 = load i32, i32* @MT_CFG_LPCR_HOST, align 4
  %10 = load i32, i32* @MT_CFG_LPCR_HOST_FW_OWN, align 4
  %11 = call i32 @mt76_poll_msec(%struct.mt7615_dev* %8, i32 %9, i32 %10, i32 0, i32 500)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %1
  %14 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %15 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @dev_err(i32 %17, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %22

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %21, %13
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @mt76_wr(%struct.mt7615_dev*, i32, i32) #1

declare dso_local i32 @mt76_poll_msec(%struct.mt7615_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
