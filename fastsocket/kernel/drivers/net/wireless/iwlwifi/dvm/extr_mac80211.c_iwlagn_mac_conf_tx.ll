; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_mac80211.c_iwlagn_mac_conf_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_mac80211.c_iwlagn_mac_conf_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i64 }
%struct.ieee80211_tx_queue_params = type { i32, i32, i32, i32 }
%struct.iwl_priv = type { i32 }
%struct.iwl_vif_priv = type { %struct.iwl_rxon_context* }
%struct.iwl_rxon_context = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i8*, i32, i8*, i8* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"leave - RF not ready\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@AC_NUM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"leave - queue >= AC_NUM %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"leave\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, i32, %struct.ieee80211_tx_queue_params*)* @iwlagn_mac_conf_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwlagn_mac_conf_tx(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, i32 %2, %struct.ieee80211_tx_queue_params* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca %struct.ieee80211_vif*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_tx_queue_params*, align 8
  %10 = alloca %struct.iwl_priv*, align 8
  %11 = alloca %struct.iwl_vif_priv*, align 8
  %12 = alloca %struct.iwl_rxon_context*, align 8
  %13 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ieee80211_tx_queue_params* %3, %struct.ieee80211_tx_queue_params** %9, align 8
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %15 = call %struct.iwl_priv* @IWL_MAC80211_GET_DVM(%struct.ieee80211_hw* %14)
  store %struct.iwl_priv* %15, %struct.iwl_priv** %10, align 8
  %16 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %17 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i8*
  %20 = bitcast i8* %19 to %struct.iwl_vif_priv*
  store %struct.iwl_vif_priv* %20, %struct.iwl_vif_priv** %11, align 8
  %21 = load %struct.iwl_vif_priv*, %struct.iwl_vif_priv** %11, align 8
  %22 = getelementptr inbounds %struct.iwl_vif_priv, %struct.iwl_vif_priv* %21, i32 0, i32 0
  %23 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %22, align 8
  store %struct.iwl_rxon_context* %23, %struct.iwl_rxon_context** %12, align 8
  %24 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %12, align 8
  %25 = icmp ne %struct.iwl_rxon_context* %24, null
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i64 @WARN_ON(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %4
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %126

33:                                               ; preds = %4
  %34 = load %struct.iwl_priv*, %struct.iwl_priv** %10, align 8
  %35 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_MAC80211(%struct.iwl_priv* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.iwl_priv*, %struct.iwl_priv** %10, align 8
  %37 = call i32 @iwl_is_ready_rf(%struct.iwl_priv* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %33
  %40 = load %struct.iwl_priv*, %struct.iwl_priv** %10, align 8
  %41 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_MAC80211(%struct.iwl_priv* %40, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* @EIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %126

44:                                               ; preds = %33
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @AC_NUM, align 4
  %47 = icmp sge i32 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load %struct.iwl_priv*, %struct.iwl_priv** %10, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_MAC80211(%struct.iwl_priv* %49, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  store i32 0, i32* %5, align 4
  br label %126

52:                                               ; preds = %44
  %53 = load i32, i32* @AC_NUM, align 4
  %54 = sub nsw i32 %53, 1
  %55 = load i32, i32* %8, align 4
  %56 = sub nsw i32 %54, %55
  store i32 %56, i32* %13, align 4
  %57 = load %struct.iwl_priv*, %struct.iwl_priv** %10, align 8
  %58 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %57, i32 0, i32 0
  %59 = call i32 @mutex_lock(i32* %58)
  %60 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %9, align 8
  %61 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i8* @cpu_to_le16(i32 %62)
  %64 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %12, align 8
  %65 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = load i32, i32* %13, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 4
  store i8* %63, i8** %72, align 8
  %73 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %9, align 8
  %74 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i8* @cpu_to_le16(i32 %75)
  %77 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %12, align 8
  %78 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = load i32, i32* %13, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 3
  store i8* %76, i8** %85, align 8
  %86 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %9, align 8
  %87 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %12, align 8
  %90 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = load i32, i32* %13, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 2
  store i32 %88, i32* %97, align 8
  %98 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %9, align 8
  %99 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = mul nsw i32 %100, 32
  %102 = call i8* @cpu_to_le16(i32 %101)
  %103 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %12, align 8
  %104 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = load i32, i32* %13, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  store i8* %102, i8** %111, align 8
  %112 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %12, align 8
  %113 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = load i32, i32* %13, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  store i64 0, i64* %120, align 8
  %121 = load %struct.iwl_priv*, %struct.iwl_priv** %10, align 8
  %122 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %121, i32 0, i32 0
  %123 = call i32 @mutex_unlock(i32* %122)
  %124 = load %struct.iwl_priv*, %struct.iwl_priv** %10, align 8
  %125 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_MAC80211(%struct.iwl_priv* %124, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %126

126:                                              ; preds = %52, %48, %39, %30
  %127 = load i32, i32* %5, align 4
  ret i32 %127
}

declare dso_local %struct.iwl_priv* @IWL_MAC80211_GET_DVM(%struct.ieee80211_hw*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @IWL_DEBUG_MAC80211(%struct.iwl_priv*, i8*, ...) #1

declare dso_local i32 @iwl_is_ready_rf(%struct.iwl_priv*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
