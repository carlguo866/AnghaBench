; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-core.c_nvme_submit_flush_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-core.c_nvme_submit_flush_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_queue = type { i32 }
%struct.nvme_ns = type { i32 }

@CMD_CTX_FLUSH = common dso_local global i64 0, align 8
@special_completion = common dso_local global i32 0, align 4
@NVME_IO_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvme_submit_flush_data(%struct.nvme_queue* %0, %struct.nvme_ns* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvme_queue*, align 8
  %5 = alloca %struct.nvme_ns*, align 8
  %6 = alloca i32, align 4
  store %struct.nvme_queue* %0, %struct.nvme_queue** %4, align 8
  store %struct.nvme_ns* %1, %struct.nvme_ns** %5, align 8
  %7 = load %struct.nvme_queue*, %struct.nvme_queue** %4, align 8
  %8 = load i64, i64* @CMD_CTX_FLUSH, align 8
  %9 = inttoptr i64 %8 to i8*
  %10 = load i32, i32* @special_completion, align 4
  %11 = load i32, i32* @NVME_IO_TIMEOUT, align 4
  %12 = call i32 @alloc_cmdid(%struct.nvme_queue* %7, i8* %9, i32 %10, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %3, align 4
  br label %25

20:                                               ; preds = %2
  %21 = load %struct.nvme_queue*, %struct.nvme_queue** %4, align 8
  %22 = load %struct.nvme_ns*, %struct.nvme_ns** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @nvme_submit_flush(%struct.nvme_queue* %21, %struct.nvme_ns* %22, i32 %23)
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %20, %18
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @alloc_cmdid(%struct.nvme_queue*, i8*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @nvme_submit_flush(%struct.nvme_queue*, %struct.nvme_ns*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
