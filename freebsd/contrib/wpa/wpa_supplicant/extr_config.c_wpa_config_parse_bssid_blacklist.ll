; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config.c_wpa_config_parse_bssid_blacklist.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config.c_wpa_config_parse_bssid_blacklist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse_data = type { i32 }
%struct.wpa_ssid = type { i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"bssid_blacklist\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parse_data*, %struct.wpa_ssid*, i32, i8*)* @wpa_config_parse_bssid_blacklist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_config_parse_bssid_blacklist(%struct.parse_data* %0, %struct.wpa_ssid* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.parse_data*, align 8
  %6 = alloca %struct.wpa_ssid*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.parse_data* %0, %struct.parse_data** %5, align 8
  store %struct.wpa_ssid* %1, %struct.wpa_ssid** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %9 = load %struct.parse_data*, %struct.parse_data** %5, align 8
  %10 = load i32, i32* %7, align 4
  %11 = load i8*, i8** %8, align 8
  %12 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %13 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %12, i32 0, i32 1
  %14 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %15 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %14, i32 0, i32 0
  %16 = call i32 @wpa_config_parse_addr_list(%struct.parse_data* %9, i32 %10, i8* %11, i32* %13, i32* %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 1, i32 1)
  ret i32 %16
}

declare dso_local i32 @wpa_config_parse_addr_list(%struct.parse_data*, i32, i8*, i32*, i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
