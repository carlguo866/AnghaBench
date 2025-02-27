; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_main.c_ath9k_htc_init_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_main.c_ath9k_htc_init_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath9k_htc_priv = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.ath_common = type { i32 }
%struct.ath9k_htc_target_rate = type { i32 }

@CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Updated target sta: %pM, rate caps: 0x%X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath9k_htc_priv*, %struct.ieee80211_sta*)* @ath9k_htc_init_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_htc_init_rate(%struct.ath9k_htc_priv* %0, %struct.ieee80211_sta* %1) #0 {
  %3 = alloca %struct.ath9k_htc_priv*, align 8
  %4 = alloca %struct.ieee80211_sta*, align 8
  %5 = alloca %struct.ath_common*, align 8
  %6 = alloca %struct.ath9k_htc_target_rate, align 4
  %7 = alloca i32, align 4
  store %struct.ath9k_htc_priv* %0, %struct.ath9k_htc_priv** %3, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %4, align 8
  %8 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %9 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.ath_common* @ath9k_hw_common(i32 %10)
  store %struct.ath_common* %11, %struct.ath_common** %5, align 8
  %12 = call i32 @memset(%struct.ath9k_htc_target_rate* %6, i32 0, i32 4)
  %13 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %14 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %4, align 8
  %15 = call i32 @ath9k_htc_setup_rate(%struct.ath9k_htc_priv* %13, %struct.ieee80211_sta* %14, %struct.ath9k_htc_target_rate* %6)
  %16 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %17 = call i32 @ath9k_htc_send_rate_cmd(%struct.ath9k_htc_priv* %16, %struct.ath9k_htc_target_rate* %6)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %2
  %21 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %22 = load i32, i32* @CONFIG, align 4
  %23 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %4, align 8
  %24 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.ath9k_htc_target_rate, %struct.ath9k_htc_target_rate* %6, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @be32_to_cpu(i32 %27)
  %29 = call i32 @ath_dbg(%struct.ath_common* %21, i32 %22, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %28)
  br label %30

30:                                               ; preds = %20, %2
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(i32) #1

declare dso_local i32 @memset(%struct.ath9k_htc_target_rate*, i32, i32) #1

declare dso_local i32 @ath9k_htc_setup_rate(%struct.ath9k_htc_priv*, %struct.ieee80211_sta*, %struct.ath9k_htc_target_rate*) #1

declare dso_local i32 @ath9k_htc_send_rate_cmd(%struct.ath9k_htc_priv*, %struct.ath9k_htc_target_rate*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
