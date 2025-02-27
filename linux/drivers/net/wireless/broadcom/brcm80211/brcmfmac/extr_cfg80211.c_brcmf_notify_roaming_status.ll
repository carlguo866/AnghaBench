; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_notify_roaming_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_notify_roaming_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_if = type { i32, %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.brcmf_cfg80211_info* }
%struct.brcmf_cfg80211_info = type { i32 }
%struct.brcmf_event_msg = type { i64, i64 }

@BRCMF_E_ROAM = common dso_local global i64 0, align 8
@BRCMF_E_STATUS_SUCCESS = common dso_local global i64 0, align 8
@BRCMF_VIF_STATUS_CONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_if*, %struct.brcmf_event_msg*, i8*)* @brcmf_notify_roaming_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_notify_roaming_status(%struct.brcmf_if* %0, %struct.brcmf_event_msg* %1, i8* %2) #0 {
  %4 = alloca %struct.brcmf_if*, align 8
  %5 = alloca %struct.brcmf_event_msg*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.brcmf_cfg80211_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.brcmf_if* %0, %struct.brcmf_if** %4, align 8
  store %struct.brcmf_event_msg* %1, %struct.brcmf_event_msg** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.brcmf_if*, %struct.brcmf_if** %4, align 8
  %11 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %10, i32 0, i32 2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %13, align 8
  store %struct.brcmf_cfg80211_info* %14, %struct.brcmf_cfg80211_info** %7, align 8
  %15 = load %struct.brcmf_event_msg*, %struct.brcmf_event_msg** %5, align 8
  %16 = getelementptr inbounds %struct.brcmf_event_msg, %struct.brcmf_event_msg* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %8, align 8
  %18 = load %struct.brcmf_event_msg*, %struct.brcmf_event_msg** %5, align 8
  %19 = getelementptr inbounds %struct.brcmf_event_msg, %struct.brcmf_event_msg* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %9, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* @BRCMF_E_ROAM, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %53

24:                                               ; preds = %3
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* @BRCMF_E_STATUS_SUCCESS, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %53

28:                                               ; preds = %24
  %29 = load i32, i32* @BRCMF_VIF_STATUS_CONNECTED, align 4
  %30 = load %struct.brcmf_if*, %struct.brcmf_if** %4, align 8
  %31 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %30, i32 0, i32 1
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = call i64 @test_bit(i32 %29, i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %28
  %37 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %7, align 8
  %38 = load %struct.brcmf_if*, %struct.brcmf_if** %4, align 8
  %39 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.brcmf_event_msg*, %struct.brcmf_event_msg** %5, align 8
  %42 = call i32 @brcmf_bss_roaming_done(%struct.brcmf_cfg80211_info* %37, i32 %40, %struct.brcmf_event_msg* %41)
  br label %52

43:                                               ; preds = %28
  %44 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %7, align 8
  %45 = load %struct.brcmf_if*, %struct.brcmf_if** %4, align 8
  %46 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.brcmf_event_msg*, %struct.brcmf_event_msg** %5, align 8
  %49 = call i32 @brcmf_bss_connect_done(%struct.brcmf_cfg80211_info* %44, i32 %47, %struct.brcmf_event_msg* %48, i32 1)
  %50 = load %struct.brcmf_if*, %struct.brcmf_if** %4, align 8
  %51 = call i32 @brcmf_net_setcarrier(%struct.brcmf_if* %50, i32 1)
  br label %52

52:                                               ; preds = %43, %36
  br label %53

53:                                               ; preds = %52, %24, %3
  ret i32 0
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @brcmf_bss_roaming_done(%struct.brcmf_cfg80211_info*, i32, %struct.brcmf_event_msg*) #1

declare dso_local i32 @brcmf_bss_connect_done(%struct.brcmf_cfg80211_info*, i32, %struct.brcmf_event_msg*, i32) #1

declare dso_local i32 @brcmf_net_setcarrier(%struct.brcmf_if*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
