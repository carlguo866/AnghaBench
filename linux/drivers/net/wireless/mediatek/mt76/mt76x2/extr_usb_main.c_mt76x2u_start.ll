; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_usb_main.c_mt76x2u_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_usb_main.c_mt76x2u_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.mt76x02_dev* }
%struct.mt76x02_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@MT_MAC_WORK_INTERVAL = common dso_local global i32 0, align 4
@MT76_STATE_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @mt76x2u_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt76x2u_start(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.mt76x02_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %7 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %6, i32 0, i32 0
  %8 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %7, align 8
  store %struct.mt76x02_dev* %8, %struct.mt76x02_dev** %4, align 8
  %9 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %10 = call i32 @mt76x2u_mac_start(%struct.mt76x02_dev* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %2, align 4
  br label %28

15:                                               ; preds = %1
  %16 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %17 = call i32 @mt76_hw(%struct.mt76x02_dev* %16)
  %18 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %19 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* @MT_MAC_WORK_INTERVAL, align 4
  %22 = call i32 @ieee80211_queue_delayed_work(i32 %17, i32* %20, i32 %21)
  %23 = load i32, i32* @MT76_STATE_RUNNING, align 4
  %24 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %25 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = call i32 @set_bit(i32 %23, i32* %26)
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %15, %13
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @mt76x2u_mac_start(%struct.mt76x02_dev*) #1

declare dso_local i32 @ieee80211_queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @mt76_hw(%struct.mt76x02_dev*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
