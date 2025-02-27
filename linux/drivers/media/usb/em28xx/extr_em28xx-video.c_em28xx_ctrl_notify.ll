; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-video.c_em28xx_ctrl_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-video.c_em28xx_ctrl_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl = type { i32, i32 }
%struct.em28xx = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_ctrl*, i8*)* @em28xx_ctrl_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @em28xx_ctrl_notify(%struct.v4l2_ctrl* %0, i8* %1) #0 {
  %3 = alloca %struct.v4l2_ctrl*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.em28xx*, align 8
  store %struct.v4l2_ctrl* %0, %struct.v4l2_ctrl** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.em28xx*
  store %struct.em28xx* %7, %struct.em28xx** %5, align 8
  %8 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %9 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %27 [
    i32 129, label %11
    i32 128, label %19
  ]

11:                                               ; preds = %2
  %12 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %13 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.em28xx*, %struct.em28xx** %5, align 8
  %16 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.em28xx*, %struct.em28xx** %5, align 8
  %18 = call i32 @em28xx_audio_analog_set(%struct.em28xx* %17)
  br label %27

19:                                               ; preds = %2
  %20 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %21 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.em28xx*, %struct.em28xx** %5, align 8
  %24 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.em28xx*, %struct.em28xx** %5, align 8
  %26 = call i32 @em28xx_audio_analog_set(%struct.em28xx* %25)
  br label %27

27:                                               ; preds = %2, %19, %11
  ret void
}

declare dso_local i32 @em28xx_audio_analog_set(%struct.em28xx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
