; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ali5451/extr_ali5451.c_snd_ali_pcm_free_substream.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ali5451/extr_ali5451.c_snd_ali_pcm_free_substream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_runtime = type { %struct.snd_ali_voice* }
%struct.snd_ali_voice = type { %struct.snd_ali* }
%struct.snd_ali = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pcm_runtime*)* @snd_ali_pcm_free_substream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_ali_pcm_free_substream(%struct.snd_pcm_runtime* %0) #0 {
  %2 = alloca %struct.snd_pcm_runtime*, align 8
  %3 = alloca %struct.snd_ali_voice*, align 8
  %4 = alloca %struct.snd_ali*, align 8
  store %struct.snd_pcm_runtime* %0, %struct.snd_pcm_runtime** %2, align 8
  %5 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %2, align 8
  %6 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %5, i32 0, i32 0
  %7 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %6, align 8
  store %struct.snd_ali_voice* %7, %struct.snd_ali_voice** %3, align 8
  %8 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %3, align 8
  %9 = icmp ne %struct.snd_ali_voice* %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  %11 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %3, align 8
  %12 = getelementptr inbounds %struct.snd_ali_voice, %struct.snd_ali_voice* %11, i32 0, i32 0
  %13 = load %struct.snd_ali*, %struct.snd_ali** %12, align 8
  store %struct.snd_ali* %13, %struct.snd_ali** %4, align 8
  %14 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %3, align 8
  %15 = getelementptr inbounds %struct.snd_ali_voice, %struct.snd_ali_voice* %14, i32 0, i32 0
  %16 = load %struct.snd_ali*, %struct.snd_ali** %15, align 8
  %17 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %3, align 8
  %18 = call i32 @snd_ali_free_voice(%struct.snd_ali* %16, %struct.snd_ali_voice* %17)
  br label %19

19:                                               ; preds = %10, %1
  ret void
}

declare dso_local i32 @snd_ali_free_voice(%struct.snd_ali*, %struct.snd_ali_voice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
