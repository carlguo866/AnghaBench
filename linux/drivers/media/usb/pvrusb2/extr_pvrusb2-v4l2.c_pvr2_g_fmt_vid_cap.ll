; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-v4l2.c_pvr2_g_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-v4l2.c_pvr2_g_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.pvr2_v4l2_fh* }
%struct.pvr2_v4l2_fh = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.pvr2_hdw* }
%struct.pvr2_hdw = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@pvr_format = common dso_local global i32* null, align 8
@PVR_FORMAT_PIX = common dso_local global i64 0, align 8
@PVR2_CID_HRES = common dso_local global i32 0, align 4
@PVR2_CID_VRES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @pvr2_g_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvr2_g_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_format*, align 8
  %7 = alloca %struct.pvr2_v4l2_fh*, align 8
  %8 = alloca %struct.pvr2_hdw*, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %6, align 8
  %10 = load %struct.file*, %struct.file** %4, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 0
  %12 = load %struct.pvr2_v4l2_fh*, %struct.pvr2_v4l2_fh** %11, align 8
  store %struct.pvr2_v4l2_fh* %12, %struct.pvr2_v4l2_fh** %7, align 8
  %13 = load %struct.pvr2_v4l2_fh*, %struct.pvr2_v4l2_fh** %7, align 8
  %14 = getelementptr inbounds %struct.pvr2_v4l2_fh, %struct.pvr2_v4l2_fh* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %17, align 8
  store %struct.pvr2_hdw* %18, %struct.pvr2_hdw** %8, align 8
  %19 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %20 = load i32*, i32** @pvr_format, align 8
  %21 = load i64, i64* @PVR_FORMAT_PIX, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = call i32 @memcpy(%struct.v4l2_format* %19, i32* %22, i32 8)
  store i32 0, i32* %9, align 4
  %24 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %8, align 8
  %25 = load i32, i32* @PVR2_CID_HRES, align 4
  %26 = call i32 @pvr2_hdw_get_ctrl_by_id(%struct.pvr2_hdw* %24, i32 %25)
  %27 = call i32 @pvr2_ctrl_get_value(i32 %26, i32* %9)
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %30 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  store i32 %28, i32* %32, align 4
  store i32 0, i32* %9, align 4
  %33 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %8, align 8
  %34 = load i32, i32* @PVR2_CID_VRES, align 4
  %35 = call i32 @pvr2_hdw_get_ctrl_by_id(%struct.pvr2_hdw* %33, i32 %34)
  %36 = call i32 @pvr2_ctrl_get_value(i32 %35, i32* %9)
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %39 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  store i32 %37, i32* %41, align 4
  ret i32 0
}

declare dso_local i32 @memcpy(%struct.v4l2_format*, i32*, i32) #1

declare dso_local i32 @pvr2_ctrl_get_value(i32, i32*) #1

declare dso_local i32 @pvr2_hdw_get_ctrl_by_id(%struct.pvr2_hdw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
