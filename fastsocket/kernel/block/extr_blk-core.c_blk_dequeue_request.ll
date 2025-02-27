; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-core.c_blk_dequeue_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-core.c_blk_dequeue_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32, %struct.request_queue* }
%struct.request_queue = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blk_dequeue_request(%struct.request* %0) #0 {
  %2 = alloca %struct.request*, align 8
  %3 = alloca %struct.request_queue*, align 8
  store %struct.request* %0, %struct.request** %2, align 8
  %4 = load %struct.request*, %struct.request** %2, align 8
  %5 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 1
  %6 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  store %struct.request_queue* %6, %struct.request_queue** %3, align 8
  %7 = load %struct.request*, %struct.request** %2, align 8
  %8 = getelementptr inbounds %struct.request, %struct.request* %7, i32 0, i32 0
  %9 = call i32 @list_empty(i32* %8)
  %10 = call i32 @BUG_ON(i32 %9)
  %11 = load %struct.request*, %struct.request** %2, align 8
  %12 = call i32 @ELV_ON_HASH(%struct.request* %11)
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = load %struct.request*, %struct.request** %2, align 8
  %15 = getelementptr inbounds %struct.request, %struct.request* %14, i32 0, i32 0
  %16 = call i32 @list_del_init(i32* %15)
  %17 = load %struct.request*, %struct.request** %2, align 8
  %18 = call i64 @blk_account_rq(%struct.request* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %1
  %21 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %22 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.request*, %struct.request** %2, align 8
  %25 = call i64 @rq_is_sync(%struct.request* %24)
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  %29 = load %struct.request*, %struct.request** %2, align 8
  %30 = call i32 @set_io_start_time_ns(%struct.request* %29)
  br label %31

31:                                               ; preds = %20, %1
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @ELV_ON_HASH(%struct.request*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i64 @blk_account_rq(%struct.request*) #1

declare dso_local i64 @rq_is_sync(%struct.request*) #1

declare dso_local i32 @set_io_start_time_ns(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
