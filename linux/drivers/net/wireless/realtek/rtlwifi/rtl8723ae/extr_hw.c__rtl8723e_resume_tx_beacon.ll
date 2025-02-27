; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_hw.c__rtl8723e_resume_tx_beacon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_hw.c__rtl8723e_resume_tx_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }

@REG_FWHW_TXQ_CTRL = common dso_local global i64 0, align 8
@REG_TBTT_PROHIBIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @_rtl8723e_resume_tx_beacon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl8723e_resume_tx_beacon(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %5 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %6 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %5)
  store %struct.rtl_priv* %6, %struct.rtl_priv** %3, align 8
  %7 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %8 = load i64, i64* @REG_FWHW_TXQ_CTRL, align 8
  %9 = add nsw i64 %8, 2
  %10 = call i32 @rtl_read_byte(%struct.rtl_priv* %7, i64 %9)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %12 = load i64, i64* @REG_FWHW_TXQ_CTRL, align 8
  %13 = add nsw i64 %12, 2
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @BIT(i32 6)
  %16 = or i32 %14, %15
  %17 = call i32 @rtl_write_byte(%struct.rtl_priv* %11, i64 %13, i32 %16)
  %18 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %19 = load i64, i64* @REG_TBTT_PROHIBIT, align 8
  %20 = add nsw i64 %19, 1
  %21 = call i32 @rtl_write_byte(%struct.rtl_priv* %18, i64 %20, i32 255)
  %22 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %23 = load i64, i64* @REG_TBTT_PROHIBIT, align 8
  %24 = add nsw i64 %23, 2
  %25 = call i32 @rtl_read_byte(%struct.rtl_priv* %22, i64 %24)
  store i32 %25, i32* %4, align 4
  %26 = call i32 @BIT(i32 1)
  %27 = load i32, i32* %4, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %4, align 4
  %29 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %30 = load i64, i64* @REG_TBTT_PROHIBIT, align 8
  %31 = add nsw i64 %30, 2
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @rtl_write_byte(%struct.rtl_priv* %29, i64 %31, i32 %32)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_read_byte(%struct.rtl_priv*, i64) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i64, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
