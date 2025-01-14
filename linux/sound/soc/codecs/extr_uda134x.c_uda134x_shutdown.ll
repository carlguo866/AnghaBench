; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_uda134x.c_uda134x_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_uda134x.c_uda134x_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.uda134x_priv = type { %struct.snd_pcm_substream*, %struct.snd_pcm_substream* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @uda134x_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uda134x_shutdown(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca %struct.uda134x_priv*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %4, align 8
  %7 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %8 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %7, i32 0, i32 0
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  store %struct.snd_soc_component* %9, %struct.snd_soc_component** %5, align 8
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %11 = call %struct.uda134x_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %10)
  store %struct.uda134x_priv* %11, %struct.uda134x_priv** %6, align 8
  %12 = load %struct.uda134x_priv*, %struct.uda134x_priv** %6, align 8
  %13 = getelementptr inbounds %struct.uda134x_priv, %struct.uda134x_priv* %12, i32 0, i32 1
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %13, align 8
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %16 = icmp eq %struct.snd_pcm_substream* %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.uda134x_priv*, %struct.uda134x_priv** %6, align 8
  %19 = getelementptr inbounds %struct.uda134x_priv, %struct.uda134x_priv* %18, i32 0, i32 0
  %20 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %19, align 8
  %21 = load %struct.uda134x_priv*, %struct.uda134x_priv** %6, align 8
  %22 = getelementptr inbounds %struct.uda134x_priv, %struct.uda134x_priv* %21, i32 0, i32 1
  store %struct.snd_pcm_substream* %20, %struct.snd_pcm_substream** %22, align 8
  br label %23

23:                                               ; preds = %17, %2
  %24 = load %struct.uda134x_priv*, %struct.uda134x_priv** %6, align 8
  %25 = getelementptr inbounds %struct.uda134x_priv, %struct.uda134x_priv* %24, i32 0, i32 0
  store %struct.snd_pcm_substream* null, %struct.snd_pcm_substream** %25, align 8
  ret void
}

declare dso_local %struct.uda134x_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
