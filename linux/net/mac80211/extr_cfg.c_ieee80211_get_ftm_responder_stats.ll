; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_cfg.c_ieee80211_get_ftm_responder_stats.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_cfg.c_ieee80211_get_ftm_responder_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.cfg80211_ftm_responder_stats = type { i32 }
%struct.ieee80211_local = type { i32 }
%struct.ieee80211_sub_if_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, %struct.cfg80211_ftm_responder_stats*)* @ieee80211_get_ftm_responder_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_get_ftm_responder_stats(%struct.wiphy* %0, %struct.net_device* %1, %struct.cfg80211_ftm_responder_stats* %2) #0 {
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.cfg80211_ftm_responder_stats*, align 8
  %7 = alloca %struct.ieee80211_local*, align 8
  %8 = alloca %struct.ieee80211_sub_if_data*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store %struct.cfg80211_ftm_responder_stats* %2, %struct.cfg80211_ftm_responder_stats** %6, align 8
  %9 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %10 = call %struct.ieee80211_local* @wiphy_priv(%struct.wiphy* %9)
  store %struct.ieee80211_local* %10, %struct.ieee80211_local** %7, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.ieee80211_sub_if_data* @IEEE80211_DEV_TO_SUB_IF(%struct.net_device* %11)
  store %struct.ieee80211_sub_if_data* %12, %struct.ieee80211_sub_if_data** %8, align 8
  %13 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %14 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %15 = load %struct.cfg80211_ftm_responder_stats*, %struct.cfg80211_ftm_responder_stats** %6, align 8
  %16 = call i32 @drv_get_ftm_responder_stats(%struct.ieee80211_local* %13, %struct.ieee80211_sub_if_data* %14, %struct.cfg80211_ftm_responder_stats* %15)
  ret i32 %16
}

declare dso_local %struct.ieee80211_local* @wiphy_priv(%struct.wiphy*) #1

declare dso_local %struct.ieee80211_sub_if_data* @IEEE80211_DEV_TO_SUB_IF(%struct.net_device*) #1

declare dso_local i32 @drv_get_ftm_responder_stats(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, %struct.cfg80211_ftm_responder_stats*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
