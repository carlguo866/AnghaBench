; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/motu/extr_amdtp-motu.c_amdtp_motu_midi_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/motu/extr_amdtp-motu.c_amdtp_motu_midi_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdtp_stream = type { %struct.amdtp_motu* }
%struct.amdtp_motu = type { i32, i32 }
%struct.snd_rawmidi_substream = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amdtp_motu_midi_trigger(%struct.amdtp_stream* %0, i32 %1, %struct.snd_rawmidi_substream* %2) #0 {
  %4 = alloca %struct.amdtp_stream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_rawmidi_substream*, align 8
  %7 = alloca %struct.amdtp_motu*, align 8
  store %struct.amdtp_stream* %0, %struct.amdtp_stream** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.snd_rawmidi_substream* %2, %struct.snd_rawmidi_substream** %6, align 8
  %8 = load %struct.amdtp_stream*, %struct.amdtp_stream** %4, align 8
  %9 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %8, i32 0, i32 0
  %10 = load %struct.amdtp_motu*, %struct.amdtp_motu** %9, align 8
  store %struct.amdtp_motu* %10, %struct.amdtp_motu** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.amdtp_motu*, %struct.amdtp_motu** %7, align 8
  %13 = getelementptr inbounds %struct.amdtp_motu, %struct.amdtp_motu* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ult i32 %11, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load %struct.amdtp_motu*, %struct.amdtp_motu** %7, align 8
  %18 = getelementptr inbounds %struct.amdtp_motu, %struct.amdtp_motu* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %6, align 8
  %21 = call i32 @WRITE_ONCE(i32 %19, %struct.snd_rawmidi_substream* %20)
  br label %22

22:                                               ; preds = %16, %3
  ret void
}

declare dso_local i32 @WRITE_ONCE(i32, %struct.snd_rawmidi_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
