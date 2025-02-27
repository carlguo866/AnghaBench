; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac-ctxt.c_iwl_mvm_mac_ctxt_send_beacon_v6.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac-ctxt.c_iwl_mvm_mac_ctxt_send_beacon_v6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.ieee80211_vif = type { i64 }
%struct.sk_buff = type { i32, i32 }
%struct.iwl_mvm_vif = type { i64 }
%struct.iwl_mac_beacon_cmd_v6 = type { i32, i32, i32, i32 }

@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, %struct.ieee80211_vif*, %struct.sk_buff*)* @iwl_mvm_mac_ctxt_send_beacon_v6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_mac_ctxt_send_beacon_v6(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.iwl_mvm_vif*, align 8
  %8 = alloca %struct.iwl_mac_beacon_cmd_v6, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %9 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %10 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %9)
  store %struct.iwl_mvm_vif* %10, %struct.iwl_mvm_vif** %7, align 8
  %11 = bitcast %struct.iwl_mac_beacon_cmd_v6* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 16, i1 false)
  %12 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %13 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = getelementptr inbounds %struct.iwl_mac_beacon_cmd_v6, %struct.iwl_mac_beacon_cmd_v6* %8, i32 0, i32 3
  %16 = call i32 @iwl_mvm_mac_ctxt_set_tx(%struct.iwl_mvm* %12, %struct.ieee80211_vif* %13, %struct.sk_buff* %14, i32* %15)
  %17 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %7, align 8
  %18 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = trunc i64 %19 to i32
  %21 = call i32 @cpu_to_le32(i32 %20)
  %22 = getelementptr inbounds %struct.iwl_mac_beacon_cmd_v6, %struct.iwl_mac_beacon_cmd_v6* %8, i32 0, i32 2
  store i32 %21, i32* %22, align 4
  %23 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %24 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %3
  %29 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %30 = getelementptr inbounds %struct.iwl_mac_beacon_cmd_v6, %struct.iwl_mac_beacon_cmd_v6* %8, i32 0, i32 1
  %31 = getelementptr inbounds %struct.iwl_mac_beacon_cmd_v6, %struct.iwl_mac_beacon_cmd_v6* %8, i32 0, i32 0
  %32 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @iwl_mvm_mac_ctxt_set_tim(%struct.iwl_mvm* %29, i32* %30, i32* %31, i32 %34, i32 %37)
  br label %39

39:                                               ; preds = %28, %3
  %40 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %42 = call i32 @iwl_mvm_mac_ctxt_send_beacon_cmd(%struct.iwl_mvm* %40, %struct.sk_buff* %41, %struct.iwl_mac_beacon_cmd_v6* %8, i32 16)
  ret i32 %42
}

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @iwl_mvm_mac_ctxt_set_tx(%struct.iwl_mvm*, %struct.ieee80211_vif*, %struct.sk_buff*, i32*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @iwl_mvm_mac_ctxt_set_tim(%struct.iwl_mvm*, i32*, i32*, i32, i32) #1

declare dso_local i32 @iwl_mvm_mac_ctxt_send_beacon_cmd(%struct.iwl_mvm*, %struct.sk_buff*, %struct.iwl_mac_beacon_cmd_v6*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
