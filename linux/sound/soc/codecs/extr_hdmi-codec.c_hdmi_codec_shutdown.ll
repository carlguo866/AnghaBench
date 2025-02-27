; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_hdmi-codec.c_hdmi_codec_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_hdmi-codec.c_hdmi_codec_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.hdmi_codec_priv = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (i32, i32)* }

@HDMI_CODEC_CHMAP_IDX_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @hdmi_codec_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdmi_codec_shutdown(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca %struct.hdmi_codec_priv*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %4, align 8
  %6 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %7 = call %struct.hdmi_codec_priv* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %6)
  store %struct.hdmi_codec_priv* %7, %struct.hdmi_codec_priv** %5, align 8
  %8 = load i32, i32* @HDMI_CODEC_CHMAP_IDX_UNKNOWN, align 4
  %9 = load %struct.hdmi_codec_priv*, %struct.hdmi_codec_priv** %5, align 8
  %10 = getelementptr inbounds %struct.hdmi_codec_priv, %struct.hdmi_codec_priv* %9, i32 0, i32 2
  store i32 %8, i32* %10, align 8
  %11 = load %struct.hdmi_codec_priv*, %struct.hdmi_codec_priv** %5, align 8
  %12 = getelementptr inbounds %struct.hdmi_codec_priv, %struct.hdmi_codec_priv* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32 (i32, i32)*, i32 (i32, i32)** %15, align 8
  %17 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %18 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.hdmi_codec_priv*, %struct.hdmi_codec_priv** %5, align 8
  %23 = getelementptr inbounds %struct.hdmi_codec_priv, %struct.hdmi_codec_priv* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 %16(i32 %21, i32 %25)
  %27 = load %struct.hdmi_codec_priv*, %struct.hdmi_codec_priv** %5, align 8
  %28 = getelementptr inbounds %struct.hdmi_codec_priv, %struct.hdmi_codec_priv* %27, i32 0, i32 0
  %29 = call i32 @clear_bit(i32 0, i32* %28)
  ret void
}

declare dso_local %struct.hdmi_codec_priv* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
