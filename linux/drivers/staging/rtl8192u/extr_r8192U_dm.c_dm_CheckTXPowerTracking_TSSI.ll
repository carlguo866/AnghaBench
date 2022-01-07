; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8192U_dm.c_dm_CheckTXPowerTracking_TSSI.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8192U_dm.c_dm_CheckTXPowerTracking_TSSI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i32, i32, i32 }

@dm_CheckTXPowerTracking_TSSI.tx_power_track_counter = internal global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @dm_CheckTXPowerTracking_TSSI to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dm_CheckTXPowerTracking_TSSI(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8192_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %4)
  store %struct.r8192_priv* %5, %struct.r8192_priv** %3, align 8
  %6 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %7 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %28

11:                                               ; preds = %1
  %12 = load i32, i32* @dm_CheckTXPowerTracking_TSSI.tx_power_track_counter, align 4
  %13 = srem i32 %12, 30
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %11
  %16 = load i32, i32* @dm_CheckTXPowerTracking_TSSI.tx_power_track_counter, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %15
  %19 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %20 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %23 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %22, i32 0, i32 0
  %24 = call i32 @queue_delayed_work(i32 %21, i32* %23, i32 0)
  br label %25

25:                                               ; preds = %18, %15, %11
  %26 = load i32, i32* @dm_CheckTXPowerTracking_TSSI.tx_power_track_counter, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* @dm_CheckTXPowerTracking_TSSI.tx_power_track_counter, align 4
  br label %28

28:                                               ; preds = %25, %10
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
