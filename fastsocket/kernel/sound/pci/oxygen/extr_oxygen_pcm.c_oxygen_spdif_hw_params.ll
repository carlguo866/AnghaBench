; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_oxygen_pcm.c_oxygen_spdif_hw_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_oxygen_pcm.c_oxygen_spdif_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.oxygen = type { i32, i32 }

@OXYGEN_SPDIF_CONTROL = common dso_local global i32 0, align 4
@OXYGEN_SPDIF_OUT_ENABLE = common dso_local global i32 0, align 4
@OXYGEN_PLAY_FORMAT = common dso_local global i32 0, align 4
@OXYGEN_SPDIF_FORMAT_SHIFT = common dso_local global i32 0, align 4
@OXYGEN_SPDIF_FORMAT_MASK = common dso_local global i32 0, align 4
@OXYGEN_SPDIF_OUT_RATE_SHIFT = common dso_local global i32 0, align 4
@OXYGEN_SPDIF_OUT_RATE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @oxygen_spdif_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oxygen_spdif_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.oxygen*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %9 = call %struct.oxygen* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %8)
  store %struct.oxygen* %9, %struct.oxygen** %6, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %11 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %12 = call i32 @oxygen_hw_params(%struct.snd_pcm_substream* %10, %struct.snd_pcm_hw_params* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %3, align 4
  br label %52

17:                                               ; preds = %2
  %18 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %19 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %22 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %21, i32 0, i32 1
  %23 = call i32 @spin_lock_irq(i32* %22)
  %24 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %25 = load i32, i32* @OXYGEN_SPDIF_CONTROL, align 4
  %26 = load i32, i32* @OXYGEN_SPDIF_OUT_ENABLE, align 4
  %27 = call i32 @oxygen_clear_bits32(%struct.oxygen* %24, i32 %25, i32 %26)
  %28 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %29 = load i32, i32* @OXYGEN_PLAY_FORMAT, align 4
  %30 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %31 = call i32 @oxygen_format(%struct.snd_pcm_hw_params* %30)
  %32 = load i32, i32* @OXYGEN_SPDIF_FORMAT_SHIFT, align 4
  %33 = shl i32 %31, %32
  %34 = load i32, i32* @OXYGEN_SPDIF_FORMAT_MASK, align 4
  %35 = call i32 @oxygen_write8_masked(%struct.oxygen* %28, i32 %29, i32 %33, i32 %34)
  %36 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %37 = load i32, i32* @OXYGEN_SPDIF_CONTROL, align 4
  %38 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %39 = call i32 @oxygen_rate(%struct.snd_pcm_hw_params* %38)
  %40 = load i32, i32* @OXYGEN_SPDIF_OUT_RATE_SHIFT, align 4
  %41 = shl i32 %39, %40
  %42 = load i32, i32* @OXYGEN_SPDIF_OUT_RATE_MASK, align 4
  %43 = call i32 @oxygen_write32_masked(%struct.oxygen* %36, i32 %37, i32 %41, i32 %42)
  %44 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %45 = call i32 @oxygen_update_spdif_source(%struct.oxygen* %44)
  %46 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %47 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %46, i32 0, i32 1
  %48 = call i32 @spin_unlock_irq(i32* %47)
  %49 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %50 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %49, i32 0, i32 0
  %51 = call i32 @mutex_unlock(i32* %50)
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %17, %15
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.oxygen* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @oxygen_hw_params(%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @oxygen_clear_bits32(%struct.oxygen*, i32, i32) #1

declare dso_local i32 @oxygen_write8_masked(%struct.oxygen*, i32, i32, i32) #1

declare dso_local i32 @oxygen_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @oxygen_write32_masked(%struct.oxygen*, i32, i32, i32) #1

declare dso_local i32 @oxygen_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @oxygen_update_spdif_source(%struct.oxygen*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
