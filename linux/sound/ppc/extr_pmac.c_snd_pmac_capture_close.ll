; ModuleID = '/home/carl/AnghaBench/linux/sound/ppc/extr_pmac.c_snd_pmac_capture_close.c'
source_filename = "/home/carl/AnghaBench/linux/sound/ppc/extr_pmac.c_snd_pmac_capture_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pmac = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_pmac_capture_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_pmac_capture_close(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_pmac*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %4 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %5 = call %struct.snd_pmac* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %4)
  store %struct.snd_pmac* %5, %struct.snd_pmac** %3, align 8
  %6 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %7 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %8 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %7, i32 0, i32 0
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %10 = call i32 @snd_pmac_pcm_close(%struct.snd_pmac* %6, i32* %8, %struct.snd_pcm_substream* %9)
  ret i32 %10
}

declare dso_local %struct.snd_pmac* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pmac_pcm_close(%struct.snd_pmac*, i32*, %struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
