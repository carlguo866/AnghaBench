; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_img-mdc-dma.c_mdc_alloc_chan_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_img-mdc-dma.c_mdc_alloc_chan_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.mdc_chan = type { i32 }
%struct.device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*)* @mdc_alloc_chan_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdc_alloc_chan_resources(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.mdc_chan*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %5 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %6 = call %struct.mdc_chan* @to_mdc_chan(%struct.dma_chan* %5)
  store %struct.mdc_chan* %6, %struct.mdc_chan** %3, align 8
  %7 = load %struct.mdc_chan*, %struct.mdc_chan** %3, align 8
  %8 = getelementptr inbounds %struct.mdc_chan, %struct.mdc_chan* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.device* @mdma2dev(i32 %9)
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call i32 @pm_runtime_get_sync(%struct.device* %11)
  ret i32 %12
}

declare dso_local %struct.mdc_chan* @to_mdc_chan(%struct.dma_chan*) #1

declare dso_local %struct.device* @mdma2dev(i32) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
