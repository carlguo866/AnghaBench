; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c_wlcore_op_cancel_remain_on_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c_wlcore_op_cancel_remain_on_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.wl1271* }
%struct.wl1271 = type { i32 }

@DEBUG_MAC80211 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"mac80211 croc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @wlcore_op_cancel_remain_on_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlcore_op_cancel_remain_on_channel(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.wl1271*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %4 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %5 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %4, i32 0, i32 0
  %6 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  store %struct.wl1271* %6, %struct.wl1271** %3, align 8
  %7 = load i32, i32* @DEBUG_MAC80211, align 4
  %8 = call i32 @wl1271_debug(i32 %7, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %10 = call i32 @wl1271_tx_flush(%struct.wl1271* %9)
  %11 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %12 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %11, i32 0, i32 0
  %13 = call i32 @cancel_delayed_work_sync(i32* %12)
  %14 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %15 = call i32 @wlcore_roc_completed(%struct.wl1271* %14)
  ret i32 0
}

declare dso_local i32 @wl1271_debug(i32, i8*) #1

declare dso_local i32 @wl1271_tx_flush(%struct.wl1271*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @wlcore_roc_completed(%struct.wl1271*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
