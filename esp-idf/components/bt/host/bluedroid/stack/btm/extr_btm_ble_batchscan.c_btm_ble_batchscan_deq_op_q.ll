; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_batchscan.c_btm_ble_batchscan_deq_op_q.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_batchscan.c_btm_ble_batchscan_deq_op_q.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i64, i32*, i32* }

@ble_batchscan_cb = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@BTM_BLE_BATCH_SCAN_SUBCODE_MASK = common dso_local global i32 0, align 4
@BTM_BLE_BATCH_SCAN_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btm_ble_batchscan_deq_op_q(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %9 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ble_batchscan_cb, i32 0, i32 0, i32 0), align 8
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ble_batchscan_cb, i32 0, i32 0, i32 1), align 8
  %11 = getelementptr inbounds i32, i32* %9, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = ashr i32 %12, 4
  %14 = load i32*, i32** %7, align 8
  store i32 %13, i32* %14, align 4
  %15 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ble_batchscan_cb, i32 0, i32 0, i32 0), align 8
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ble_batchscan_cb, i32 0, i32 0, i32 1), align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @BTM_BLE_BATCH_SCAN_SUBCODE_MASK, align 4
  %20 = and i32 %18, %19
  %21 = load i32*, i32** %5, align 8
  store i32 %20, i32* %21, align 4
  %22 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ble_batchscan_cb, i32 0, i32 0, i32 3), align 8
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ble_batchscan_cb, i32 0, i32 0, i32 1), align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %8, align 8
  store i32 %25, i32* %26, align 4
  %27 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ble_batchscan_cb, i32 0, i32 0, i32 2), align 8
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ble_batchscan_cb, i32 0, i32 0, i32 1), align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %6, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ble_batchscan_cb, i32 0, i32 0, i32 1), align 8
  %33 = add i64 %32, 1
  %34 = load i32, i32* @BTM_BLE_BATCH_SCAN_MAX, align 4
  %35 = sext i32 %34 to i64
  %36 = urem i64 %33, %35
  store i64 %36, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ble_batchscan_cb, i32 0, i32 0, i32 1), align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
