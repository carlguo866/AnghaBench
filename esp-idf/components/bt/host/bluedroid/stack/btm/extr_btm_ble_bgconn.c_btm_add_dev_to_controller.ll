; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_bgconn.c_btm_add_dev_to_controller.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_bgconn.c_btm_add_dev_to_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@BLE_ADDR_RANDOM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"wl_addr_type is error\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @btm_add_dev_to_controller(i64 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* @FALSE, align 8
  store i64 %9, i64* %8, align 8
  %10 = load i64, i64* %7, align 8
  %11 = load i64, i64* @BLE_ADDR_RANDOM, align 8
  %12 = icmp sgt i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = call i32 @BTM_TRACE_ERROR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %15 = load i64, i64* %8, align 8
  store i64 %15, i64* %4, align 8
  br label %29

16:                                               ; preds = %3
  %17 = load i64, i64* %5, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load i64, i64* %7, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i64 @btsnd_hcic_ble_add_white_list(i64 %20, i32 %21)
  store i64 %22, i64* %8, align 8
  br label %27

23:                                               ; preds = %16
  %24 = load i64, i64* %7, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i64 @btsnd_hcic_ble_remove_from_white_list(i64 %24, i32 %25)
  store i64 %26, i64* %8, align 8
  br label %27

27:                                               ; preds = %23, %19
  %28 = load i64, i64* %8, align 8
  store i64 %28, i64* %4, align 8
  br label %29

29:                                               ; preds = %27, %13
  %30 = load i64, i64* %4, align 8
  ret i64 %30
}

declare dso_local i32 @BTM_TRACE_ERROR(i8*) #1

declare dso_local i64 @btsnd_hcic_ble_add_white_list(i64, i32) #1

declare dso_local i64 @btsnd_hcic_ble_remove_from_white_list(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
