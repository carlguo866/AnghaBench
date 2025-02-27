; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_midi.c_snd_usbmidi_raw_output.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_midi.c_snd_usbmidi_raw_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_midi_out_endpoint = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i32 }
%struct.urb = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_usb_midi_out_endpoint*, %struct.urb*)* @snd_usbmidi_raw_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_usbmidi_raw_output(%struct.snd_usb_midi_out_endpoint* %0, %struct.urb* %1) #0 {
  %3 = alloca %struct.snd_usb_midi_out_endpoint*, align 8
  %4 = alloca %struct.urb*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_usb_midi_out_endpoint* %0, %struct.snd_usb_midi_out_endpoint** %3, align 8
  store %struct.urb* %1, %struct.urb** %4, align 8
  %6 = load %struct.snd_usb_midi_out_endpoint*, %struct.snd_usb_midi_out_endpoint** %3, align 8
  %7 = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, %struct.snd_usb_midi_out_endpoint* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i64 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %40

14:                                               ; preds = %2
  %15 = load %struct.snd_usb_midi_out_endpoint*, %struct.snd_usb_midi_out_endpoint** %3, align 8
  %16 = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, %struct.snd_usb_midi_out_endpoint* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.urb*, %struct.urb** %4, align 8
  %22 = getelementptr inbounds %struct.urb, %struct.urb* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.snd_usb_midi_out_endpoint*, %struct.snd_usb_midi_out_endpoint** %3, align 8
  %25 = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, %struct.snd_usb_midi_out_endpoint* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @snd_rawmidi_transmit(i32 %20, i32 %23, i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp slt i32 %28, 1
  br i1 %29, label %30, label %36

30:                                               ; preds = %14
  %31 = load %struct.snd_usb_midi_out_endpoint*, %struct.snd_usb_midi_out_endpoint** %3, align 8
  %32 = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, %struct.snd_usb_midi_out_endpoint* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  br label %40

36:                                               ; preds = %14
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.urb*, %struct.urb** %4, align 8
  %39 = getelementptr inbounds %struct.urb, %struct.urb* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  br label %40

40:                                               ; preds = %36, %30, %13
  ret void
}

declare dso_local i32 @snd_rawmidi_transmit(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
