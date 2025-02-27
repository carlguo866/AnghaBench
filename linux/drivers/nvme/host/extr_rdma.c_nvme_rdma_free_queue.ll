; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_rdma.c_nvme_rdma_free_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_rdma.c_nvme_rdma_free_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_rdma_queue = type { i32, i32 }

@NVME_RDMA_Q_ALLOCATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_rdma_queue*)* @nvme_rdma_free_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_rdma_free_queue(%struct.nvme_rdma_queue* %0) #0 {
  %2 = alloca %struct.nvme_rdma_queue*, align 8
  store %struct.nvme_rdma_queue* %0, %struct.nvme_rdma_queue** %2, align 8
  %3 = load i32, i32* @NVME_RDMA_Q_ALLOCATED, align 4
  %4 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %2, align 8
  %5 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %4, i32 0, i32 1
  %6 = call i32 @test_and_clear_bit(i32 %3, i32* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %16

9:                                                ; preds = %1
  %10 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %2, align 8
  %11 = call i32 @nvme_rdma_destroy_queue_ib(%struct.nvme_rdma_queue* %10)
  %12 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %2, align 8
  %13 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @rdma_destroy_id(i32 %14)
  br label %16

16:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @nvme_rdma_destroy_queue_ib(%struct.nvme_rdma_queue*) #1

declare dso_local i32 @rdma_destroy_id(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
