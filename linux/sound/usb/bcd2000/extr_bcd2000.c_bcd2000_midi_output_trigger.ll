; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/bcd2000/extr_bcd2000.c_bcd2000_midi_output_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/bcd2000/extr_bcd2000.c_bcd2000_midi_output_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.bcd2000* }
%struct.bcd2000 = type { %struct.snd_rawmidi_substream*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_rawmidi_substream*, i32)* @bcd2000_midi_output_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcd2000_midi_output_trigger(%struct.snd_rawmidi_substream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_rawmidi_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bcd2000*, align 8
  store %struct.snd_rawmidi_substream* %0, %struct.snd_rawmidi_substream** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %7 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.bcd2000*, %struct.bcd2000** %9, align 8
  store %struct.bcd2000* %10, %struct.bcd2000** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %2
  %14 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %15 = load %struct.bcd2000*, %struct.bcd2000** %5, align 8
  %16 = getelementptr inbounds %struct.bcd2000, %struct.bcd2000* %15, i32 0, i32 0
  store %struct.snd_rawmidi_substream* %14, %struct.snd_rawmidi_substream** %16, align 8
  %17 = load %struct.bcd2000*, %struct.bcd2000** %5, align 8
  %18 = getelementptr inbounds %struct.bcd2000, %struct.bcd2000* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %13
  %22 = load %struct.bcd2000*, %struct.bcd2000** %5, align 8
  %23 = call i32 @bcd2000_midi_send(%struct.bcd2000* %22)
  br label %24

24:                                               ; preds = %21, %13
  br label %28

25:                                               ; preds = %2
  %26 = load %struct.bcd2000*, %struct.bcd2000** %5, align 8
  %27 = getelementptr inbounds %struct.bcd2000, %struct.bcd2000* %26, i32 0, i32 0
  store %struct.snd_rawmidi_substream* null, %struct.snd_rawmidi_substream** %27, align 8
  br label %28

28:                                               ; preds = %25, %24
  ret void
}

declare dso_local i32 @bcd2000_midi_send(%struct.bcd2000*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
