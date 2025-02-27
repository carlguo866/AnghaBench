; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_client/extr_bta_hf_client_rfc.c_bta_hf_client_rfc_do_close.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_client/extr_bta_hf_client_rfc.c_bta_hf_client_rfc_do_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@bta_hf_client_cb = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@BTA_HF_CLIENT_RFC_CLOSE_EVT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bta_hf_client_rfc_do_close(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call i32 @UNUSED(i32* %4)
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @bta_hf_client_cb, i32 0, i32 0, i32 1), align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @bta_hf_client_cb, i32 0, i32 0, i32 1), align 8
  %10 = call i32 @RFCOMM_RemoveConnection(i64 %9)
  br label %30

11:                                               ; preds = %1
  %12 = call i64 @osi_malloc(i32 4)
  %13 = inttoptr i64 %12 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %3, align 8
  %14 = icmp ne %struct.TYPE_8__* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %11
  %16 = load i32, i32* @BTA_HF_CLIENT_RFC_CLOSE_EVT, align 4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  store i32 %16, i32* %19, align 4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %21 = call i32 @bta_sys_sendmsg(%struct.TYPE_8__* %20)
  br label %22

22:                                               ; preds = %15, %11
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @bta_hf_client_cb, i32 0, i32 0, i32 0), align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @bta_hf_client_cb, i32 0, i32 0, i32 0), align 8
  %27 = call i32 @SDP_CancelServiceSearch(i64 %26)
  %28 = call i32 @bta_hf_client_free_db(i32* null)
  br label %29

29:                                               ; preds = %25, %22
  br label %30

30:                                               ; preds = %29, %8
  ret void
}

declare dso_local i32 @UNUSED(i32*) #1

declare dso_local i32 @RFCOMM_RemoveConnection(i64) #1

declare dso_local i64 @osi_malloc(i32) #1

declare dso_local i32 @bta_sys_sendmsg(%struct.TYPE_8__*) #1

declare dso_local i32 @SDP_CancelServiceSearch(i64) #1

declare dso_local i32 @bta_hf_client_free_db(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
