; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_patch.c_patch_conexant.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_patch.c_patch_conexant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { i32*, i32, i32, i32* }

@patch_conexant_ops = common dso_local global i32 0, align 4
@AC97_CX_SPDIF = common dso_local global i32 0, align 4
@AC97_EI_SPDIF = common dso_local global i32 0, align 4
@SNDRV_PCM_RATE_48000 = common dso_local global i32 0, align 4
@AC97_RATES_SPDIF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ac97*)* @patch_conexant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patch_conexant(%struct.snd_ac97* %0) #0 {
  %2 = alloca %struct.snd_ac97*, align 8
  store %struct.snd_ac97* %0, %struct.snd_ac97** %2, align 8
  %3 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %4 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %3, i32 0, i32 3
  store i32* @patch_conexant_ops, i32** %4, align 8
  %5 = load i32, i32* @AC97_CX_SPDIF, align 4
  %6 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %7 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = or i32 %8, %5
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* @AC97_EI_SPDIF, align 4
  %11 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %12 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = or i32 %13, %10
  store i32 %14, i32* %12, align 8
  %15 = load i32, i32* @SNDRV_PCM_RATE_48000, align 4
  %16 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %17 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* @AC97_RATES_SPDIF, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  store i32 %15, i32* %20, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
