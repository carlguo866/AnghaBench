; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-ioctl.c_ivtv_g_audout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-ioctl.c_ivtv_g_audout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_audioout = type { i32 }
%struct.ivtv = type { i32 }
%struct.TYPE_2__ = type { %struct.ivtv* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_audioout*)* @ivtv_g_audout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ivtv_g_audout(%struct.file* %0, i8* %1, %struct.v4l2_audioout* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_audioout*, align 8
  %7 = alloca %struct.ivtv*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_audioout* %2, %struct.v4l2_audioout** %6, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call %struct.TYPE_2__* @fh2id(i8* %8)
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.ivtv*, %struct.ivtv** %10, align 8
  store %struct.ivtv* %11, %struct.ivtv** %7, align 8
  %12 = load %struct.v4l2_audioout*, %struct.v4l2_audioout** %6, align 8
  %13 = getelementptr inbounds %struct.v4l2_audioout, %struct.v4l2_audioout* %12, i32 0, i32 0
  store i32 0, i32* %13, align 4
  %14 = load %struct.ivtv*, %struct.ivtv** %7, align 8
  %15 = load %struct.v4l2_audioout*, %struct.v4l2_audioout** %6, align 8
  %16 = getelementptr inbounds %struct.v4l2_audioout, %struct.v4l2_audioout* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.v4l2_audioout*, %struct.v4l2_audioout** %6, align 8
  %19 = call i32 @ivtv_get_audio_output(%struct.ivtv* %14, i32 %17, %struct.v4l2_audioout* %18)
  ret i32 %19
}

declare dso_local %struct.TYPE_2__* @fh2id(i8*) #1

declare dso_local i32 @ivtv_get_audio_output(%struct.ivtv*, i32, %struct.v4l2_audioout*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
