; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/dm/extr_bta_dm_act.c_bta_dm_observe_cmpl_cb.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/dm/extr_bta_dm_act.c_bta_dm_observe_cmpl_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 (i32, %struct.TYPE_8__*)* }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"bta_dm_observe_cmpl_cb\00", align 1
@bta_dm_search_cb = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@BTA_DM_INQ_CMPL_EVT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @bta_dm_observe_cmpl_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bta_dm_observe_cmpl_cb(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_8__, align 4
  store i8* %0, i8** %2, align 8
  %4 = call i32 @APPL_TRACE_DEBUG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.TYPE_7__*
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  %11 = load i32 (i32, %struct.TYPE_8__*)*, i32 (i32, %struct.TYPE_8__*)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @bta_dm_search_cb, i32 0, i32 0), align 8
  %12 = icmp ne i32 (i32, %struct.TYPE_8__*)* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load i32 (i32, %struct.TYPE_8__*)*, i32 (i32, %struct.TYPE_8__*)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @bta_dm_search_cb, i32 0, i32 0), align 8
  %15 = load i32, i32* @BTA_DM_INQ_CMPL_EVT, align 4
  %16 = call i32 %14(i32 %15, %struct.TYPE_8__* %3)
  br label %17

17:                                               ; preds = %13, %1
  ret void
}

declare dso_local i32 @APPL_TRACE_DEBUG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
