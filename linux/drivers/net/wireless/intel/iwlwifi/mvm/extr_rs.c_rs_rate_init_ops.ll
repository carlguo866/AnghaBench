; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_rate_init_ops.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_rate_init_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_supported_band = type { i32 }
%struct.cfg80211_chan_def = type { i32 }
%struct.ieee80211_sta = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.ieee80211_supported_band*, %struct.cfg80211_chan_def*, %struct.ieee80211_sta*, i8*)* @rs_rate_init_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs_rate_init_ops(i8* %0, %struct.ieee80211_supported_band* %1, %struct.cfg80211_chan_def* %2, %struct.ieee80211_sta* %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ieee80211_supported_band*, align 8
  %8 = alloca %struct.cfg80211_chan_def*, align 8
  %9 = alloca %struct.ieee80211_sta*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.ieee80211_supported_band* %1, %struct.ieee80211_supported_band** %7, align 8
  store %struct.cfg80211_chan_def* %2, %struct.cfg80211_chan_def** %8, align 8
  store %struct.ieee80211_sta* %3, %struct.ieee80211_sta** %9, align 8
  store i8* %4, i8** %10, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
