; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/au1x/extr_psc-ac97.c_au1xpsc_ac97_warm_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/au1x/extr_psc-ac97.c_au1xpsc_ac97_warm_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au1xpsc_audio_data = type { i32 }
%struct.snd_ac97 = type { i32 }

@au1xpsc_ac97_workdata = common dso_local global %struct.au1xpsc_audio_data* null, align 8
@PSC_AC97RST_SNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ac97*)* @au1xpsc_ac97_warm_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @au1xpsc_ac97_warm_reset(%struct.snd_ac97* %0) #0 {
  %2 = alloca %struct.snd_ac97*, align 8
  %3 = alloca %struct.au1xpsc_audio_data*, align 8
  store %struct.snd_ac97* %0, %struct.snd_ac97** %2, align 8
  %4 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** @au1xpsc_ac97_workdata, align 8
  store %struct.au1xpsc_audio_data* %4, %struct.au1xpsc_audio_data** %3, align 8
  %5 = load i32, i32* @PSC_AC97RST_SNC, align 4
  %6 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %3, align 8
  %7 = call i32 @AC97_RST(%struct.au1xpsc_audio_data* %6)
  %8 = call i32 @au_writel(i32 %5, i32 %7)
  %9 = call i32 (...) @au_sync()
  %10 = call i32 @msleep(i32 10)
  %11 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %3, align 8
  %12 = call i32 @AC97_RST(%struct.au1xpsc_audio_data* %11)
  %13 = call i32 @au_writel(i32 0, i32 %12)
  %14 = call i32 (...) @au_sync()
  ret void
}

declare dso_local i32 @au_writel(i32, i32) #1

declare dso_local i32 @AC97_RST(%struct.au1xpsc_audio_data*) #1

declare dso_local i32 @au_sync(...) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
