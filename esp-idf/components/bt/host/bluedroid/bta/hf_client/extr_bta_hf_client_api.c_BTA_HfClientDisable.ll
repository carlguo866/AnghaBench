; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_client/extr_bta_hf_client_api.c_BTA_HfClientDisable.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_client/extr_bta_hf_client_api.c_BTA_HfClientDisable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@BTA_HF_CLIENT_API_DISABLE_EVT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BTA_HfClientDisable() #0 {
  %1 = alloca %struct.TYPE_3__*, align 8
  %2 = call i64 @osi_malloc(i32 4)
  %3 = inttoptr i64 %2 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %1, align 8
  %4 = icmp ne %struct.TYPE_3__* %3, null
  br i1 %4, label %5, label %11

5:                                                ; preds = %0
  %6 = load i32, i32* @BTA_HF_CLIENT_API_DISABLE_EVT, align 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %10 = call i32 @bta_sys_sendmsg(%struct.TYPE_3__* %9)
  br label %11

11:                                               ; preds = %5, %0
  ret void
}

declare dso_local i64 @osi_malloc(i32) #1

declare dso_local i32 @bta_sys_sendmsg(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
