; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_cfg80211_rx_spurious_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_cfg80211_rx_spurious_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { i64 }

@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@NL80211_IFTYPE_P2P_GO = common dso_local global i64 0, align 8
@NL80211_CMD_UNEXPECTED_FRAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfg80211_rx_spurious_frame(%struct.net_device* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wireless_dev*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load %struct.wireless_dev*, %struct.wireless_dev** %11, align 8
  store %struct.wireless_dev* %12, %struct.wireless_dev** %8, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @trace_cfg80211_rx_spurious_frame(%struct.net_device* %13, i32* %14)
  %16 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %17 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %3
  %22 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %23 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @NL80211_IFTYPE_P2P_GO, align 8
  %26 = icmp ne i64 %24, %25
  br label %27

27:                                               ; preds = %21, %3
  %28 = phi i1 [ false, %3 ], [ %26, %21 ]
  %29 = zext i1 %28 to i32
  %30 = call i64 @WARN_ON(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = call i32 @trace_cfg80211_return_bool(i32 0)
  store i32 0, i32* %4, align 4
  br label %43

34:                                               ; preds = %27
  %35 = load %struct.net_device*, %struct.net_device** %5, align 8
  %36 = load i32, i32* @NL80211_CMD_UNEXPECTED_FRAME, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @__nl80211_unexpected_frame(%struct.net_device* %35, i32 %36, i32* %37, i32 %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @trace_cfg80211_return_bool(i32 %40)
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %34, %32
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @trace_cfg80211_rx_spurious_frame(%struct.net_device*, i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @trace_cfg80211_return_bool(i32) #1

declare dso_local i32 @__nl80211_unexpected_frame(%struct.net_device*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
