; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_ethtool.c_cfg80211_get_sset_count.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_ethtool.c_cfg80211_get_sset_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { i32 }
%struct.cfg80211_registered_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @cfg80211_get_sset_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfg80211_get_sset_count(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wireless_dev*, align 8
  %7 = alloca %struct.cfg80211_registered_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  store %struct.wireless_dev* %10, %struct.wireless_dev** %6, align 8
  %11 = load %struct.wireless_dev*, %struct.wireless_dev** %6, align 8
  %12 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.cfg80211_registered_device* @wiphy_to_dev(i32 %13)
  store %struct.cfg80211_registered_device* %14, %struct.cfg80211_registered_device** %7, align 8
  %15 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %7, align 8
  %16 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %7, align 8
  %23 = load %struct.net_device*, %struct.net_device** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @rdev_get_et_sset_count(%struct.cfg80211_registered_device* %22, %struct.net_device* %23, i32 %24)
  store i32 %25, i32* %3, align 4
  br label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @EOPNOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %26, %21
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_dev(i32) #1

declare dso_local i32 @rdev_get_et_sset_count(%struct.cfg80211_registered_device*, %struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
