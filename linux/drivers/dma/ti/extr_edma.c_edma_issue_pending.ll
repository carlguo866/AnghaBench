; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ti/extr_edma.c_edma_issue_pending.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ti/extr_edma.c_edma_issue_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.edma_chan = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_chan*)* @edma_issue_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @edma_issue_pending(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.edma_chan*, align 8
  %4 = alloca i64, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %5 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %6 = call %struct.edma_chan* @to_edma_chan(%struct.dma_chan* %5)
  store %struct.edma_chan* %6, %struct.edma_chan** %3, align 8
  %7 = load %struct.edma_chan*, %struct.edma_chan** %3, align 8
  %8 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.edma_chan*, %struct.edma_chan** %3, align 8
  %13 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %12, i32 0, i32 0
  %14 = call i64 @vchan_issue_pending(%struct.TYPE_2__* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %1
  %17 = load %struct.edma_chan*, %struct.edma_chan** %3, align 8
  %18 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load %struct.edma_chan*, %struct.edma_chan** %3, align 8
  %23 = call i32 @edma_execute(%struct.edma_chan* %22)
  br label %24

24:                                               ; preds = %21, %16, %1
  %25 = load %struct.edma_chan*, %struct.edma_chan** %3, align 8
  %26 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %4, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32* %27, i64 %28)
  ret void
}

declare dso_local %struct.edma_chan* @to_edma_chan(%struct.dma_chan*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @vchan_issue_pending(%struct.TYPE_2__*) #1

declare dso_local i32 @edma_execute(%struct.edma_chan*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
