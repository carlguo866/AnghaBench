; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_loop.c_nvme_loop_init_admin_hctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_loop.c_nvme_loop_init_admin_hctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_hw_ctx = type { %struct.nvme_loop_queue* }
%struct.nvme_loop_queue = type { i32 }
%struct.nvme_loop_ctrl = type { %struct.nvme_loop_queue* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blk_mq_hw_ctx*, i8*, i32)* @nvme_loop_init_admin_hctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_loop_init_admin_hctx(%struct.blk_mq_hw_ctx* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.blk_mq_hw_ctx*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvme_loop_ctrl*, align 8
  %8 = alloca %struct.nvme_loop_queue*, align 8
  store %struct.blk_mq_hw_ctx* %0, %struct.blk_mq_hw_ctx** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.nvme_loop_ctrl*
  store %struct.nvme_loop_ctrl* %10, %struct.nvme_loop_ctrl** %7, align 8
  %11 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %7, align 8
  %12 = getelementptr inbounds %struct.nvme_loop_ctrl, %struct.nvme_loop_ctrl* %11, i32 0, i32 0
  %13 = load %struct.nvme_loop_queue*, %struct.nvme_loop_queue** %12, align 8
  %14 = getelementptr inbounds %struct.nvme_loop_queue, %struct.nvme_loop_queue* %13, i64 0
  store %struct.nvme_loop_queue* %14, %struct.nvme_loop_queue** %8, align 8
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load %struct.nvme_loop_queue*, %struct.nvme_loop_queue** %8, align 8
  %20 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %4, align 8
  %21 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %20, i32 0, i32 0
  store %struct.nvme_loop_queue* %19, %struct.nvme_loop_queue** %21, align 8
  ret i32 0
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
