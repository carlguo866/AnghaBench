; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_phy.c__rtl92d_phy_set_rfon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_phy.c__rtl92d_phy_set_rfon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@SINGLEMAC_SINGLEPHY = common dso_local global i64 0, align 8
@REG_SPS0_CTRL = common dso_local global i32 0, align 4
@REG_SYS_FUNC_EN = common dso_local global i32 0, align 4
@REG_APSD_CTRL = common dso_local global i32 0, align 4
@REG_TXPAUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @_rtl92d_phy_set_rfon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92d_phy_set_rfon(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %4 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %5 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %4)
  store %struct.rtl_priv* %5, %struct.rtl_priv** %3, align 8
  %6 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %7 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @SINGLEMAC_SINGLEPHY, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %14 = load i32, i32* @REG_SPS0_CTRL, align 4
  %15 = call i32 @rtl_write_byte(%struct.rtl_priv* %13, i32 %14, i32 43)
  br label %16

16:                                               ; preds = %12, %1
  %17 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %18 = load i32, i32* @REG_SYS_FUNC_EN, align 4
  %19 = call i32 @rtl_write_byte(%struct.rtl_priv* %17, i32 %18, i32 227)
  %20 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %21 = load i32, i32* @REG_APSD_CTRL, align 4
  %22 = call i32 @rtl_write_byte(%struct.rtl_priv* %20, i32 %21, i32 0)
  %23 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %24 = load i32, i32* @REG_SYS_FUNC_EN, align 4
  %25 = call i32 @rtl_write_byte(%struct.rtl_priv* %23, i32 %24, i32 226)
  %26 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %27 = load i32, i32* @REG_SYS_FUNC_EN, align 4
  %28 = call i32 @rtl_write_byte(%struct.rtl_priv* %26, i32 %27, i32 227)
  %29 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %30 = load i32, i32* @REG_TXPAUSE, align 4
  %31 = call i32 @rtl_write_byte(%struct.rtl_priv* %29, i32 %30, i32 0)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
