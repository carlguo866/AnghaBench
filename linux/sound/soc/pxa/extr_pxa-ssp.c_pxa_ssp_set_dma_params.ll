; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/pxa/extr_pxa-ssp.c_pxa_ssp_set_dma_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/pxa/extr_pxa-ssp.c_pxa_ssp_set_dma_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssp_device = type { i64 }
%struct.snd_dmaengine_dai_dma_data = type { i32, i64, i32 }

@DMA_SLAVE_BUSWIDTH_4_BYTES = common dso_local global i32 0, align 4
@DMA_SLAVE_BUSWIDTH_2_BYTES = common dso_local global i32 0, align 4
@SSDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ssp_device*, i32, i32, %struct.snd_dmaengine_dai_dma_data*)* @pxa_ssp_set_dma_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pxa_ssp_set_dma_params(%struct.ssp_device* %0, i32 %1, i32 %2, %struct.snd_dmaengine_dai_dma_data* %3) #0 {
  %5 = alloca %struct.ssp_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_dmaengine_dai_dma_data*, align 8
  store %struct.ssp_device* %0, %struct.ssp_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.snd_dmaengine_dai_dma_data* %3, %struct.snd_dmaengine_dai_dma_data** %8, align 8
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %4
  %12 = load i32, i32* @DMA_SLAVE_BUSWIDTH_4_BYTES, align 4
  br label %15

13:                                               ; preds = %4
  %14 = load i32, i32* @DMA_SLAVE_BUSWIDTH_2_BYTES, align 4
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i32 [ %12, %11 ], [ %14, %13 ]
  %17 = load %struct.snd_dmaengine_dai_dma_data*, %struct.snd_dmaengine_dai_dma_data** %8, align 8
  %18 = getelementptr inbounds %struct.snd_dmaengine_dai_dma_data, %struct.snd_dmaengine_dai_dma_data* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 8
  %19 = load %struct.snd_dmaengine_dai_dma_data*, %struct.snd_dmaengine_dai_dma_data** %8, align 8
  %20 = getelementptr inbounds %struct.snd_dmaengine_dai_dma_data, %struct.snd_dmaengine_dai_dma_data* %19, i32 0, i32 0
  store i32 16, i32* %20, align 8
  %21 = load %struct.ssp_device*, %struct.ssp_device** %5, align 8
  %22 = getelementptr inbounds %struct.ssp_device, %struct.ssp_device* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SSDR, align 8
  %25 = add nsw i64 %23, %24
  %26 = load %struct.snd_dmaengine_dai_dma_data*, %struct.snd_dmaengine_dai_dma_data** %8, align 8
  %27 = getelementptr inbounds %struct.snd_dmaengine_dai_dma_data, %struct.snd_dmaengine_dai_dma_data* %26, i32 0, i32 1
  store i64 %25, i64* %27, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
