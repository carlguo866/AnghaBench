; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/api/extr_esp_gatts_api.c_esp_ble_gatts_open.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/api/extr_esp_gatts_api.c_esp_ble_gatts_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }

@ESP_BLUEDROID_STATUS_ENABLED = common dso_local global i32 0, align 4
@BTC_SIG_API_CALL = common dso_local global i32 0, align 4
@BTC_PID_GATTS = common dso_local global i32 0, align 4
@BTC_GATTS_ACT_OPEN = common dso_local global i32 0, align 4
@BT_STATUS_SUCCESS = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i32 0, align 4
@ESP_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_ble_gatts_open(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__, align 4
  %8 = alloca %struct.TYPE_8__, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @ESP_BLUEDROID_STATUS_ENABLED, align 4
  %10 = call i32 @ESP_BLUEDROID_STATUS_CHECK(i32 %9)
  %11 = load i32, i32* @BTC_SIG_API_CALL, align 4
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* @BTC_PID_GATTS, align 4
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* @BTC_GATTS_ACT_OPEN, align 4
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* %4, align 4
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* %6, align 4
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @memcpy(i32* %24, i32 %25, i32 4)
  %27 = call i64 @btc_transfer_context(%struct.TYPE_7__* %7, %struct.TYPE_8__* %8, i32 12, i32* null)
  %28 = load i64, i64* @BT_STATUS_SUCCESS, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %3
  %31 = load i32, i32* @ESP_OK, align 4
  br label %34

32:                                               ; preds = %3
  %33 = load i32, i32* @ESP_FAIL, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  ret i32 %35
}

declare dso_local i32 @ESP_BLUEDROID_STATUS_CHECK(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i64 @btc_transfer_context(%struct.TYPE_7__*, %struct.TYPE_8__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
