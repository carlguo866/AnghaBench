; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_ibss.c___cfg80211_leave_ibss.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_ibss.c___cfg80211_leave_ibss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_registered_device = type { i32 }
%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { i64, i32 }

@ENOLINK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__cfg80211_leave_ibss(%struct.cfg80211_registered_device* %0, %struct.net_device* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cfg80211_registered_device*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wireless_dev*, align 8
  %9 = alloca i32, align 4
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.net_device*, %struct.net_device** %6, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load %struct.wireless_dev*, %struct.wireless_dev** %11, align 8
  store %struct.wireless_dev* %12, %struct.wireless_dev** %8, align 8
  %13 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %14 = call i32 @ASSERT_WDEV_LOCK(%struct.wireless_dev* %13)
  %15 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %16 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @ENOLINK, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %36

22:                                               ; preds = %3
  %23 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %24 = load %struct.net_device*, %struct.net_device** %6, align 8
  %25 = call i32 @rdev_leave_ibss(%struct.cfg80211_registered_device* %23, %struct.net_device* %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %4, align 4
  br label %36

30:                                               ; preds = %22
  %31 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %32 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  %33 = load %struct.net_device*, %struct.net_device** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @__cfg80211_clear_ibss(%struct.net_device* %33, i32 %34)
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %30, %28, %19
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @ASSERT_WDEV_LOCK(%struct.wireless_dev*) #1

declare dso_local i32 @rdev_leave_ibss(%struct.cfg80211_registered_device*, %struct.net_device*) #1

declare dso_local i32 @__cfg80211_clear_ibss(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
