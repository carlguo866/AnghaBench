; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_cfg80211.c_wil_cancel_remain_on_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_cfg80211.c_wil_cancel_remain_on_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.wireless_dev = type { i32 }
%struct.wil6210_priv = type { i32 }
%struct.wil6210_vif = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"cancel_remain_on_channel\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.wireless_dev*, i32)* @wil_cancel_remain_on_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wil_cancel_remain_on_channel(%struct.wiphy* %0, %struct.wireless_dev* %1, i32 %2) #0 {
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca %struct.wireless_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wil6210_priv*, align 8
  %8 = alloca %struct.wil6210_vif*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %4, align 8
  store %struct.wireless_dev* %1, %struct.wireless_dev** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %10 = call %struct.wil6210_priv* @wiphy_to_wil(%struct.wiphy* %9)
  store %struct.wil6210_priv* %10, %struct.wil6210_priv** %7, align 8
  %11 = load %struct.wil6210_priv*, %struct.wil6210_priv** %7, align 8
  %12 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %13 = call %struct.wil6210_vif* @wdev_to_vif(%struct.wil6210_priv* %11, %struct.wireless_dev* %12)
  store %struct.wil6210_vif* %13, %struct.wil6210_vif** %8, align 8
  %14 = load %struct.wil6210_priv*, %struct.wil6210_priv** %7, align 8
  %15 = call i32 @wil_dbg_misc(%struct.wil6210_priv* %14, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.wil6210_vif*, %struct.wil6210_vif** %8, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @wil_p2p_cancel_listen(%struct.wil6210_vif* %16, i32 %17)
  ret i32 %18
}

declare dso_local %struct.wil6210_priv* @wiphy_to_wil(%struct.wiphy*) #1

declare dso_local %struct.wil6210_vif* @wdev_to_vif(%struct.wil6210_priv*, %struct.wireless_dev*) #1

declare dso_local i32 @wil_dbg_misc(%struct.wil6210_priv*, i8*) #1

declare dso_local i32 @wil_p2p_cancel_listen(%struct.wil6210_vif*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
