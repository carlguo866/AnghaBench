; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_audio.c_bcmmix_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_audio.c_bcmmix_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_mixer = type { i32 }
%struct.bcm2835_audio_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_mixer*, i32, i32, i32)* @bcmmix_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcmmix_set(%struct.snd_mixer* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.snd_mixer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bcm2835_audio_info*, align 8
  store %struct.snd_mixer* %0, %struct.snd_mixer** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.snd_mixer*, %struct.snd_mixer** %5, align 8
  %11 = call %struct.bcm2835_audio_info* @mix_getdevinfo(%struct.snd_mixer* %10)
  store %struct.bcm2835_audio_info* %11, %struct.bcm2835_audio_info** %9, align 8
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %23 [
    i32 128, label %13
  ]

13:                                               ; preds = %4
  %14 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %9, align 8
  %15 = call i32 @BCM2835_AUDIO_LOCK(%struct.bcm2835_audio_info* %14)
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %9, align 8
  %18 = getelementptr inbounds %struct.bcm2835_audio_info, %struct.bcm2835_audio_info* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %9, align 8
  %20 = call i32 @bcm2835_worker_update_params(%struct.bcm2835_audio_info* %19)
  %21 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %9, align 8
  %22 = call i32 @BCM2835_AUDIO_UNLOCK(%struct.bcm2835_audio_info* %21)
  br label %24

23:                                               ; preds = %4
  br label %24

24:                                               ; preds = %23, %13
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = shl i32 %26, 8
  %28 = or i32 %25, %27
  ret i32 %28
}

declare dso_local %struct.bcm2835_audio_info* @mix_getdevinfo(%struct.snd_mixer*) #1

declare dso_local i32 @BCM2835_AUDIO_LOCK(%struct.bcm2835_audio_info*) #1

declare dso_local i32 @bcm2835_worker_update_params(%struct.bcm2835_audio_info*) #1

declare dso_local i32 @BCM2835_AUDIO_UNLOCK(%struct.bcm2835_audio_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
