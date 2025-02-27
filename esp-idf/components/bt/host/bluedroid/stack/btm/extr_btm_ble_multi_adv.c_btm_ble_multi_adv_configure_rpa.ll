; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_multi_adv.c_btm_ble_multi_adv_configure_rpa.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_multi_adv.c_btm_ble_multi_adv_configure_rpa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32* }
%struct.TYPE_4__ = type { i32 }

@btm_multi_adv_idx_q = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@BTM_BLE_MULTI_ADV_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"outstanding rand generation exceeded max allowed \00", align 1
@btm_ble_multi_adv_gen_rpa_cmpl = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btm_ble_multi_adv_configure_rpa(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @btm_multi_adv_idx_q, i32 0, i32 0), align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @btm_multi_adv_idx_q, i32 0, i32 1), align 4
  %5 = add nsw i32 %4, 1
  %6 = load i32, i32* @BTM_BLE_MULTI_ADV_MAX, align 4
  %7 = srem i32 %5, %6
  %8 = icmp eq i32 %3, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 @BTM_TRACE_ERROR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %32

11:                                               ; preds = %1
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @btm_multi_adv_idx_q, i32 0, i32 0), align 8
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @btm_multi_adv_idx_q, i32 0, i32 0), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @btm_multi_adv_idx_q, i32 0, i32 1), align 4
  br label %20

15:                                               ; preds = %11
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @btm_multi_adv_idx_q, i32 0, i32 1), align 4
  %17 = add nsw i32 %16, 1
  %18 = load i32, i32* @BTM_BLE_MULTI_ADV_MAX, align 4
  %19 = srem i32 %17, %18
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @btm_multi_adv_idx_q, i32 0, i32 1), align 4
  br label %20

20:                                               ; preds = %15, %14
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @btm_multi_adv_idx_q, i32 0, i32 2), align 8
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @btm_multi_adv_idx_q, i32 0, i32 1), align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  store i32 %23, i32* %27, align 4
  br label %28

28:                                               ; preds = %20
  %29 = load i64, i64* @btm_ble_multi_adv_gen_rpa_cmpl, align 8
  %30 = inttoptr i64 %29 to i8*
  %31 = call i32 @btm_gen_resolvable_private_addr(i8* %30)
  br label %32

32:                                               ; preds = %28, %9
  ret void
}

declare dso_local i32 @BTM_TRACE_ERROR(i8*) #1

declare dso_local i32 @btm_gen_resolvable_private_addr(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
