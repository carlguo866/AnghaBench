; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/wavefront/extr_wavefront_midi.c_get_wavefront_midi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/wavefront/extr_wavefront_midi.c_get_wavefront_midi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_substream = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.snd_card* }
%struct.snd_card = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.snd_rawmidi_substream*)* @get_wavefront_midi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_wavefront_midi(%struct.snd_rawmidi_substream* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.snd_rawmidi_substream*, align 8
  %4 = alloca %struct.snd_card*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  store %struct.snd_rawmidi_substream* %0, %struct.snd_rawmidi_substream** %3, align 8
  %6 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %7 = icmp eq %struct.snd_rawmidi_substream* %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %10 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = icmp eq %struct.TYPE_4__* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %8, %1
  store i32* null, i32** %2, align 8
  br label %36

14:                                               ; preds = %8
  %15 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %16 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.snd_card*, %struct.snd_card** %18, align 8
  store %struct.snd_card* %19, %struct.snd_card** %4, align 8
  %20 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %21 = icmp eq %struct.snd_card* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  store i32* null, i32** %2, align 8
  br label %36

23:                                               ; preds = %14
  %24 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %25 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = icmp eq %struct.TYPE_6__* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32* null, i32** %2, align 8
  br label %36

29:                                               ; preds = %23
  %30 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %31 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  store %struct.TYPE_6__* %32, %struct.TYPE_6__** %5, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  store i32* %35, i32** %2, align 8
  br label %36

36:                                               ; preds = %29, %28, %22, %13
  %37 = load i32*, i32** %2, align 8
  ret i32* %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
