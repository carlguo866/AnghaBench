; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_hw.c__rtl92ee_set_fw_ps_rf_off_low_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_hw.c__rtl92ee_set_fw_ps_rf_off_low_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }

@FW_PS_STATE_RF_OFF_LOW_PWR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @_rtl92ee_set_fw_ps_rf_off_low_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92ee_set_fw_ps_rf_off_low_power(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* @FW_PS_STATE_RF_OFF_LOW_PWR, align 4
  %5 = load i32, i32* %3, align 4
  %6 = or i32 %5, %4
  store i32 %6, i32* %3, align 4
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @_rtl92ee_set_fw_clock_off(%struct.ieee80211_hw* %7, i32 %8)
  ret void
}

declare dso_local i32 @_rtl92ee_set_fw_clock_off(%struct.ieee80211_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
