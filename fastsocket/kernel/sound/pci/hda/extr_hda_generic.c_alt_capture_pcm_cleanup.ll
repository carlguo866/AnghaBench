; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_alt_capture_pcm_cleanup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_alt_capture_pcm_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_pcm_stream = type { i32 }
%struct.hda_codec = type { %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { i32* }
%struct.snd_pcm_substream = type { i32 }

@HDA_GEN_PCM_ACT_CLEANUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_pcm_stream*, %struct.hda_codec*, %struct.snd_pcm_substream*)* @alt_capture_pcm_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alt_capture_pcm_cleanup(%struct.hda_pcm_stream* %0, %struct.hda_codec* %1, %struct.snd_pcm_substream* %2) #0 {
  %4 = alloca %struct.hda_pcm_stream*, align 8
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca %struct.snd_pcm_substream*, align 8
  %7 = alloca %struct.hda_gen_spec*, align 8
  store %struct.hda_pcm_stream* %0, %struct.hda_pcm_stream** %4, align 8
  store %struct.hda_codec* %1, %struct.hda_codec** %5, align 8
  store %struct.snd_pcm_substream* %2, %struct.snd_pcm_substream** %6, align 8
  %8 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %9 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %8, i32 0, i32 0
  %10 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %9, align 8
  store %struct.hda_gen_spec* %10, %struct.hda_gen_spec** %7, align 8
  %11 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %12 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %7, align 8
  %13 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %14, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @snd_hda_codec_cleanup_stream(%struct.hda_codec* %11, i32 %21)
  %23 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %4, align 8
  %24 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %25 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %26 = load i32, i32* @HDA_GEN_PCM_ACT_CLEANUP, align 4
  %27 = call i32 @call_pcm_capture_hook(%struct.hda_pcm_stream* %23, %struct.hda_codec* %24, %struct.snd_pcm_substream* %25, i32 %26)
  ret i32 0
}

declare dso_local i32 @snd_hda_codec_cleanup_stream(%struct.hda_codec*, i32) #1

declare dso_local i32 @call_pcm_capture_hook(%struct.hda_pcm_stream*, %struct.hda_codec*, %struct.snd_pcm_substream*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
