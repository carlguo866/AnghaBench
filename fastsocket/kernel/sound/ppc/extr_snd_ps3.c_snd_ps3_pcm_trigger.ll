; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/ppc/extr_snd_ps3.c_snd_ps3_pcm_trigger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/ppc/extr_snd_ps3.c_snd_ps3_pcm_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_ps3_card_info = type { i32, i32 }

@PS3_AUDIO_AX_IS = common dso_local global i32 0, align 4
@SND_PS3_DMA_FILLTYPE_SILENT_FIRSTFILL = common dso_local global i32 0, align 4
@PS3_AUDIO_KICK_STATUS_MASK = common dso_local global i32 0, align 4
@SND_PS3_DMA_FILLTYPE_SILENT_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @snd_ps3_pcm_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ps3_pcm_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_ps3_card_info*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %8 = call %struct.snd_ps3_card_info* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %7)
  store %struct.snd_ps3_card_info* %8, %struct.snd_ps3_card_info** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %51 [
    i32 129, label %10
    i32 128, label %40
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* @PS3_AUDIO_AX_IS, align 4
  %12 = call i32 @update_reg(i32 %11, i32 0)
  %13 = load %struct.snd_ps3_card_info*, %struct.snd_ps3_card_info** %5, align 8
  %14 = getelementptr inbounds %struct.snd_ps3_card_info, %struct.snd_ps3_card_info* %13, i32 0, i32 1
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.snd_ps3_card_info*, %struct.snd_ps3_card_info** %5, align 8
  %17 = getelementptr inbounds %struct.snd_ps3_card_info, %struct.snd_ps3_card_info* %16, i32 0, i32 0
  store i32 1, i32* %17, align 4
  %18 = load %struct.snd_ps3_card_info*, %struct.snd_ps3_card_info** %5, align 8
  %19 = getelementptr inbounds %struct.snd_ps3_card_info, %struct.snd_ps3_card_info* %18, i32 0, i32 1
  %20 = call i32 @spin_unlock(i32* %19)
  %21 = load %struct.snd_ps3_card_info*, %struct.snd_ps3_card_info** %5, align 8
  %22 = load i32, i32* @SND_PS3_DMA_FILLTYPE_SILENT_FIRSTFILL, align 4
  %23 = call i32 @snd_ps3_program_dma(%struct.snd_ps3_card_info* %21, i32 %22)
  %24 = load %struct.snd_ps3_card_info*, %struct.snd_ps3_card_info** %5, align 8
  %25 = call i32 @snd_ps3_kick_dma(%struct.snd_ps3_card_info* %24)
  br label %26

26:                                               ; preds = %32, %10
  %27 = call i32 @PS3_AUDIO_KICK(i32 7)
  %28 = call i32 @read_reg(i32 %27)
  %29 = load i32, i32* @PS3_AUDIO_KICK_STATUS_MASK, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = call i32 @udelay(i32 1)
  br label %26

34:                                               ; preds = %26
  %35 = load %struct.snd_ps3_card_info*, %struct.snd_ps3_card_info** %5, align 8
  %36 = load i32, i32* @SND_PS3_DMA_FILLTYPE_SILENT_RUNNING, align 4
  %37 = call i32 @snd_ps3_program_dma(%struct.snd_ps3_card_info* %35, i32 %36)
  %38 = load %struct.snd_ps3_card_info*, %struct.snd_ps3_card_info** %5, align 8
  %39 = call i32 @snd_ps3_kick_dma(%struct.snd_ps3_card_info* %38)
  br label %52

40:                                               ; preds = %2
  %41 = load %struct.snd_ps3_card_info*, %struct.snd_ps3_card_info** %5, align 8
  %42 = getelementptr inbounds %struct.snd_ps3_card_info, %struct.snd_ps3_card_info* %41, i32 0, i32 1
  %43 = call i32 @spin_lock(i32* %42)
  %44 = load %struct.snd_ps3_card_info*, %struct.snd_ps3_card_info** %5, align 8
  %45 = getelementptr inbounds %struct.snd_ps3_card_info, %struct.snd_ps3_card_info* %44, i32 0, i32 0
  store i32 0, i32* %45, align 4
  %46 = load %struct.snd_ps3_card_info*, %struct.snd_ps3_card_info** %5, align 8
  %47 = getelementptr inbounds %struct.snd_ps3_card_info, %struct.snd_ps3_card_info* %46, i32 0, i32 1
  %48 = call i32 @spin_unlock(i32* %47)
  %49 = load %struct.snd_ps3_card_info*, %struct.snd_ps3_card_info** %5, align 8
  %50 = call i32 @snd_ps3_wait_for_dma_stop(%struct.snd_ps3_card_info* %49)
  br label %52

51:                                               ; preds = %2
  br label %52

52:                                               ; preds = %51, %40, %34
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

declare dso_local %struct.snd_ps3_card_info* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @update_reg(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @snd_ps3_program_dma(%struct.snd_ps3_card_info*, i32) #1

declare dso_local i32 @snd_ps3_kick_dma(%struct.snd_ps3_card_info*) #1

declare dso_local i32 @read_reg(i32) #1

declare dso_local i32 @PS3_AUDIO_KICK(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @snd_ps3_wait_for_dma_stop(%struct.snd_ps3_card_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
