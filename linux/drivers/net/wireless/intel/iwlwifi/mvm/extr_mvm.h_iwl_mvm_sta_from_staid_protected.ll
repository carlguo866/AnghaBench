; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mvm.h_iwl_mvm_sta_from_staid_protected.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mvm.h_iwl_mvm_sta_from_staid_protected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm_sta = type { i32 }
%struct.iwl_mvm = type { i32, i32* }
%struct.ieee80211_sta = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iwl_mvm_sta* (%struct.iwl_mvm*, i64)* @iwl_mvm_sta_from_staid_protected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iwl_mvm_sta* @iwl_mvm_sta_from_staid_protected(%struct.iwl_mvm* %0, i64 %1) #0 {
  %3 = alloca %struct.iwl_mvm_sta*, align 8
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ieee80211_sta*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %9 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = call i64 @ARRAY_SIZE(i32* %10)
  %12 = icmp uge i64 %7, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store %struct.iwl_mvm_sta* null, %struct.iwl_mvm_sta** %3, align 8
  br label %32

14:                                               ; preds = %2
  %15 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %16 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = load i64, i64* %5, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %22 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %21, i32 0, i32 0
  %23 = call i32 @lockdep_is_held(i32* %22)
  %24 = call %struct.ieee80211_sta* @rcu_dereference_protected(i32 %20, i32 %23)
  store %struct.ieee80211_sta* %24, %struct.ieee80211_sta** %6, align 8
  %25 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %26 = call i64 @IS_ERR_OR_NULL(%struct.ieee80211_sta* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %14
  store %struct.iwl_mvm_sta* null, %struct.iwl_mvm_sta** %3, align 8
  br label %32

29:                                               ; preds = %14
  %30 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %31 = call %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta* %30)
  store %struct.iwl_mvm_sta* %31, %struct.iwl_mvm_sta** %3, align 8
  br label %32

32:                                               ; preds = %29, %28, %13
  %33 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %3, align 8
  ret %struct.iwl_mvm_sta* %33
}

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local %struct.ieee80211_sta* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.ieee80211_sta*) #1

declare dso_local %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
