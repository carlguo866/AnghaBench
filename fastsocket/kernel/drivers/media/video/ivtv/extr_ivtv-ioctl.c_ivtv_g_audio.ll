; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-ioctl.c_ivtv_g_audio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-ioctl.c_ivtv_g_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_audio = type { i32 }
%struct.ivtv = type { i32 }
%struct.ivtv_open_id = type { %struct.ivtv* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_audio*)* @ivtv_g_audio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ivtv_g_audio(%struct.file* %0, i8* %1, %struct.v4l2_audio* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_audio*, align 8
  %7 = alloca %struct.ivtv*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_audio* %2, %struct.v4l2_audio** %6, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.ivtv_open_id*
  %10 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %9, i32 0, i32 0
  %11 = load %struct.ivtv*, %struct.ivtv** %10, align 8
  store %struct.ivtv* %11, %struct.ivtv** %7, align 8
  %12 = load %struct.ivtv*, %struct.ivtv** %7, align 8
  %13 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.v4l2_audio*, %struct.v4l2_audio** %6, align 8
  %16 = getelementptr inbounds %struct.v4l2_audio, %struct.v4l2_audio* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.ivtv*, %struct.ivtv** %7, align 8
  %18 = load %struct.v4l2_audio*, %struct.v4l2_audio** %6, align 8
  %19 = getelementptr inbounds %struct.v4l2_audio, %struct.v4l2_audio* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.v4l2_audio*, %struct.v4l2_audio** %6, align 8
  %22 = call i32 @ivtv_get_audio_input(%struct.ivtv* %17, i32 %20, %struct.v4l2_audio* %21)
  ret i32 %22
}

declare dso_local i32 @ivtv_get_audio_input(%struct.ivtv*, i32, %struct.v4l2_audio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
