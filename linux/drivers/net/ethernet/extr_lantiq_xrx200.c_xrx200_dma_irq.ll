; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_lantiq_xrx200.c_xrx200_dma_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_lantiq_xrx200.c_xrx200_dma_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xrx200_chan = type { i32, i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @xrx200_dma_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xrx200_dma_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.xrx200_chan*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.xrx200_chan*
  store %struct.xrx200_chan* %7, %struct.xrx200_chan** %5, align 8
  %8 = load %struct.xrx200_chan*, %struct.xrx200_chan** %5, align 8
  %9 = getelementptr inbounds %struct.xrx200_chan, %struct.xrx200_chan* %8, i32 0, i32 1
  %10 = call i32 @ltq_dma_disable_irq(i32* %9)
  %11 = load %struct.xrx200_chan*, %struct.xrx200_chan** %5, align 8
  %12 = getelementptr inbounds %struct.xrx200_chan, %struct.xrx200_chan* %11, i32 0, i32 1
  %13 = call i32 @ltq_dma_ack_irq(i32* %12)
  %14 = load %struct.xrx200_chan*, %struct.xrx200_chan** %5, align 8
  %15 = getelementptr inbounds %struct.xrx200_chan, %struct.xrx200_chan* %14, i32 0, i32 0
  %16 = call i32 @napi_schedule(i32* %15)
  %17 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %17
}

declare dso_local i32 @ltq_dma_disable_irq(i32*) #1

declare dso_local i32 @ltq_dma_ack_irq(i32*) #1

declare dso_local i32 @napi_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
