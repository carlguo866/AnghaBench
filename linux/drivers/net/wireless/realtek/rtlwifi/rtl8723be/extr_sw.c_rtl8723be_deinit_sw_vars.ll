; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723be/extr_sw.c_rtl8723be_deinit_sw_vars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723be/extr_sw.c_rtl8723be_deinit_sw_vars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8723be_deinit_sw_vars(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %4 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %5 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %4)
  store %struct.rtl_priv* %5, %struct.rtl_priv** %3, align 8
  %6 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %7 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %1
  %12 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %13 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @vfree(i32* %15)
  %17 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %18 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32* null, i32** %19, align 8
  br label %20

20:                                               ; preds = %11, %1
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @vfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
