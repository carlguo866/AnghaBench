; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_gap.c_btm_ble_adv_states_operation.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_gap.c_btm_ble_adv_states_operation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@BTM_BLE_STATE_CONN_ADV_BIT = common dso_local global i32 0, align 4
@BTM_BLE_STATE_NON_CONN_ADV_BIT = common dso_local global i32 0, align 4
@BTM_BLE_STATE_HI_DUTY_DIR_ADV_BIT = common dso_local global i32 0, align 4
@BTM_BLE_STATE_SCAN_ADV_BIT = common dso_local global i32 0, align 4
@BTM_BLE_STATE_LO_DUTY_DIR_ADV_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"unknown adv event : %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32 (i32)**, i32)* @btm_ble_adv_states_operation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btm_ble_adv_states_operation(i32 (i32)** %0, i32 %1) #0 {
  %3 = alloca i32 (i32)**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 (i32)** %0, i32 (i32)*** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @FALSE, align 4
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %33 [
    i32 131, label %8
    i32 128, label %13
    i32 132, label %18
    i32 129, label %23
    i32 130, label %28
  ]

8:                                                ; preds = %2
  %9 = load i32 (i32)**, i32 (i32)*** %3, align 8
  %10 = load i32 (i32)*, i32 (i32)** %9, align 8
  %11 = load i32, i32* @BTM_BLE_STATE_CONN_ADV_BIT, align 4
  %12 = call i32 %10(i32 %11)
  store i32 %12, i32* %5, align 4
  br label %36

13:                                               ; preds = %2
  %14 = load i32 (i32)**, i32 (i32)*** %3, align 8
  %15 = load i32 (i32)*, i32 (i32)** %14, align 8
  %16 = load i32, i32* @BTM_BLE_STATE_NON_CONN_ADV_BIT, align 4
  %17 = call i32 %15(i32 %16)
  store i32 %17, i32* %5, align 4
  br label %36

18:                                               ; preds = %2
  %19 = load i32 (i32)**, i32 (i32)*** %3, align 8
  %20 = load i32 (i32)*, i32 (i32)** %19, align 8
  %21 = load i32, i32* @BTM_BLE_STATE_HI_DUTY_DIR_ADV_BIT, align 4
  %22 = call i32 %20(i32 %21)
  store i32 %22, i32* %5, align 4
  br label %36

23:                                               ; preds = %2
  %24 = load i32 (i32)**, i32 (i32)*** %3, align 8
  %25 = load i32 (i32)*, i32 (i32)** %24, align 8
  %26 = load i32, i32* @BTM_BLE_STATE_SCAN_ADV_BIT, align 4
  %27 = call i32 %25(i32 %26)
  store i32 %27, i32* %5, align 4
  br label %36

28:                                               ; preds = %2
  %29 = load i32 (i32)**, i32 (i32)*** %3, align 8
  %30 = load i32 (i32)*, i32 (i32)** %29, align 8
  %31 = load i32, i32* @BTM_BLE_STATE_LO_DUTY_DIR_ADV_BIT, align 4
  %32 = call i32 %30(i32 %31)
  store i32 %32, i32* %5, align 4
  br label %36

33:                                               ; preds = %2
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @BTM_TRACE_ERROR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %33, %28, %23, %18, %13, %8
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i32 @BTM_TRACE_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
