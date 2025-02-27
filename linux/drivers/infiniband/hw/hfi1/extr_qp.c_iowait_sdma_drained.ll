; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_qp.c_iowait_sdma_drained.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_qp.c_iowait_sdma_drained.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iowait = type { i32 }
%struct.rvt_qp = type { i32, i32 }

@RVT_S_WAIT_DMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iowait*)* @iowait_sdma_drained to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iowait_sdma_drained(%struct.iowait* %0) #0 {
  %2 = alloca %struct.iowait*, align 8
  %3 = alloca %struct.rvt_qp*, align 8
  %4 = alloca i64, align 8
  store %struct.iowait* %0, %struct.iowait** %2, align 8
  %5 = load %struct.iowait*, %struct.iowait** %2, align 8
  %6 = call %struct.rvt_qp* @iowait_to_qp(%struct.iowait* %5)
  store %struct.rvt_qp* %6, %struct.rvt_qp** %3, align 8
  %7 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %8 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %7, i32 0, i32 1
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %12 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @RVT_S_WAIT_DMA, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %1
  %18 = load i32, i32* @RVT_S_WAIT_DMA, align 4
  %19 = xor i32 %18, -1
  %20 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %21 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, %19
  store i32 %23, i32* %21, align 4
  %24 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %25 = call i32 @hfi1_schedule_send(%struct.rvt_qp* %24)
  br label %26

26:                                               ; preds = %17, %1
  %27 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %28 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %27, i32 0, i32 1
  %29 = load i64, i64* %4, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* %28, i64 %29)
  ret void
}

declare dso_local %struct.rvt_qp* @iowait_to_qp(%struct.iowait*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @hfi1_schedule_send(%struct.rvt_qp*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
