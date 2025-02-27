; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_mlme_ext.c_set_tx_beacon_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_mlme_ext.c_set_tx_beacon_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.mlme_ext_priv, %struct.cmd_priv }
%struct.mlme_ext_priv = type { %struct.mlme_ext_info }
%struct.mlme_ext_info = type { i32, i32 }
%struct.cmd_priv = type { i32 }
%struct.cmd_obj = type { i32 }
%struct.wlan_bssid_ex = type { i64, i64 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@_FAIL = common dso_local global i32 0, align 4
@_BEACON_IE_OFFSET_ = common dso_local global i64 0, align 8
@_TX_Beacon_CMD_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_tx_beacon_cmd(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.cmd_obj*, align 8
  %4 = alloca %struct.wlan_bssid_ex*, align 8
  %5 = alloca %struct.cmd_priv*, align 8
  %6 = alloca %struct.mlme_ext_priv*, align 8
  %7 = alloca %struct.mlme_ext_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %10 = load %struct.adapter*, %struct.adapter** %2, align 8
  %11 = getelementptr inbounds %struct.adapter, %struct.adapter* %10, i32 0, i32 1
  store %struct.cmd_priv* %11, %struct.cmd_priv** %5, align 8
  %12 = load %struct.adapter*, %struct.adapter** %2, align 8
  %13 = getelementptr inbounds %struct.adapter, %struct.adapter* %12, i32 0, i32 0
  store %struct.mlme_ext_priv* %13, %struct.mlme_ext_priv** %6, align 8
  %14 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %15 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %14, i32 0, i32 0
  store %struct.mlme_ext_info* %15, %struct.mlme_ext_info** %7, align 8
  store i32 0, i32* %9, align 4
  %16 = load i32, i32* @GFP_ATOMIC, align 4
  %17 = call %struct.cmd_obj* @kzalloc(i32 4, i32 %16)
  store %struct.cmd_obj* %17, %struct.cmd_obj** %3, align 8
  %18 = load %struct.cmd_obj*, %struct.cmd_obj** %3, align 8
  %19 = icmp ne %struct.cmd_obj* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @_FAIL, align 4
  store i32 %21, i32* %8, align 4
  br label %61

22:                                               ; preds = %1
  %23 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %7, align 8
  %24 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %23, i32 0, i32 1
  %25 = load i32, i32* @GFP_ATOMIC, align 4
  %26 = call %struct.wlan_bssid_ex* @kmemdup(i32* %24, i32 16, i32 %25)
  store %struct.wlan_bssid_ex* %26, %struct.wlan_bssid_ex** %4, align 8
  %27 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %4, align 8
  %28 = icmp eq %struct.wlan_bssid_ex* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = load %struct.cmd_obj*, %struct.cmd_obj** %3, align 8
  %31 = call i32 @kfree(%struct.cmd_obj* %30)
  %32 = load i32, i32* @_FAIL, align 4
  store i32 %32, i32* %8, align 4
  br label %61

33:                                               ; preds = %22
  %34 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %4, align 8
  %35 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @_BEACON_IE_OFFSET_, align 8
  %38 = add nsw i64 %36, %37
  %39 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %4, align 8
  %40 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @_BEACON_IE_OFFSET_, align 8
  %43 = sub nsw i64 %41, %42
  %44 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %7, align 8
  %45 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @update_hidden_ssid(i64 %38, i64 %43, i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %4, align 8
  %51 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, %49
  store i64 %53, i64* %51, align 8
  %54 = load %struct.cmd_obj*, %struct.cmd_obj** %3, align 8
  %55 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %4, align 8
  %56 = load i32, i32* @_TX_Beacon_CMD_, align 4
  %57 = call i32 @init_h2fwcmd_w_parm_no_rsp(%struct.cmd_obj* %54, %struct.wlan_bssid_ex* %55, i32 %56)
  %58 = load %struct.cmd_priv*, %struct.cmd_priv** %5, align 8
  %59 = load %struct.cmd_obj*, %struct.cmd_obj** %3, align 8
  %60 = call i32 @rtw_enqueue_cmd(%struct.cmd_priv* %58, %struct.cmd_obj* %59)
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %33, %29, %20
  %62 = load i32, i32* %8, align 4
  ret i32 %62
}

declare dso_local %struct.cmd_obj* @kzalloc(i32, i32) #1

declare dso_local %struct.wlan_bssid_ex* @kmemdup(i32*, i32, i32) #1

declare dso_local i32 @kfree(%struct.cmd_obj*) #1

declare dso_local i32 @update_hidden_ssid(i64, i64, i32) #1

declare dso_local i32 @init_h2fwcmd_w_parm_no_rsp(%struct.cmd_obj*, %struct.wlan_bssid_ex*, i32) #1

declare dso_local i32 @rtw_enqueue_cmd(%struct.cmd_priv*, %struct.cmd_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
