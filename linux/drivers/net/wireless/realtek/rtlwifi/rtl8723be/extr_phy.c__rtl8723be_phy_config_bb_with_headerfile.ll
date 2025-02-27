; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723be/extr_phy.c__rtl8723be_phy_config_bb_with_headerfile.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723be/extr_phy.c__rtl8723be_phy_config_bb_with_headerfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }

@BASEBAND_CONFIG_PHY_REG = common dso_local global i64 0, align 8
@RTL8723BEPHY_REG_1TARRAY = common dso_local global i32 0, align 4
@RTL8723BEPHY_REG_1TARRAYLEN = common dso_local global i32 0, align 4
@_rtl8723be_config_bb_reg = common dso_local global i32 0, align 4
@BASEBAND_CONFIG_AGC_TAB = common dso_local global i64 0, align 8
@RTL8723BEAGCTAB_1TARRAY = common dso_local global i32 0, align 4
@RTL8723BEAGCTAB_1TARRAYLEN = common dso_local global i32 0, align 4
@rtl_set_bbreg_with_dwmask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i64)* @_rtl8723be_phy_config_bb_with_headerfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl8723be_phy_config_bb_with_headerfile(%struct.ieee80211_hw* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @BASEBAND_CONFIG_PHY_REG, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %11 = load i32, i32* @RTL8723BEPHY_REG_1TARRAY, align 4
  %12 = load i32, i32* @RTL8723BEPHY_REG_1TARRAYLEN, align 4
  %13 = load i32, i32* @_rtl8723be_config_bb_reg, align 4
  %14 = call i32 @rtl8723be_phy_config_with_headerfile(%struct.ieee80211_hw* %10, i32 %11, i32 %12, i32 %13)
  store i32 %14, i32* %3, align 4
  br label %27

15:                                               ; preds = %2
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @BASEBAND_CONFIG_AGC_TAB, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %21 = load i32, i32* @RTL8723BEAGCTAB_1TARRAY, align 4
  %22 = load i32, i32* @RTL8723BEAGCTAB_1TARRAYLEN, align 4
  %23 = load i32, i32* @rtl_set_bbreg_with_dwmask, align 4
  %24 = call i32 @rtl8723be_phy_config_with_headerfile(%struct.ieee80211_hw* %20, i32 %21, i32 %22, i32 %23)
  store i32 %24, i32* %3, align 4
  br label %27

25:                                               ; preds = %15
  br label %26

26:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %26, %19, %9
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @rtl8723be_phy_config_with_headerfile(%struct.ieee80211_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
