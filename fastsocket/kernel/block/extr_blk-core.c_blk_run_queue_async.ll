; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-core.c_blk_run_queue_async.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-core.c_blk_run_queue_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }

@kblockd_workqueue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blk_run_queue_async(%struct.request_queue* %0) #0 {
  %2 = alloca %struct.request_queue*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %2, align 8
  %3 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %4 = call i32 @blk_queue_stopped(%struct.request_queue* %3)
  %5 = icmp ne i32 %4, 0
  %6 = xor i1 %5, true
  %7 = zext i1 %6 to i32
  %8 = call i64 @likely(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %12 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %11, i32 0, i32 0
  %13 = call i32 @__cancel_delayed_work(i32* %12)
  %14 = load i32, i32* @kblockd_workqueue, align 4
  %15 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %16 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %15, i32 0, i32 0
  %17 = call i32 @queue_delayed_work(i32 %14, i32* %16, i32 0)
  br label %18

18:                                               ; preds = %10, %1
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @blk_queue_stopped(%struct.request_queue*) #1

declare dso_local i32 @__cancel_delayed_work(i32*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
