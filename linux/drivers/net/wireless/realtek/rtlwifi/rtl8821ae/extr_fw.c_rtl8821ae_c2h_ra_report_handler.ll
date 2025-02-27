; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_fw.c_rtl8821ae_c2h_ra_report_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_fw.c_rtl8821ae_c2h_ra_report_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_hal = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8821ae_c2h_ra_report_handler(%struct.ieee80211_hw* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtl_hal*, align 8
  %8 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %10 = call i32 @rtl_priv(%struct.ieee80211_hw* %9)
  %11 = call %struct.rtl_hal* @rtl_hal(i32 %10)
  store %struct.rtl_hal* %11, %struct.rtl_hal** %7, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, 63
  store i32 %15, i32* %8, align 4
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @rtl8821ae_hw_rate_to_mrate(%struct.ieee80211_hw* %16, i32 %17)
  %19 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %20 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @rtl8821ae_dm_update_init_rate(%struct.ieee80211_hw* %21, i32 %22)
  ret void
}

declare dso_local %struct.rtl_hal* @rtl_hal(i32) #1

declare dso_local i32 @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl8821ae_hw_rate_to_mrate(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @rtl8821ae_dm_update_init_rate(%struct.ieee80211_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
