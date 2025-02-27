; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ap.c_wpa_supplicant_conf_ap_ht.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ap.c_wpa_supplicant_conf_ap_ht.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i64, i64, %struct.wpa_supplicant*, %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.wpa_supplicant* }
%struct.TYPE_4__ = type { i32, %struct.hostapd_hw_modes* }
%struct.hostapd_hw_modes = type { i64, i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.wpa_ssid = type { i32, i32, i64, i32, i64, i64, i64, i64 }
%struct.hostapd_config = type { i64, i32, i32, i32, i32, i32, i32, i32, i32 }

@NUM_HOSTAPD_MODES = common dso_local global i64 0, align 8
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Unsupported AP mode frequency: %d MHz\00", align 1
@HOSTAPD_MODE_IEEE80211A = common dso_local global i64 0, align 8
@HT_CAP_INFO_GREEN_FIELD = common dso_local global i32 0, align 4
@HT_CAP_INFO_MAX_AMSDU_SIZE = common dso_local global i32 0, align 4
@HT_CAP_INFO_RX_STBC_MASK = common dso_local global i32 0, align 4
@HT_CAP_INFO_SHORT_GI20MHZ = common dso_local global i32 0, align 4
@HT_CAP_INFO_SHORT_GI40MHZ = common dso_local global i32 0, align 4
@HT_CAP_INFO_SUPP_CHANNEL_WIDTH_SET = common dso_local global i32 0, align 4
@HT_CAP_INFO_TX_STBC = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@WPA_AUTHENTICATING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpa_supplicant_conf_ap_ht(%struct.wpa_supplicant* %0, %struct.wpa_ssid* %1, %struct.hostapd_config* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wpa_supplicant*, align 8
  %6 = alloca %struct.wpa_ssid*, align 8
  %7 = alloca %struct.hostapd_config*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %5, align 8
  store %struct.wpa_ssid* %1, %struct.wpa_ssid** %6, align 8
  store %struct.hostapd_config* %2, %struct.hostapd_config** %7, align 8
  %8 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %9 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.hostapd_config*, %struct.hostapd_config** %7, align 8
  %12 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %11, i32 0, i32 8
  %13 = call i64 @ieee80211_freq_to_chan(i32 %10, i32* %12)
  %14 = load %struct.hostapd_config*, %struct.hostapd_config** %7, align 8
  %15 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  %16 = load %struct.hostapd_config*, %struct.hostapd_config** %7, align 8
  %17 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @NUM_HOSTAPD_MODES, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %3
  %22 = load i32, i32* @MSG_ERROR, align 4
  %23 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %24 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 (i32, i8*, ...) @wpa_printf(i32 %22, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %25)
  store i32 -1, i32* %4, align 4
  br label %28

27:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %27, %21
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i64 @ieee80211_freq_to_chan(i32, i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
