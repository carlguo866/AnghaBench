; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/caiaq/extr_midi.c_snd_usb_caiaq_midi_input_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/caiaq/extr_midi.c_snd_usb_caiaq_midi_input_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_usb_caiaqdev* }
%struct.snd_usb_caiaqdev = type { %struct.snd_rawmidi_substream* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_rawmidi_substream*, i32)* @snd_usb_caiaq_midi_input_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_usb_caiaq_midi_input_trigger(%struct.snd_rawmidi_substream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_rawmidi_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_usb_caiaqdev*, align 8
  store %struct.snd_rawmidi_substream* %0, %struct.snd_rawmidi_substream** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %7 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %9, align 8
  store %struct.snd_usb_caiaqdev* %10, %struct.snd_usb_caiaqdev** %5, align 8
  %11 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %5, align 8
  %12 = icmp ne %struct.snd_usb_caiaqdev* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %24

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  br label %20

19:                                               ; preds = %14
  br label %20

20:                                               ; preds = %19, %17
  %21 = phi %struct.snd_rawmidi_substream* [ %18, %17 ], [ null, %19 ]
  %22 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %5, align 8
  %23 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %22, i32 0, i32 0
  store %struct.snd_rawmidi_substream* %21, %struct.snd_rawmidi_substream** %23, align 8
  br label %24

24:                                               ; preds = %20, %13
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
