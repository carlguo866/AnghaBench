; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma-buf/extr_dma-resv.c_dma_resv_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma-buf/extr_dma-resv.c_dma_resv_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_resv = type { i32, i32, i32, i32 }

@reservation_ww_class = common dso_local global i32 0, align 4
@reservation_seqcount_string = common dso_local global i32 0, align 4
@reservation_seqcount_class = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dma_resv_init(%struct.dma_resv* %0) #0 {
  %2 = alloca %struct.dma_resv*, align 8
  store %struct.dma_resv* %0, %struct.dma_resv** %2, align 8
  %3 = load %struct.dma_resv*, %struct.dma_resv** %2, align 8
  %4 = getelementptr inbounds %struct.dma_resv, %struct.dma_resv* %3, i32 0, i32 3
  %5 = call i32 @ww_mutex_init(i32* %4, i32* @reservation_ww_class)
  %6 = load %struct.dma_resv*, %struct.dma_resv** %2, align 8
  %7 = getelementptr inbounds %struct.dma_resv, %struct.dma_resv* %6, i32 0, i32 2
  %8 = load i32, i32* @reservation_seqcount_string, align 4
  %9 = call i32 @__seqcount_init(i32* %7, i32 %8, i32* @reservation_seqcount_class)
  %10 = load %struct.dma_resv*, %struct.dma_resv** %2, align 8
  %11 = getelementptr inbounds %struct.dma_resv, %struct.dma_resv* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @RCU_INIT_POINTER(i32 %12, i32* null)
  %14 = load %struct.dma_resv*, %struct.dma_resv** %2, align 8
  %15 = getelementptr inbounds %struct.dma_resv, %struct.dma_resv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @RCU_INIT_POINTER(i32 %16, i32* null)
  ret void
}

declare dso_local i32 @ww_mutex_init(i32*, i32*) #1

declare dso_local i32 @__seqcount_init(i32*, i32, i32*) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
