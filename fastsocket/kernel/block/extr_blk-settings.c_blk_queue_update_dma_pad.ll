; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-settings.c_blk_queue_update_dma_pad.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-settings.c_blk_queue_update_dma_pad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blk_queue_update_dma_pad(%struct.request_queue* %0, i32 %1) #0 {
  %3 = alloca %struct.request_queue*, align 8
  %4 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %7 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ugt i32 %5, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %13 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  br label %14

14:                                               ; preds = %10, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
