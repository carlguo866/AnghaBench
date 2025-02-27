; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_sun6i-dma.c_sun6i_dma_free_chan_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_sun6i-dma.c_sun6i_dma_free_chan_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.sun6i_dma_dev = type { i32 }
%struct.sun6i_vchan = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_chan*)* @sun6i_dma_free_chan_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun6i_dma_free_chan_resources(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.sun6i_dma_dev*, align 8
  %4 = alloca %struct.sun6i_vchan*, align 8
  %5 = alloca i64, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %6 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %7 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.sun6i_dma_dev* @to_sun6i_dma_dev(i32 %8)
  store %struct.sun6i_dma_dev* %9, %struct.sun6i_dma_dev** %3, align 8
  %10 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %11 = call %struct.sun6i_vchan* @to_sun6i_vchan(%struct.dma_chan* %10)
  store %struct.sun6i_vchan* %11, %struct.sun6i_vchan** %4, align 8
  %12 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %3, align 8
  %13 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %12, i32 0, i32 0
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.sun6i_vchan*, %struct.sun6i_vchan** %4, align 8
  %17 = getelementptr inbounds %struct.sun6i_vchan, %struct.sun6i_vchan* %16, i32 0, i32 1
  %18 = call i32 @list_del_init(i32* %17)
  %19 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %3, align 8
  %20 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %19, i32 0, i32 0
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @spin_unlock_irqrestore(i32* %20, i64 %21)
  %23 = load %struct.sun6i_vchan*, %struct.sun6i_vchan** %4, align 8
  %24 = getelementptr inbounds %struct.sun6i_vchan, %struct.sun6i_vchan* %23, i32 0, i32 0
  %25 = call i32 @vchan_free_chan_resources(i32* %24)
  ret void
}

declare dso_local %struct.sun6i_dma_dev* @to_sun6i_dma_dev(i32) #1

declare dso_local %struct.sun6i_vchan* @to_sun6i_vchan(%struct.dma_chan*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @vchan_free_chan_resources(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
