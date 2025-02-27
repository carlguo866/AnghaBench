; ModuleID = '/home/carl/AnghaBench/linux/drivers/tee/extr_tee_shm.c_tee_shm_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tee/extr_tee_shm.c_tee_shm_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tee_shm = type { i32, i32 }

@TEE_SHM_DMA_BUF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tee_shm_put(%struct.tee_shm* %0) #0 {
  %2 = alloca %struct.tee_shm*, align 8
  store %struct.tee_shm* %0, %struct.tee_shm** %2, align 8
  %3 = load %struct.tee_shm*, %struct.tee_shm** %2, align 8
  %4 = getelementptr inbounds %struct.tee_shm, %struct.tee_shm* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @TEE_SHM_DMA_BUF, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.tee_shm*, %struct.tee_shm** %2, align 8
  %11 = getelementptr inbounds %struct.tee_shm, %struct.tee_shm* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @dma_buf_put(i32 %12)
  br label %14

14:                                               ; preds = %9, %1
  ret void
}

declare dso_local i32 @dma_buf_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
