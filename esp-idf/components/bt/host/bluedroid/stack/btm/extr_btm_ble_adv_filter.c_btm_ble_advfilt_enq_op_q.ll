; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_adv_filter.c_btm_ble_advfilt_enq_op_q.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_adv_filter.c_btm_ble_advfilt_enq_op_q.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i64, i32**, i32**, i32*, i32* }

@btm_ble_adv_filt_cb = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [76 x i8] c"btm_ble_advfilt_enq_op_q: act_ocf:%d, action:%d, ocf:%d,cb_evt;%d, cback:%p\00", align 1
@BTM_BLE_PF_TYPE_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btm_ble_advfilt_enq_op_q(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = shl i32 %14, 4
  %16 = or i32 %13, %15
  %17 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_ble_adv_filt_cb, i32 0, i32 0, i32 0), align 8
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_ble_adv_filt_cb, i32 0, i32 0, i32 1), align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  store i32 %16, i32* %19, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_ble_adv_filt_cb, i32 0, i32 0, i32 5), align 8
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_ble_adv_filt_cb, i32 0, i32 0, i32 1), align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  store i32 %20, i32* %23, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_ble_adv_filt_cb, i32 0, i32 0, i32 4), align 8
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_ble_adv_filt_cb, i32 0, i32 0, i32 1), align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  store i32 %24, i32* %27, align 4
  %28 = load i32*, i32** %11, align 8
  %29 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_ble_adv_filt_cb, i32 0, i32 0, i32 3), align 8
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_ble_adv_filt_cb, i32 0, i32 0, i32 1), align 8
  %31 = getelementptr inbounds i32*, i32** %29, i64 %30
  store i32* %28, i32** %31, align 8
  %32 = load i32*, i32** %12, align 8
  %33 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_ble_adv_filt_cb, i32 0, i32 0, i32 2), align 8
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_ble_adv_filt_cb, i32 0, i32 0, i32 1), align 8
  %35 = getelementptr inbounds i32*, i32** %33, i64 %34
  store i32* %32, i32** %35, align 8
  %36 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_ble_adv_filt_cb, i32 0, i32 0, i32 0), align 8
  %37 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_ble_adv_filt_cb, i32 0, i32 0, i32 1), align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32*, i32** %11, align 8
  %44 = call i32 @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %40, i32 %41, i32 %42, i32* %43)
  %45 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_ble_adv_filt_cb, i32 0, i32 0, i32 1), align 8
  %46 = add i64 %45, 1
  %47 = load i32, i32* @BTM_BLE_PF_TYPE_MAX, align 4
  %48 = sext i32 %47 to i64
  %49 = urem i64 %46, %48
  store i64 %49, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_ble_adv_filt_cb, i32 0, i32 0, i32 1), align 8
  ret void
}

declare dso_local i32 @BTM_TRACE_DEBUG(i8*, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
