; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/dm/extr_bta_dm_act.c_bta_dm_ble_set_scan_rsp.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/dm/extr_bta_dm_act.c_bta_dm_ble_set_scan_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (i32)*, i64, i32 }

@BTA_FAILURE = common dso_local global i32 0, align 4
@BTM_SUCCESS = common dso_local global i64 0, align 8
@BTA_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bta_dm_ble_set_scan_rsp(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %4 = load i32, i32* @BTA_FAILURE, align 4
  store i32 %4, i32* %3, align 4
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i32*
  %14 = call i64 @BTM_BleWriteScanRsp(i32 %8, i32* %13)
  %15 = load i64, i64* @BTM_SUCCESS, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @BTA_SUCCESS, align 4
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %17, %1
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32 (i32)*, i32 (i32)** %22, align 8
  %24 = icmp ne i32 (i32)* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32 (i32)*, i32 (i32)** %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = call i32 %29(i32 %30)
  br label %32

32:                                               ; preds = %25, %19
  ret void
}

declare dso_local i64 @BTM_BleWriteScanRsp(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
