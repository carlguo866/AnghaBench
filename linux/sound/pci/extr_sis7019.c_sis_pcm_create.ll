; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_sis7019.c_sis_pcm_create.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_sis7019.c_sis_pcm_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sis7019 = type { i32, %struct.snd_pcm*, i32 }
%struct.snd_pcm = type { i32, %struct.sis7019* }

@.str = private unnamed_addr constant [8 x i8] c"SiS7019\00", align 1
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@sis_playback_ops = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@sis_capture_ops = common dso_local global i32 0, align 4
@SNDRV_DMA_TYPE_DEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sis7019*)* @sis_pcm_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sis_pcm_create(%struct.sis7019* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sis7019*, align 8
  %4 = alloca %struct.snd_pcm*, align 8
  %5 = alloca i32, align 4
  store %struct.sis7019* %0, %struct.sis7019** %3, align 8
  %6 = load %struct.sis7019*, %struct.sis7019** %3, align 8
  %7 = getelementptr inbounds %struct.sis7019, %struct.sis7019* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @snd_pcm_new(i32 %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 0, i32 64, i32 1, %struct.snd_pcm** %4)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %38

14:                                               ; preds = %1
  %15 = load %struct.sis7019*, %struct.sis7019** %3, align 8
  %16 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %17 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %16, i32 0, i32 1
  store %struct.sis7019* %15, %struct.sis7019** %17, align 8
  %18 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %19 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @strcpy(i32 %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %23 = load %struct.sis7019*, %struct.sis7019** %3, align 8
  %24 = getelementptr inbounds %struct.sis7019, %struct.sis7019* %23, i32 0, i32 1
  store %struct.snd_pcm* %22, %struct.snd_pcm** %24, align 8
  %25 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %26 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %27 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %25, i32 %26, i32* @sis_playback_ops)
  %28 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %29 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %30 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %28, i32 %29, i32* @sis_capture_ops)
  %31 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %32 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %33 = load %struct.sis7019*, %struct.sis7019** %3, align 8
  %34 = getelementptr inbounds %struct.sis7019, %struct.sis7019* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @snd_dma_pci_data(i32 %35)
  %37 = call i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm* %31, i32 %32, i32 %36, i32 65536, i32 131072)
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %14, %12
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @snd_pcm_new(i32, i8*, i32, i32, i32, %struct.snd_pcm**) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @snd_pcm_set_ops(%struct.snd_pcm*, i32, i32*) #1

declare dso_local i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_dma_pci_data(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
