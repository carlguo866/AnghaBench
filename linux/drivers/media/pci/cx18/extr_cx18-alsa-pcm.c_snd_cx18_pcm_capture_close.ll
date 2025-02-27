; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-alsa-pcm.c_snd_cx18_pcm_capture_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-alsa-pcm.c_snd_cx18_pcm_capture_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_cx18_card = type { %struct.v4l2_device* }
%struct.v4l2_device = type { i32 }
%struct.cx18 = type { i32*, %struct.cx18_stream* }
%struct.cx18_stream = type { i32 }

@CX18_ENC_STREAM_TYPE_PCM = common dso_local global i64 0, align 8
@CX18_F_S_STREAMING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_cx18_pcm_capture_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_cx18_pcm_capture_close(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_cx18_card*, align 8
  %4 = alloca %struct.v4l2_device*, align 8
  %5 = alloca %struct.cx18*, align 8
  %6 = alloca %struct.cx18_stream*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %8 = call %struct.snd_cx18_card* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %7)
  store %struct.snd_cx18_card* %8, %struct.snd_cx18_card** %3, align 8
  %9 = load %struct.snd_cx18_card*, %struct.snd_cx18_card** %3, align 8
  %10 = getelementptr inbounds %struct.snd_cx18_card, %struct.snd_cx18_card* %9, i32 0, i32 0
  %11 = load %struct.v4l2_device*, %struct.v4l2_device** %10, align 8
  store %struct.v4l2_device* %11, %struct.v4l2_device** %4, align 8
  %12 = load %struct.v4l2_device*, %struct.v4l2_device** %4, align 8
  %13 = call %struct.cx18* @to_cx18(%struct.v4l2_device* %12)
  store %struct.cx18* %13, %struct.cx18** %5, align 8
  %14 = load %struct.snd_cx18_card*, %struct.snd_cx18_card** %3, align 8
  %15 = call i32 @snd_cx18_lock(%struct.snd_cx18_card* %14)
  %16 = load %struct.cx18*, %struct.cx18** %5, align 8
  %17 = getelementptr inbounds %struct.cx18, %struct.cx18* %16, i32 0, i32 1
  %18 = load %struct.cx18_stream*, %struct.cx18_stream** %17, align 8
  %19 = load i64, i64* @CX18_ENC_STREAM_TYPE_PCM, align 8
  %20 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %18, i64 %19
  store %struct.cx18_stream* %20, %struct.cx18_stream** %6, align 8
  %21 = load %struct.cx18_stream*, %struct.cx18_stream** %6, align 8
  %22 = call i32 @cx18_stop_v4l2_encode_stream(%struct.cx18_stream* %21, i32 0)
  %23 = load i32, i32* @CX18_F_S_STREAMING, align 4
  %24 = load %struct.cx18_stream*, %struct.cx18_stream** %6, align 8
  %25 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %24, i32 0, i32 0
  %26 = call i32 @clear_bit(i32 %23, i32* %25)
  %27 = load %struct.cx18_stream*, %struct.cx18_stream** %6, align 8
  %28 = call i32 @cx18_release_stream(%struct.cx18_stream* %27)
  %29 = load %struct.cx18*, %struct.cx18** %5, align 8
  %30 = getelementptr inbounds %struct.cx18, %struct.cx18* %29, i32 0, i32 0
  store i32* null, i32** %30, align 8
  %31 = load %struct.snd_cx18_card*, %struct.snd_cx18_card** %3, align 8
  %32 = call i32 @snd_cx18_unlock(%struct.snd_cx18_card* %31)
  ret i32 0
}

declare dso_local %struct.snd_cx18_card* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local %struct.cx18* @to_cx18(%struct.v4l2_device*) #1

declare dso_local i32 @snd_cx18_lock(%struct.snd_cx18_card*) #1

declare dso_local i32 @cx18_stop_v4l2_encode_stream(%struct.cx18_stream*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @cx18_release_stream(%struct.cx18_stream*) #1

declare dso_local i32 @snd_cx18_unlock(%struct.snd_cx18_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
