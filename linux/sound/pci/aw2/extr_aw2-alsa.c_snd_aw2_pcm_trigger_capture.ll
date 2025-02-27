; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/aw2/extr_aw2-alsa.c_snd_aw2_pcm_trigger_capture.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/aw2/extr_aw2-alsa.c_snd_aw2_pcm_trigger_capture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.aw2_pcm_device = type { i32, %struct.aw2* }
%struct.aw2 = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @snd_aw2_pcm_trigger_capture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_aw2_pcm_trigger_capture(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.aw2_pcm_device*, align 8
  %7 = alloca %struct.aw2*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %9 = call %struct.aw2_pcm_device* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %8)
  store %struct.aw2_pcm_device* %9, %struct.aw2_pcm_device** %6, align 8
  %10 = load %struct.aw2_pcm_device*, %struct.aw2_pcm_device** %6, align 8
  %11 = getelementptr inbounds %struct.aw2_pcm_device, %struct.aw2_pcm_device* %10, i32 0, i32 1
  %12 = load %struct.aw2*, %struct.aw2** %11, align 8
  store %struct.aw2* %12, %struct.aw2** %7, align 8
  %13 = load %struct.aw2*, %struct.aw2** %7, align 8
  %14 = getelementptr inbounds %struct.aw2, %struct.aw2* %13, i32 0, i32 0
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load i32, i32* %4, align 4
  switch i32 %16, label %31 [
    i32 129, label %17
    i32 128, label %24
  ]

17:                                               ; preds = %2
  %18 = load %struct.aw2*, %struct.aw2** %7, align 8
  %19 = getelementptr inbounds %struct.aw2, %struct.aw2* %18, i32 0, i32 1
  %20 = load %struct.aw2_pcm_device*, %struct.aw2_pcm_device** %6, align 8
  %21 = getelementptr inbounds %struct.aw2_pcm_device, %struct.aw2_pcm_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @snd_aw2_saa7146_pcm_trigger_start_capture(i32* %19, i32 %22)
  br label %34

24:                                               ; preds = %2
  %25 = load %struct.aw2*, %struct.aw2** %7, align 8
  %26 = getelementptr inbounds %struct.aw2, %struct.aw2* %25, i32 0, i32 1
  %27 = load %struct.aw2_pcm_device*, %struct.aw2_pcm_device** %6, align 8
  %28 = getelementptr inbounds %struct.aw2_pcm_device, %struct.aw2_pcm_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @snd_aw2_saa7146_pcm_trigger_stop_capture(i32* %26, i32 %29)
  br label %34

31:                                               ; preds = %2
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %31, %24, %17
  %35 = load %struct.aw2*, %struct.aw2** %7, align 8
  %36 = getelementptr inbounds %struct.aw2, %struct.aw2* %35, i32 0, i32 0
  %37 = call i32 @spin_unlock(i32* %36)
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local %struct.aw2_pcm_device* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @snd_aw2_saa7146_pcm_trigger_start_capture(i32*, i32) #1

declare dso_local i32 @snd_aw2_saa7146_pcm_trigger_stop_capture(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
