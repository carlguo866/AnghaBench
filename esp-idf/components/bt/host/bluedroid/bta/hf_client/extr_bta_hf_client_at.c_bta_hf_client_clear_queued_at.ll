; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_client/extr_bta_hf_client_at.c_bta_hf_client_clear_queued_at.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_client/extr_bta_hf_client_at.c_bta_hf_client_clear_queued_at.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_8__* }

@bta_hf_client_cb = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @bta_hf_client_clear_queued_at to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bta_hf_client_clear_queued_at() #0 {
  %1 = alloca %struct.TYPE_8__*, align 8
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @bta_hf_client_cb, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %1, align 8
  br label %4

4:                                                ; preds = %7, %0
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %6 = icmp ne %struct.TYPE_8__* %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %4
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %2, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %12 = call i32 @osi_free(%struct.TYPE_8__* %11)
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %1, align 8
  br label %4

14:                                               ; preds = %4
  store %struct.TYPE_8__* null, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @bta_hf_client_cb, i32 0, i32 0, i32 0, i32 0), align 8
  ret void
}

declare dso_local i32 @osi_free(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
