; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/oxfw/extr_oxfw-scs1x.c_midi_input_escaped_byte.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/oxfw/extr_oxfw-scs1x.c_midi_input_escaped_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_substream = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_rawmidi_substream*, i32)* @midi_input_escaped_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @midi_input_escaped_byte(%struct.snd_rawmidi_substream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_rawmidi_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [2 x i32], align 4
  store %struct.snd_rawmidi_substream* %0, %struct.snd_rawmidi_substream** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = ashr i32 %6, 4
  %8 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 %7, i32* %8, align 4
  %9 = load i32, i32* %4, align 4
  %10 = and i32 %9, 15
  %11 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  store i32 %10, i32* %11, align 4
  %12 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %13 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %14 = call i32 @snd_rawmidi_receive(%struct.snd_rawmidi_substream* %12, i32* %13, i32 2)
  ret void
}

declare dso_local i32 @snd_rawmidi_receive(%struct.snd_rawmidi_substream*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
