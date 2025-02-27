; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/opengl/extr_converter_vdpau.c_DecoderDeviceOpen.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/opengl/extr_converter_vdpau.c_DecoderDeviceOpen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32*, i32, i32* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@VDP_STATUS_OK = common dso_local global i64 0, align 8
@dev_ops = common dso_local global i32 0, align 4
@VLC_DECODER_DEVICE_VDPAU = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_8__*)* @DecoderDeviceOpen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DecoderDeviceOpen(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %9 = icmp ne %struct.TYPE_8__* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %12 = call i32 @VLC_OBJECT(%struct.TYPE_8__* %11)
  %13 = call i32 @vlc_xlib_init(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %10, %2
  %16 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %16, i32* %3, align 4
  br label %37

17:                                               ; preds = %10
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @vdp_get_x11(i32 %21, i32 -1, i32** %6, i32* %7)
  %23 = load i64, i64* @VDP_STATUS_OK, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %26, i32* %3, align 4
  br label %37

27:                                               ; preds = %17
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 2
  store i32* @dev_ops, i32** %29, align 8
  %30 = load i32, i32* @VLC_DECODER_DEVICE_VDPAU, align 4
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  store i32* %33, i32** %35, align 8
  %36 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %27, %25, %15
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @vlc_xlib_init(i32) #1

declare dso_local i32 @VLC_OBJECT(%struct.TYPE_8__*) #1

declare dso_local i64 @vdp_get_x11(i32, i32, i32**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
