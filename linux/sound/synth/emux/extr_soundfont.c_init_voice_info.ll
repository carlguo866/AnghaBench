; ModuleID = '/home/carl/AnghaBench/linux/sound/synth/emux/extr_soundfont.c_init_voice_info.c'
source_filename = "/home/carl/AnghaBench/linux/sound/synth/emux/extr_soundfont.c_init_voice_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soundfont_voice_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.soundfont_voice_info*)* @init_voice_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_voice_info(%struct.soundfont_voice_info* %0) #0 {
  %2 = alloca %struct.soundfont_voice_info*, align 8
  store %struct.soundfont_voice_info* %0, %struct.soundfont_voice_info** %2, align 8
  %3 = load %struct.soundfont_voice_info*, %struct.soundfont_voice_info** %2, align 8
  %4 = call i32 @memset(%struct.soundfont_voice_info* %3, i32 0, i32 40)
  %5 = load %struct.soundfont_voice_info*, %struct.soundfont_voice_info** %2, align 8
  %6 = getelementptr inbounds %struct.soundfont_voice_info, %struct.soundfont_voice_info* %5, i32 0, i32 0
  store i32 60, i32* %6, align 4
  %7 = load %struct.soundfont_voice_info*, %struct.soundfont_voice_info** %2, align 8
  %8 = getelementptr inbounds %struct.soundfont_voice_info, %struct.soundfont_voice_info* %7, i32 0, i32 1
  store i32 127, i32* %8, align 4
  %9 = load %struct.soundfont_voice_info*, %struct.soundfont_voice_info** %2, align 8
  %10 = getelementptr inbounds %struct.soundfont_voice_info, %struct.soundfont_voice_info* %9, i32 0, i32 2
  store i32 127, i32* %10, align 4
  %11 = load %struct.soundfont_voice_info*, %struct.soundfont_voice_info** %2, align 8
  %12 = getelementptr inbounds %struct.soundfont_voice_info, %struct.soundfont_voice_info* %11, i32 0, i32 3
  store i32 -1, i32* %12, align 4
  %13 = load %struct.soundfont_voice_info*, %struct.soundfont_voice_info** %2, align 8
  %14 = getelementptr inbounds %struct.soundfont_voice_info, %struct.soundfont_voice_info* %13, i32 0, i32 4
  store i32 -1, i32* %14, align 4
  %15 = load %struct.soundfont_voice_info*, %struct.soundfont_voice_info** %2, align 8
  %16 = getelementptr inbounds %struct.soundfont_voice_info, %struct.soundfont_voice_info* %15, i32 0, i32 5
  store i32 -1, i32* %16, align 4
  %17 = load %struct.soundfont_voice_info*, %struct.soundfont_voice_info** %2, align 8
  %18 = getelementptr inbounds %struct.soundfont_voice_info, %struct.soundfont_voice_info* %17, i32 0, i32 6
  store i32 -1, i32* %18, align 4
  %19 = load %struct.soundfont_voice_info*, %struct.soundfont_voice_info** %2, align 8
  %20 = getelementptr inbounds %struct.soundfont_voice_info, %struct.soundfont_voice_info* %19, i32 0, i32 7
  store i32 127, i32* %20, align 4
  %21 = load %struct.soundfont_voice_info*, %struct.soundfont_voice_info** %2, align 8
  %22 = getelementptr inbounds %struct.soundfont_voice_info, %struct.soundfont_voice_info* %21, i32 0, i32 8
  store i32 100, i32* %22, align 4
  %23 = load %struct.soundfont_voice_info*, %struct.soundfont_voice_info** %2, align 8
  %24 = getelementptr inbounds %struct.soundfont_voice_info, %struct.soundfont_voice_info* %23, i32 0, i32 9
  %25 = call i32 @init_voice_parm(i32* %24)
  ret void
}

declare dso_local i32 @memset(%struct.soundfont_voice_info*, i32, i32) #1

declare dso_local i32 @init_voice_parm(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
