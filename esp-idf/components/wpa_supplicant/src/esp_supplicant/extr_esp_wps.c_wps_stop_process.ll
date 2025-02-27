; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/esp_supplicant/extr_esp_wps.c_wps_stop_process.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/esp_supplicant/extr_esp_wps.c_wps_stop_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_sm = type { i32, i32, i32, i64, i32*, i32*, %struct.TYPE_2__*, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@gWpsSm = common dso_local global %struct.wps_sm* null, align 8
@ESP_FAIL = common dso_local global i32 0, align 4
@WPS_STATUS_DISABLE = common dso_local global i32 0, align 4
@SEND_M1 = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Write wps_fail_information\00", align 1
@WIFI_EVENT = common dso_local global i32 0, align 4
@WIFI_EVENT_STA_WPS_ER_FAILED = common dso_local global i32 0, align 4
@portMAX_DELAY = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wps_stop_process(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.wps_sm*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load %struct.wps_sm*, %struct.wps_sm** @gWpsSm, align 8
  store %struct.wps_sm* %5, %struct.wps_sm** %4, align 8
  %6 = load %struct.wps_sm*, %struct.wps_sm** @gWpsSm, align 8
  %7 = icmp ne %struct.wps_sm* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @ESP_FAIL, align 4
  store i32 %9, i32* %2, align 4
  br label %51

10:                                               ; preds = %1
  %11 = load i32, i32* @WPS_STATUS_DISABLE, align 4
  %12 = call i32 @wps_set_status(i32 %11)
  %13 = load %struct.wps_sm*, %struct.wps_sm** %4, align 8
  %14 = getelementptr inbounds %struct.wps_sm, %struct.wps_sm* %13, i32 0, i32 8
  store i64 0, i64* %14, align 8
  %15 = load %struct.wps_sm*, %struct.wps_sm** %4, align 8
  %16 = getelementptr inbounds %struct.wps_sm, %struct.wps_sm* %15, i32 0, i32 7
  store i64 0, i64* %16, align 8
  %17 = load i32, i32* @SEND_M1, align 4
  %18 = load %struct.wps_sm*, %struct.wps_sm** %4, align 8
  %19 = getelementptr inbounds %struct.wps_sm, %struct.wps_sm* %18, i32 0, i32 6
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32 %17, i32* %21, align 4
  %22 = load %struct.wps_sm*, %struct.wps_sm** %4, align 8
  %23 = getelementptr inbounds %struct.wps_sm, %struct.wps_sm* %22, i32 0, i32 5
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* @ETH_ALEN, align 4
  %26 = call i32 @os_bzero(i32* %24, i32 %25)
  %27 = load %struct.wps_sm*, %struct.wps_sm** %4, align 8
  %28 = getelementptr inbounds %struct.wps_sm, %struct.wps_sm* %27, i32 0, i32 4
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @os_bzero(i32* %29, i32 32)
  %31 = load %struct.wps_sm*, %struct.wps_sm** %4, align 8
  %32 = getelementptr inbounds %struct.wps_sm, %struct.wps_sm* %31, i32 0, i32 3
  store i64 0, i64* %32, align 8
  %33 = load %struct.wps_sm*, %struct.wps_sm** %4, align 8
  %34 = getelementptr inbounds %struct.wps_sm, %struct.wps_sm* %33, i32 0, i32 2
  %35 = call i32 @os_bzero(i32* %34, i32 4)
  %36 = call i32 (...) @esp_wifi_disarm_sta_connection_timer_internal()
  %37 = load %struct.wps_sm*, %struct.wps_sm** %4, align 8
  %38 = getelementptr inbounds %struct.wps_sm, %struct.wps_sm* %37, i32 0, i32 1
  %39 = call i32 @ets_timer_disarm(i32* %38)
  %40 = load %struct.wps_sm*, %struct.wps_sm** %4, align 8
  %41 = getelementptr inbounds %struct.wps_sm, %struct.wps_sm* %40, i32 0, i32 0
  %42 = call i32 @ets_timer_disarm(i32* %41)
  %43 = call i32 (...) @esp_wifi_disconnect()
  %44 = load i32, i32* @MSG_DEBUG, align 4
  %45 = call i32 @wpa_printf(i32 %44, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @WIFI_EVENT, align 4
  %47 = load i32, i32* @WIFI_EVENT_STA_WPS_ER_FAILED, align 4
  %48 = load i32, i32* @portMAX_DELAY, align 4
  %49 = call i32 @esp_event_send_internal(i32 %46, i32 %47, i32* %3, i32 4, i32 %48)
  %50 = load i32, i32* @ESP_OK, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %10, %8
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @wps_set_status(i32) #1

declare dso_local i32 @os_bzero(i32*, i32) #1

declare dso_local i32 @esp_wifi_disarm_sta_connection_timer_internal(...) #1

declare dso_local i32 @ets_timer_disarm(i32*) #1

declare dso_local i32 @esp_wifi_disconnect(...) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @esp_event_send_internal(i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
