; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq.c_blk_mq_queue_inflight.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq.c_blk_mq_queue_inflight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }

@blk_mq_rq_inflight = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blk_mq_queue_inflight(%struct.request_queue* %0) #0 {
  %2 = alloca %struct.request_queue*, align 8
  %3 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %5 = load i32, i32* @blk_mq_rq_inflight, align 4
  %6 = call i32 @blk_mq_queue_tag_busy_iter(%struct.request_queue* %4, i32 %5, i32* %3)
  %7 = load i32, i32* %3, align 4
  ret i32 %7
}

declare dso_local i32 @blk_mq_queue_tag_busy_iter(%struct.request_queue*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
