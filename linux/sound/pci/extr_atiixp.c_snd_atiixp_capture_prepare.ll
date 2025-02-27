; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_atiixp.c_snd_atiixp_capture_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_atiixp.c_snd_atiixp_capture_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.atiixp = type { i32 }

@CMD = common dso_local global i32 0, align 4
@ATI_REG_CMD_INTERLEAVE_IN = common dso_local global i32 0, align 4
@SNDRV_PCM_FORMAT_S16_LE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_atiixp_capture_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_atiixp_capture_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.atiixp*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %4 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %5 = call %struct.atiixp* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %4)
  store %struct.atiixp* %5, %struct.atiixp** %3, align 8
  %6 = load %struct.atiixp*, %struct.atiixp** %3, align 8
  %7 = getelementptr inbounds %struct.atiixp, %struct.atiixp* %6, i32 0, i32 0
  %8 = call i32 @spin_lock_irq(i32* %7)
  %9 = load %struct.atiixp*, %struct.atiixp** %3, align 8
  %10 = load i32, i32* @CMD, align 4
  %11 = load i32, i32* @ATI_REG_CMD_INTERLEAVE_IN, align 4
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SNDRV_PCM_FORMAT_S16_LE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @ATI_REG_CMD_INTERLEAVE_IN, align 4
  br label %22

21:                                               ; preds = %1
  br label %22

22:                                               ; preds = %21, %19
  %23 = phi i32 [ %20, %19 ], [ 0, %21 ]
  %24 = call i32 @atiixp_update(%struct.atiixp* %9, i32 %10, i32 %11, i32 %23)
  %25 = load %struct.atiixp*, %struct.atiixp** %3, align 8
  %26 = getelementptr inbounds %struct.atiixp, %struct.atiixp* %25, i32 0, i32 0
  %27 = call i32 @spin_unlock_irq(i32* %26)
  ret i32 0
}

declare dso_local %struct.atiixp* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @atiixp_update(%struct.atiixp*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
