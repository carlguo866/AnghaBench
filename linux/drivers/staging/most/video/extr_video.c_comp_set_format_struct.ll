; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/video/extr_video.c_comp_set_format_struct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/video/extr_video.c_comp_set_format_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_format = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i64, i32, i32, i64, i32 }

@V4L2_PIX_FMT_MPEG = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_REC709 = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_format*)* @comp_set_format_struct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @comp_set_format_struct(%struct.v4l2_format* %0) #0 {
  %2 = alloca %struct.v4l2_format*, align 8
  store %struct.v4l2_format* %0, %struct.v4l2_format** %2, align 8
  %3 = load %struct.v4l2_format*, %struct.v4l2_format** %2, align 8
  %4 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store i32 8, i32* %6, align 8
  %7 = load %struct.v4l2_format*, %struct.v4l2_format** %2, align 8
  %8 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  store i32 8, i32* %10, align 4
  %11 = load i32, i32* @V4L2_PIX_FMT_MPEG, align 4
  %12 = load %struct.v4l2_format*, %struct.v4l2_format** %2, align 8
  %13 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 7
  store i32 %11, i32* %15, align 8
  %16 = load %struct.v4l2_format*, %struct.v4l2_format** %2, align 8
  %17 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 6
  store i64 0, i64* %19, align 8
  %20 = load %struct.v4l2_format*, %struct.v4l2_format** %2, align 8
  %21 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 2
  store i32 376, i32* %23, align 8
  %24 = load i32, i32* @V4L2_COLORSPACE_REC709, align 4
  %25 = load %struct.v4l2_format*, %struct.v4l2_format** %2, align 8
  %26 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 5
  store i32 %24, i32* %28, align 4
  %29 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %30 = load %struct.v4l2_format*, %struct.v4l2_format** %2, align 8
  %31 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 4
  store i32 %29, i32* %33, align 8
  %34 = load %struct.v4l2_format*, %struct.v4l2_format** %2, align 8
  %35 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 3
  store i64 0, i64* %37, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
