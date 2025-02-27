; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_mixer.c_parse_term_uac3_clock_source.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_mixer.c_parse_term_uac3_clock_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mixer_build = type { i32 }
%struct.usb_audio_term = type { i32, i32, i32 }
%struct.uac3_clock_source_descriptor = type { i32 }

@UAC3_CLOCK_SOURCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mixer_build*, %struct.usb_audio_term*, i8*, i32)* @parse_term_uac3_clock_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_term_uac3_clock_source(%struct.mixer_build* %0, %struct.usb_audio_term* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.mixer_build*, align 8
  %6 = alloca %struct.usb_audio_term*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.uac3_clock_source_descriptor*, align 8
  store %struct.mixer_build* %0, %struct.mixer_build** %5, align 8
  store %struct.usb_audio_term* %1, %struct.usb_audio_term** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i8*, i8** %7, align 8
  %11 = bitcast i8* %10 to %struct.uac3_clock_source_descriptor*
  store %struct.uac3_clock_source_descriptor* %11, %struct.uac3_clock_source_descriptor** %9, align 8
  %12 = load i32, i32* @UAC3_CLOCK_SOURCE, align 4
  %13 = shl i32 %12, 16
  %14 = load %struct.usb_audio_term*, %struct.usb_audio_term** %6, align 8
  %15 = getelementptr inbounds %struct.usb_audio_term, %struct.usb_audio_term* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load %struct.usb_audio_term*, %struct.usb_audio_term** %6, align 8
  %18 = getelementptr inbounds %struct.usb_audio_term, %struct.usb_audio_term* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.uac3_clock_source_descriptor*, %struct.uac3_clock_source_descriptor** %9, align 8
  %20 = getelementptr inbounds %struct.uac3_clock_source_descriptor, %struct.uac3_clock_source_descriptor* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @le16_to_cpu(i32 %21)
  %23 = load %struct.usb_audio_term*, %struct.usb_audio_term** %6, align 8
  %24 = getelementptr inbounds %struct.usb_audio_term, %struct.usb_audio_term* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  ret i32 0
}

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
