; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/api/extr_esp_gattc_api.c_esp_ble_gattc_search_service.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/api/extr_esp_gattc_api.c_esp_ble_gattc_search_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }

@ESP_BLUEDROID_STATUS_ENABLED = common dso_local global i32 0, align 4
@BTC_SIG_API_CALL = common dso_local global i32 0, align 4
@BTC_PID_GATTC = common dso_local global i32 0, align 4
@BTC_GATTC_ACT_SEARCH_SERVICE = common dso_local global i32 0, align 4
@BT_STATUS_SUCCESS = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i32 0, align 4
@ESP_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_ble_gattc_search_service(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__, align 4
  %8 = alloca %struct.TYPE_8__, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load i32, i32* @ESP_BLUEDROID_STATUS_ENABLED, align 4
  %10 = call i32 @ESP_BLUEDROID_STATUS_CHECK(i32 %9)
  %11 = load i32, i32* @BTC_SIG_API_CALL, align 4
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* @BTC_PID_GATTC, align 4
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* @BTC_GATTC_ACT_SEARCH_SERVICE, align 4
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @BTC_GATT_CREATE_CONN_ID(i32 %17, i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store i32 1, i32* %26, align 4
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @memcpy(i32* %28, i32* %29, i32 4)
  br label %34

31:                                               ; preds = %3
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  store i32 0, i32* %33, align 4
  br label %34

34:                                               ; preds = %31, %24
  %35 = call i64 @btc_transfer_context(%struct.TYPE_7__* %7, %struct.TYPE_8__* %8, i32 12, i32* null)
  %36 = load i64, i64* @BT_STATUS_SUCCESS, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* @ESP_OK, align 4
  br label %42

40:                                               ; preds = %34
  %41 = load i32, i32* @ESP_FAIL, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  ret i32 %43
}

declare dso_local i32 @ESP_BLUEDROID_STATUS_CHECK(i32) #1

declare dso_local i32 @BTC_GATT_CREATE_CONN_ID(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @btc_transfer_context(%struct.TYPE_7__*, %struct.TYPE_8__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
