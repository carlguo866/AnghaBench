; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-hdw.c_pvr2_hdw_cx25840_vbi_hack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-hdw.c_pvr2_hdw_cx25840_vbi_hack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_hdw = type { i64, i32 }
%struct.v4l2_format = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@PVR2_CLIENT_ID_CX25840 = common dso_local global i64 0, align 8
@PVR2_TRACE_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Module ID %u: Executing cx25840 VBI hack\00", align 1
@V4L2_BUF_TYPE_SLICED_VBI_CAPTURE = common dso_local global i32 0, align 4
@vbi = common dso_local global i32 0, align 4
@s_sliced_fmt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pvr2_hdw*)* @pvr2_hdw_cx25840_vbi_hack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pvr2_hdw_cx25840_vbi_hack(%struct.pvr2_hdw* %0) #0 {
  %2 = alloca %struct.pvr2_hdw*, align 8
  %3 = alloca %struct.v4l2_format, align 4
  store %struct.pvr2_hdw* %0, %struct.pvr2_hdw** %2, align 8
  %4 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %5 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @PVR2_CLIENT_ID_CX25840, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %29

10:                                               ; preds = %1
  %11 = load i32, i32* @PVR2_TRACE_INIT, align 4
  %12 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %13 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @pvr2_trace(i32 %11, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %14)
  %16 = call i32 @memset(%struct.v4l2_format* %3, i32 0, i32 8)
  %17 = load i32, i32* @V4L2_BUF_TYPE_SLICED_VBI_CAPTURE, align 4
  %18 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %3, i32 0, i32 1
  store i32 %17, i32* %18, align 4
  %19 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %20 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %19, i32 0, i32 1
  %21 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %22 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* @vbi, align 4
  %25 = load i32, i32* @s_sliced_fmt, align 4
  %26 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %3, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 @v4l2_device_call_all(i32* %20, i64 %23, i32 %24, i32 %25, i32* %27)
  br label %29

29:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @pvr2_trace(i32, i8*, i64) #1

declare dso_local i32 @memset(%struct.v4l2_format*, i32, i32) #1

declare dso_local i32 @v4l2_device_call_all(i32*, i64, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
