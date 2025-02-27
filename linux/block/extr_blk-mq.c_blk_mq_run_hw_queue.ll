; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq.c_blk_mq_run_hw_queue.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq.c_blk_mq_run_hw_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_hw_ctx = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blk_mq_run_hw_queue(%struct.blk_mq_hw_ctx* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.blk_mq_hw_ctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.blk_mq_hw_ctx* %0, %struct.blk_mq_hw_ctx** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %4, align 8
  %9 = call i32 @hctx_lock(%struct.blk_mq_hw_ctx* %8, i32* %6)
  %10 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %4, align 8
  %11 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @blk_queue_quiesced(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %4, align 8
  %17 = call i64 @blk_mq_hctx_has_pending(%struct.blk_mq_hw_ctx* %16)
  %18 = icmp ne i64 %17, 0
  br label %19

19:                                               ; preds = %15, %2
  %20 = phi i1 [ false, %2 ], [ %18, %15 ]
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %7, align 4
  %22 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %4, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @hctx_unlock(%struct.blk_mq_hw_ctx* %22, i32 %23)
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %19
  %28 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @__blk_mq_delay_run_hw_queue(%struct.blk_mq_hw_ctx* %28, i32 %29, i32 0)
  store i32 1, i32* %3, align 4
  br label %32

31:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %27
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @hctx_lock(%struct.blk_mq_hw_ctx*, i32*) #1

declare dso_local i32 @blk_queue_quiesced(i32) #1

declare dso_local i64 @blk_mq_hctx_has_pending(%struct.blk_mq_hw_ctx*) #1

declare dso_local i32 @hctx_unlock(%struct.blk_mq_hw_ctx*, i32) #1

declare dso_local i32 @__blk_mq_delay_run_hw_queue(%struct.blk_mq_hw_ctx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
