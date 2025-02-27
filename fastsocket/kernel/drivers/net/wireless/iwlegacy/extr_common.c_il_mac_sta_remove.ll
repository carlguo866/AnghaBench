; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_common.c_il_mac_sta_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_common.c_il_mac_sta_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.il_priv* }
%struct.il_priv = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_sta = type { i32, i64 }
%struct.il_station_priv_common = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"enter station %pM\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Error removing station %pM\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"leave ret %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @il_mac_sta_remove(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_sta* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.ieee80211_sta*, align 8
  %7 = alloca %struct.il_priv*, align 8
  %8 = alloca %struct.il_station_priv_common*, align 8
  %9 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %6, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %11 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %10, i32 0, i32 0
  %12 = load %struct.il_priv*, %struct.il_priv** %11, align 8
  store %struct.il_priv* %12, %struct.il_priv** %7, align 8
  %13 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %14 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = bitcast i8* %16 to %struct.il_station_priv_common*
  store %struct.il_station_priv_common* %17, %struct.il_station_priv_common** %8, align 8
  %18 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %19 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %22 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @D_MAC80211(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %26 = load %struct.il_station_priv_common*, %struct.il_station_priv_common** %8, align 8
  %27 = getelementptr inbounds %struct.il_station_priv_common, %struct.il_station_priv_common* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %30 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @il_remove_station(%struct.il_priv* %25, i32 %28, i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %3
  %36 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %37 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @IL_ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %35, %3
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @D_MAC80211(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  %43 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %44 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %43, i32 0, i32 0
  %45 = call i32 @mutex_unlock(i32* %44)
  %46 = load i32, i32* %9, align 4
  ret i32 %46
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @D_MAC80211(i8*, i32) #1

declare dso_local i32 @il_remove_station(%struct.il_priv*, i32, i32) #1

declare dso_local i32 @IL_ERR(i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
