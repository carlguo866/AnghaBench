; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/sb/extr_sb8_midi.c_snd_sb8dsp_midi_output_close.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/sb/extr_sb8_midi.c_snd_sb8dsp_midi_output_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_sb* }
%struct.snd_sb = type { i32, i32, i32*, i32 }

@SB_OPEN_MIDI_OUTPUT = common dso_local global i32 0, align 4
@SB_OPEN_MIDI_OUTPUT_TRIGGER = common dso_local global i32 0, align 4
@SB_OPEN_MIDI_INPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_rawmidi_substream*)* @snd_sb8dsp_midi_output_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_sb8dsp_midi_output_close(%struct.snd_rawmidi_substream* %0) #0 {
  %2 = alloca %struct.snd_rawmidi_substream*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.snd_sb*, align 8
  store %struct.snd_rawmidi_substream* %0, %struct.snd_rawmidi_substream** %2, align 8
  %5 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %2, align 8
  %6 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.snd_sb*, %struct.snd_sb** %8, align 8
  store %struct.snd_sb* %9, %struct.snd_sb** %4, align 8
  %10 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %11 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %10, i32 0, i32 3
  %12 = call i32 @del_timer_sync(i32* %11)
  %13 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %14 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %13, i32 0, i32 1
  %15 = load i64, i64* %3, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load i32, i32* @SB_OPEN_MIDI_OUTPUT, align 4
  %18 = load i32, i32* @SB_OPEN_MIDI_OUTPUT_TRIGGER, align 4
  %19 = or i32 %17, %18
  %20 = xor i32 %19, -1
  %21 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %22 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %23, %20
  store i32 %24, i32* %22, align 8
  %25 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %26 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %25, i32 0, i32 2
  store i32* null, i32** %26, align 8
  %27 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %28 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @SB_OPEN_MIDI_INPUT, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %1
  %34 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %35 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %34, i32 0, i32 1
  %36 = load i64, i64* %3, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* %35, i64 %36)
  %38 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %39 = call i32 @snd_sbdsp_reset(%struct.snd_sb* %38)
  br label %45

40:                                               ; preds = %1
  %41 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %42 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %41, i32 0, i32 1
  %43 = load i64, i64* %3, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  br label %45

45:                                               ; preds = %40, %33
  ret i32 0
}

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @snd_sbdsp_reset(%struct.snd_sb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
