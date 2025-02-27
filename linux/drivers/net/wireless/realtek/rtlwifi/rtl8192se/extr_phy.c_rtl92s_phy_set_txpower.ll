; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_phy.c_rtl92s_phy_set_txpower.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_phy.c_rtl92s_phy_set_txpower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }
%struct.rtl_efuse = type { i32 }

@COMP_POWER = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [87 x i8] c"Channel-%d, cckPowerLevel (A / B) = 0x%x / 0x%x, ofdmPowerLevel (A / B) = 0x%x / 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92s_phy_set_txpower(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca %struct.rtl_efuse*, align 8
  %7 = alloca [2 x i32], align 4
  %8 = alloca [2 x i32], align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %10 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %9)
  store %struct.rtl_priv* %10, %struct.rtl_priv** %5, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %12 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %11)
  %13 = call %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv* %12)
  store %struct.rtl_efuse* %13, %struct.rtl_efuse** %6, align 8
  %14 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %15 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %51

19:                                               ; preds = %2
  %20 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %24 = call i32 @_rtl92s_phy_get_txpower_index(%struct.ieee80211_hw* %20, i32 %21, i32* %22, i32* %23)
  %25 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %26 = load i32, i32* @COMP_POWER, align 4
  %27 = load i32, i32* @DBG_LOUD, align 4
  %28 = load i32, i32* %4, align 4
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @RT_TRACE(%struct.rtl_priv* %25, i32 %26, i32 %27, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %30, i32 %32, i32 %34, i32 %36)
  %38 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %42 = call i32 @_rtl92s_phy_ccxpower_indexcheck(%struct.ieee80211_hw* %38, i32 %39, i32* %40, i32* %41)
  %43 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %44 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @rtl92s_phy_rf6052_set_ccktxpower(%struct.ieee80211_hw* %43, i32 %45)
  %47 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @rtl92s_phy_rf6052_set_ofdmtxpower(%struct.ieee80211_hw* %47, i32* %48, i32 %49)
  br label %51

51:                                               ; preds = %19, %18
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv*) #1

declare dso_local i32 @_rtl92s_phy_get_txpower_index(%struct.ieee80211_hw*, i32, i32*, i32*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @_rtl92s_phy_ccxpower_indexcheck(%struct.ieee80211_hw*, i32, i32*, i32*) #1

declare dso_local i32 @rtl92s_phy_rf6052_set_ccktxpower(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @rtl92s_phy_rf6052_set_ofdmtxpower(%struct.ieee80211_hw*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
