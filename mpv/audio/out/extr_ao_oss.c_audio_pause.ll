; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_oss.c_audio_pause.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_oss.c_audio_pause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { i32, %struct.priv* }
%struct.priv = type { i32, i32 }

@SNDCTL_DSP_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ao*)* @audio_pause to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @audio_pause(%struct.ao* %0) #0 {
  %2 = alloca %struct.ao*, align 8
  %3 = alloca %struct.priv*, align 8
  store %struct.ao* %0, %struct.ao** %2, align 8
  %4 = load %struct.ao*, %struct.ao** %2, align 8
  %5 = getelementptr inbounds %struct.ao, %struct.ao* %4, i32 0, i32 1
  %6 = load %struct.priv*, %struct.priv** %5, align 8
  store %struct.priv* %6, %struct.priv** %3, align 8
  %7 = load %struct.ao*, %struct.ao** %2, align 8
  %8 = call i32 @get_delay(%struct.ao* %7)
  %9 = load %struct.ao*, %struct.ao** %2, align 8
  %10 = getelementptr inbounds %struct.ao, %struct.ao* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = mul nsw i32 %8, %11
  %13 = load %struct.priv*, %struct.priv** %3, align 8
  %14 = getelementptr inbounds %struct.priv, %struct.priv* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.ao*, %struct.ao** %2, align 8
  %16 = call i32 @close_device(%struct.ao* %15)
  ret void
}

declare dso_local i32 @get_delay(%struct.ao*) #1

declare dso_local i32 @close_device(%struct.ao*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
