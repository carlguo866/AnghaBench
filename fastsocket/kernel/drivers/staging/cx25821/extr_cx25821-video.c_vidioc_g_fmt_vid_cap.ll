; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-video.c_vidioc_g_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-video.c_vidioc_g_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32 }
%struct.cx25821_fh = type { i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vidioc_g_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_format*, align 8
  %7 = alloca %struct.cx25821_fh*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %6, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.cx25821_fh*
  store %struct.cx25821_fh* %9, %struct.cx25821_fh** %7, align 8
  %10 = load %struct.cx25821_fh*, %struct.cx25821_fh** %7, align 8
  %11 = getelementptr inbounds %struct.cx25821_fh, %struct.cx25821_fh* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %14 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  store i32 %12, i32* %16, align 4
  %17 = load %struct.cx25821_fh*, %struct.cx25821_fh** %7, align 8
  %18 = getelementptr inbounds %struct.cx25821_fh, %struct.cx25821_fh* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %21 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  store i32 %19, i32* %23, align 4
  %24 = load %struct.cx25821_fh*, %struct.cx25821_fh** %7, align 8
  %25 = getelementptr inbounds %struct.cx25821_fh, %struct.cx25821_fh* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %29 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 5
  store i32 %27, i32* %31, align 4
  %32 = load %struct.cx25821_fh*, %struct.cx25821_fh** %7, align 8
  %33 = getelementptr inbounds %struct.cx25821_fh, %struct.cx25821_fh* %32, i32 0, i32 2
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %38 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 4
  store i32 %36, i32* %40, align 4
  %41 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %42 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.cx25821_fh*, %struct.cx25821_fh** %7, align 8
  %47 = getelementptr inbounds %struct.cx25821_fh, %struct.cx25821_fh* %46, i32 0, i32 2
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = mul nsw i32 %45, %50
  %52 = ashr i32 %51, 3
  %53 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %54 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 2
  store i32 %52, i32* %56, align 4
  %57 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %58 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %63 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = mul nsw i32 %61, %66
  %68 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %69 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 3
  store i32 %67, i32* %71, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
