; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/atmel/extr_atmel-pcm-pdc.c_atmel_pcm_preallocate_dma_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/atmel/extr_atmel-pcm-pdc.c_atmel_pcm_preallocate_dma_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { %struct.snd_pcm_substream* }
%struct.snd_pcm_substream = type { %struct.snd_dma_buffer }
%struct.snd_dma_buffer = type { i64, i64, i64, i32*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@ATMEL_SSC_DMABUF_SIZE = common dso_local global i64 0, align 8
@SNDRV_DMA_TYPE_DEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"atmel-pcm: alloc dma buffer: area=%p, addr=%p, size=%zu\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm*, i32)* @atmel_pcm_preallocate_dma_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_pcm_preallocate_dma_buffer(%struct.snd_pcm* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_pcm_substream*, align 8
  %7 = alloca %struct.snd_dma_buffer*, align 8
  %8 = alloca i64, align 8
  store %struct.snd_pcm* %0, %struct.snd_pcm** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %10 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %15, align 8
  store %struct.snd_pcm_substream* %16, %struct.snd_pcm_substream** %6, align 8
  %17 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %18 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %17, i32 0, i32 0
  store %struct.snd_dma_buffer* %18, %struct.snd_dma_buffer** %7, align 8
  %19 = load i64, i64* @ATMEL_SSC_DMABUF_SIZE, align 8
  store i64 %19, i64* %8, align 8
  %20 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %21 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %7, align 8
  %22 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  store i32 %20, i32* %23, align 4
  %24 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %25 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %7, align 8
  %30 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 8
  %32 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %7, align 8
  %33 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %32, i32 0, i32 3
  store i32* null, i32** %33, align 8
  %34 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %35 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* %8, align 8
  %40 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %7, align 8
  %41 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %40, i32 0, i32 2
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call i64 @dma_alloc_coherent(i32 %38, i64 %39, i64* %41, i32 %42)
  %44 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %7, align 8
  %45 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  %46 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %7, align 8
  %47 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to i8*
  %50 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %7, align 8
  %51 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to i8*
  %54 = load i64, i64* %8, align 8
  %55 = call i32 @pr_debug(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i8* %49, i8* %53, i64 %54)
  %56 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %7, align 8
  %57 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %2
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %67

63:                                               ; preds = %2
  %64 = load i64, i64* %8, align 8
  %65 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %7, align 8
  %66 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %63, %60
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i64 @dma_alloc_coherent(i32, i64, i64*, i32) #1

declare dso_local i32 @pr_debug(i8*, i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
