; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_midi.c_f_midi_read_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_midi.c_f_midi_read_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { %struct.f_midi* }
%struct.f_midi = type { i32, %struct.snd_rawmidi_substream** }
%struct.snd_rawmidi_substream = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ep*, i32, i32*, i32)* @f_midi_read_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @f_midi_read_data(%struct.usb_ep* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.usb_ep*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.f_midi*, align 8
  %10 = alloca %struct.snd_rawmidi_substream*, align 8
  store %struct.usb_ep* %0, %struct.usb_ep** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.usb_ep*, %struct.usb_ep** %5, align 8
  %12 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %11, i32 0, i32 0
  %13 = load %struct.f_midi*, %struct.f_midi** %12, align 8
  store %struct.f_midi* %13, %struct.f_midi** %9, align 8
  %14 = load %struct.f_midi*, %struct.f_midi** %9, align 8
  %15 = getelementptr inbounds %struct.f_midi, %struct.f_midi* %14, i32 0, i32 1
  %16 = load %struct.snd_rawmidi_substream**, %struct.snd_rawmidi_substream*** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %16, i64 %18
  %20 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %19, align 8
  store %struct.snd_rawmidi_substream* %20, %struct.snd_rawmidi_substream** %10, align 8
  %21 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %10, align 8
  %22 = icmp ne %struct.snd_rawmidi_substream* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %4
  br label %36

24:                                               ; preds = %4
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.f_midi*, %struct.f_midi** %9, align 8
  %27 = getelementptr inbounds %struct.f_midi, %struct.f_midi* %26, i32 0, i32 0
  %28 = call i32 @test_bit(i32 %25, i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  br label %36

31:                                               ; preds = %24
  %32 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %10, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @snd_rawmidi_receive(%struct.snd_rawmidi_substream* %32, i32* %33, i32 %34)
  br label %36

36:                                               ; preds = %31, %30, %23
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @snd_rawmidi_receive(%struct.snd_rawmidi_substream*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
