; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_ca0132_capture_pcm_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_ca0132_capture_pcm_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_pcm_stream = type { i32 }
%struct.hda_codec = type { %struct.ca0132_spec* }
%struct.ca0132_spec = type { i64 }
%struct.snd_pcm_substream = type { i32 }

@DSP_DOWNLOADING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_pcm_stream*, %struct.hda_codec*, %struct.snd_pcm_substream*)* @ca0132_capture_pcm_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ca0132_capture_pcm_cleanup(%struct.hda_pcm_stream* %0, %struct.hda_codec* %1, %struct.snd_pcm_substream* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hda_pcm_stream*, align 8
  %6 = alloca %struct.hda_codec*, align 8
  %7 = alloca %struct.snd_pcm_substream*, align 8
  %8 = alloca %struct.ca0132_spec*, align 8
  store %struct.hda_pcm_stream* %0, %struct.hda_pcm_stream** %5, align 8
  store %struct.hda_codec* %1, %struct.hda_codec** %6, align 8
  store %struct.snd_pcm_substream* %2, %struct.snd_pcm_substream** %7, align 8
  %9 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %10 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %9, i32 0, i32 0
  %11 = load %struct.ca0132_spec*, %struct.ca0132_spec** %10, align 8
  store %struct.ca0132_spec* %11, %struct.ca0132_spec** %8, align 8
  %12 = load %struct.ca0132_spec*, %struct.ca0132_spec** %8, align 8
  %13 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @DSP_DOWNLOADING, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %24

18:                                               ; preds = %3
  %19 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %20 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %21 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @snd_hda_codec_cleanup_stream(%struct.hda_codec* %19, i32 %22)
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %18, %17
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

declare dso_local i32 @snd_hda_codec_cleanup_stream(%struct.hda_codec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
