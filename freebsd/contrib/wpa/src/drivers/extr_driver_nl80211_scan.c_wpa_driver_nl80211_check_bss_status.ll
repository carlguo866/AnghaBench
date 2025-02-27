; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_scan.c_wpa_driver_nl80211_check_bss_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_scan.c_wpa_driver_nl80211_check_bss_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_driver_nl80211_data = type { i32 }
%struct.wpa_scan_results = type { i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_driver_nl80211_data*, %struct.wpa_scan_results*)* @wpa_driver_nl80211_check_bss_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpa_driver_nl80211_check_bss_status(%struct.wpa_driver_nl80211_data* %0, %struct.wpa_scan_results* %1) #0 {
  %3 = alloca %struct.wpa_driver_nl80211_data*, align 8
  %4 = alloca %struct.wpa_scan_results*, align 8
  %5 = alloca i64, align 8
  store %struct.wpa_driver_nl80211_data* %0, %struct.wpa_driver_nl80211_data** %3, align 8
  store %struct.wpa_scan_results* %1, %struct.wpa_scan_results** %4, align 8
  store i64 0, i64* %5, align 8
  br label %6

6:                                                ; preds = %21, %2
  %7 = load i64, i64* %5, align 8
  %8 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %4, align 8
  %9 = getelementptr inbounds %struct.wpa_scan_results, %struct.wpa_scan_results* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ult i64 %7, %10
  br i1 %11, label %12, label %24

12:                                               ; preds = %6
  %13 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %3, align 8
  %14 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %4, align 8
  %15 = getelementptr inbounds %struct.wpa_scan_results, %struct.wpa_scan_results* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = load i64, i64* %5, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @nl80211_check_bss_status(%struct.wpa_driver_nl80211_data* %13, i32 %19)
  br label %21

21:                                               ; preds = %12
  %22 = load i64, i64* %5, align 8
  %23 = add i64 %22, 1
  store i64 %23, i64* %5, align 8
  br label %6

24:                                               ; preds = %6
  ret void
}

declare dso_local i32 @nl80211_check_bss_status(%struct.wpa_driver_nl80211_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
