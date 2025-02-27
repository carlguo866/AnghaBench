; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mac80211.c_mt76_init_sband_2g.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mac80211.c_mt76_init_sband_2g.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76_dev = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32** }
%struct.ieee80211_rate = type { i32 }

@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@mt76_channels_2ghz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt76_dev*, %struct.ieee80211_rate*, i32)* @mt76_init_sband_2g to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt76_init_sband_2g(%struct.mt76_dev* %0, %struct.ieee80211_rate* %1, i32 %2) #0 {
  %4 = alloca %struct.mt76_dev*, align 8
  %5 = alloca %struct.ieee80211_rate*, align 8
  %6 = alloca i32, align 4
  store %struct.mt76_dev* %0, %struct.mt76_dev** %4, align 8
  store %struct.ieee80211_rate* %1, %struct.ieee80211_rate** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.mt76_dev*, %struct.mt76_dev** %4, align 8
  %8 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load %struct.mt76_dev*, %struct.mt76_dev** %4, align 8
  %11 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %10, i32 0, i32 1
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32**, i32*** %15, align 8
  %17 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %18 = getelementptr inbounds i32*, i32** %16, i64 %17
  store i32* %9, i32** %18, align 8
  %19 = load %struct.mt76_dev*, %struct.mt76_dev** %4, align 8
  %20 = load %struct.mt76_dev*, %struct.mt76_dev** %4, align 8
  %21 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %20, i32 0, i32 0
  %22 = load i32, i32* @mt76_channels_2ghz, align 4
  %23 = load i32, i32* @mt76_channels_2ghz, align 4
  %24 = call i32 @ARRAY_SIZE(i32 %23)
  %25 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @mt76_init_sband(%struct.mt76_dev* %19, %struct.TYPE_6__* %21, i32 %22, i32 %24, %struct.ieee80211_rate* %25, i32 %26, i32 0)
  ret i32 %27
}

declare dso_local i32 @mt76_init_sband(%struct.mt76_dev*, %struct.TYPE_6__*, i32, i32, %struct.ieee80211_rate*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
