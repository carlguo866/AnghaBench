; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/caiaq/extr_midi.c_snd_usb_caiaq_midi_output_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/caiaq/extr_midi.c_snd_usb_caiaq_midi_output_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_usb_caiaqdev* }
%struct.snd_usb_caiaqdev = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_rawmidi_substream*)* @snd_usb_caiaq_midi_output_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_usb_caiaq_midi_output_close(%struct.snd_rawmidi_substream* %0) #0 {
  %2 = alloca %struct.snd_rawmidi_substream*, align 8
  %3 = alloca %struct.snd_usb_caiaqdev*, align 8
  store %struct.snd_rawmidi_substream* %0, %struct.snd_rawmidi_substream** %2, align 8
  %4 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %2, align 8
  %5 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %7, align 8
  store %struct.snd_usb_caiaqdev* %8, %struct.snd_usb_caiaqdev** %3, align 8
  %9 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %3, align 8
  %10 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %3, align 8
  %15 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %14, i32 0, i32 1
  %16 = call i32 @usb_kill_urb(i32* %15)
  %17 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %3, align 8
  %18 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %17, i32 0, i32 0
  store i64 0, i64* %18, align 8
  br label %19

19:                                               ; preds = %13, %1
  ret i32 0
}

declare dso_local i32 @usb_kill_urb(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
