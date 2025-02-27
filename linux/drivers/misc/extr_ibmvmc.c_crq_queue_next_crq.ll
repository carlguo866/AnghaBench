; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_ibmvmc.c_crq_queue_next_crq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_ibmvmc.c_crq_queue_next_crq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvmc_crq_msg = type { i32 }
%struct.crq_queue = type { i64, i64, i32, %struct.ibmvmc_crq_msg* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ibmvmc_crq_msg* (%struct.crq_queue*)* @crq_queue_next_crq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ibmvmc_crq_msg* @crq_queue_next_crq(%struct.crq_queue* %0) #0 {
  %2 = alloca %struct.crq_queue*, align 8
  %3 = alloca %struct.ibmvmc_crq_msg*, align 8
  %4 = alloca i64, align 8
  store %struct.crq_queue* %0, %struct.crq_queue** %2, align 8
  %5 = load %struct.crq_queue*, %struct.crq_queue** %2, align 8
  %6 = getelementptr inbounds %struct.crq_queue, %struct.crq_queue* %5, i32 0, i32 2
  %7 = load i64, i64* %4, align 8
  %8 = call i32 @spin_lock_irqsave(i32* %6, i64 %7)
  %9 = load %struct.crq_queue*, %struct.crq_queue** %2, align 8
  %10 = getelementptr inbounds %struct.crq_queue, %struct.crq_queue* %9, i32 0, i32 3
  %11 = load %struct.ibmvmc_crq_msg*, %struct.ibmvmc_crq_msg** %10, align 8
  %12 = load %struct.crq_queue*, %struct.crq_queue** %2, align 8
  %13 = getelementptr inbounds %struct.crq_queue, %struct.crq_queue* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.ibmvmc_crq_msg, %struct.ibmvmc_crq_msg* %11, i64 %14
  store %struct.ibmvmc_crq_msg* %15, %struct.ibmvmc_crq_msg** %3, align 8
  %16 = load %struct.ibmvmc_crq_msg*, %struct.ibmvmc_crq_msg** %3, align 8
  %17 = getelementptr inbounds %struct.ibmvmc_crq_msg, %struct.ibmvmc_crq_msg* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, 128
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %1
  %22 = load %struct.crq_queue*, %struct.crq_queue** %2, align 8
  %23 = getelementptr inbounds %struct.crq_queue, %struct.crq_queue* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* %23, align 8
  %26 = load %struct.crq_queue*, %struct.crq_queue** %2, align 8
  %27 = getelementptr inbounds %struct.crq_queue, %struct.crq_queue* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %25, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %21
  %31 = load %struct.crq_queue*, %struct.crq_queue** %2, align 8
  %32 = getelementptr inbounds %struct.crq_queue, %struct.crq_queue* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  br label %33

33:                                               ; preds = %30, %21
  %34 = call i32 (...) @dma_rmb()
  br label %36

35:                                               ; preds = %1
  store %struct.ibmvmc_crq_msg* null, %struct.ibmvmc_crq_msg** %3, align 8
  br label %36

36:                                               ; preds = %35, %33
  %37 = load %struct.crq_queue*, %struct.crq_queue** %2, align 8
  %38 = getelementptr inbounds %struct.crq_queue, %struct.crq_queue* %37, i32 0, i32 2
  %39 = load i64, i64* %4, align 8
  %40 = call i32 @spin_unlock_irqrestore(i32* %38, i64 %39)
  %41 = load %struct.ibmvmc_crq_msg*, %struct.ibmvmc_crq_msg** %3, align 8
  ret %struct.ibmvmc_crq_msg* %41
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dma_rmb(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
