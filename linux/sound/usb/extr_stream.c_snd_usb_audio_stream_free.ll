; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_stream.c_snd_usb_audio_stream_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_stream.c_snd_usb_audio_stream_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_stream = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_usb_stream*)* @snd_usb_audio_stream_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_usb_audio_stream_free(%struct.snd_usb_stream* %0) #0 {
  %2 = alloca %struct.snd_usb_stream*, align 8
  store %struct.snd_usb_stream* %0, %struct.snd_usb_stream** %2, align 8
  %3 = load %struct.snd_usb_stream*, %struct.snd_usb_stream** %2, align 8
  %4 = getelementptr inbounds %struct.snd_usb_stream, %struct.snd_usb_stream* %3, i32 0, i32 1
  %5 = load i32*, i32** %4, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 0
  %7 = call i32 @free_substream(i32* %6)
  %8 = load %struct.snd_usb_stream*, %struct.snd_usb_stream** %2, align 8
  %9 = getelementptr inbounds %struct.snd_usb_stream, %struct.snd_usb_stream* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 1
  %12 = call i32 @free_substream(i32* %11)
  %13 = load %struct.snd_usb_stream*, %struct.snd_usb_stream** %2, align 8
  %14 = getelementptr inbounds %struct.snd_usb_stream, %struct.snd_usb_stream* %13, i32 0, i32 0
  %15 = call i32 @list_del(i32* %14)
  %16 = load %struct.snd_usb_stream*, %struct.snd_usb_stream** %2, align 8
  %17 = call i32 @kfree(%struct.snd_usb_stream* %16)
  ret void
}

declare dso_local i32 @free_substream(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.snd_usb_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
