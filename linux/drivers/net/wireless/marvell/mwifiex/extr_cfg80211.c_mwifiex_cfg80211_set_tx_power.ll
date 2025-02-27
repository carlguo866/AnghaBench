; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cfg80211.c_mwifiex_cfg80211_set_tx_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cfg80211.c_mwifiex_cfg80211_set_tx_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.wireless_dev = type { i32 }
%struct.mwifiex_adapter = type { i32 }
%struct.mwifiex_private = type { i32 }
%struct.mwifiex_power_cfg = type { i32, i32, i32 }

@MWIFIEX_BSS_ROLE_ANY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.wireless_dev*, i32, i32)* @mwifiex_cfg80211_set_tx_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_cfg80211_set_tx_power(%struct.wiphy* %0, %struct.wireless_dev* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.wiphy*, align 8
  %6 = alloca %struct.wireless_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mwifiex_adapter*, align 8
  %10 = alloca %struct.mwifiex_private*, align 8
  %11 = alloca %struct.mwifiex_power_cfg, align 4
  %12 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %5, align 8
  store %struct.wireless_dev* %1, %struct.wireless_dev** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %14 = call %struct.mwifiex_adapter* @mwifiex_cfg80211_get_adapter(%struct.wiphy* %13)
  store %struct.mwifiex_adapter* %14, %struct.mwifiex_adapter** %9, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @MBM_TO_DBM(i32 %15)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %7, align 4
  switch i32 %17, label %30 [
    i32 129, label %18
    i32 128, label %23
    i32 130, label %28
  ]

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.mwifiex_power_cfg, %struct.mwifiex_power_cfg* %11, i32 0, i32 0
  store i32 0, i32* %19, align 4
  %20 = getelementptr inbounds %struct.mwifiex_power_cfg, %struct.mwifiex_power_cfg* %11, i32 0, i32 1
  store i32 1, i32* %20, align 4
  %21 = load i32, i32* %12, align 4
  %22 = getelementptr inbounds %struct.mwifiex_power_cfg, %struct.mwifiex_power_cfg* %11, i32 0, i32 2
  store i32 %21, i32* %22, align 4
  br label %30

23:                                               ; preds = %4
  %24 = getelementptr inbounds %struct.mwifiex_power_cfg, %struct.mwifiex_power_cfg* %11, i32 0, i32 0
  store i32 0, i32* %24, align 4
  %25 = getelementptr inbounds %struct.mwifiex_power_cfg, %struct.mwifiex_power_cfg* %11, i32 0, i32 1
  store i32 0, i32* %25, align 4
  %26 = load i32, i32* %12, align 4
  %27 = getelementptr inbounds %struct.mwifiex_power_cfg, %struct.mwifiex_power_cfg* %11, i32 0, i32 2
  store i32 %26, i32* %27, align 4
  br label %30

28:                                               ; preds = %4
  %29 = getelementptr inbounds %struct.mwifiex_power_cfg, %struct.mwifiex_power_cfg* %11, i32 0, i32 0
  store i32 1, i32* %29, align 4
  br label %30

30:                                               ; preds = %4, %28, %23, %18
  %31 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %9, align 8
  %32 = load i32, i32* @MWIFIEX_BSS_ROLE_ANY, align 4
  %33 = call %struct.mwifiex_private* @mwifiex_get_priv(%struct.mwifiex_adapter* %31, i32 %32)
  store %struct.mwifiex_private* %33, %struct.mwifiex_private** %10, align 8
  %34 = load %struct.mwifiex_private*, %struct.mwifiex_private** %10, align 8
  %35 = call i32 @mwifiex_set_tx_power(%struct.mwifiex_private* %34, %struct.mwifiex_power_cfg* %11)
  ret i32 %35
}

declare dso_local %struct.mwifiex_adapter* @mwifiex_cfg80211_get_adapter(%struct.wiphy*) #1

declare dso_local i32 @MBM_TO_DBM(i32) #1

declare dso_local %struct.mwifiex_private* @mwifiex_get_priv(%struct.mwifiex_adapter*, i32) #1

declare dso_local i32 @mwifiex_set_tx_power(%struct.mwifiex_private*, %struct.mwifiex_power_cfg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
