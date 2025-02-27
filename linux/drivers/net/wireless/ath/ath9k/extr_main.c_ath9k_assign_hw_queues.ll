; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_assign_hw_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_assign_hw_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i64 }
%struct.ieee80211_vif = type { i32*, i64, i64 }

@IEEE80211_NUM_ACS = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@NL80211_IFTYPE_MESH_POINT = common dso_local global i64 0, align 8
@IEEE80211_INVAL_HW_QUEUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*)* @ath9k_assign_hw_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_assign_hw_queues(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %4, align 8
  %6 = call i32 (...) @ath9k_is_chanctx_enabled()
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  br label %48

9:                                                ; preds = %2
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %22, %9
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @IEEE80211_NUM_ACS, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %10
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %17 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  store i32 %15, i32* %21, align 4
  br label %22

22:                                               ; preds = %14
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %5, align 4
  br label %10

25:                                               ; preds = %10
  %26 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %27 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %37, label %31

31:                                               ; preds = %25
  %32 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %33 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @NL80211_IFTYPE_MESH_POINT, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %31, %25
  %38 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %39 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = sub nsw i64 %40, 2
  %42 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %43 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %42, i32 0, i32 2
  store i64 %41, i64* %43, align 8
  br label %48

44:                                               ; preds = %31
  %45 = load i64, i64* @IEEE80211_INVAL_HW_QUEUE, align 8
  %46 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %47 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %46, i32 0, i32 2
  store i64 %45, i64* %47, align 8
  br label %48

48:                                               ; preds = %8, %44, %37
  ret void
}

declare dso_local i32 @ath9k_is_chanctx_enabled(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
