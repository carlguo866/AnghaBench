; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_fsl-viu.c_vidioc_enum_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_fsl-viu.c_vidioc_enum_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.file = type { i32 }
%struct.v4l2_fmtdesc = type { i32, i32 }

@NUM_FORMATS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@formats = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_fmtdesc*)* @vidioc_enum_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_enum_fmt(%struct.file* %0, i8* %1, %struct.v4l2_fmtdesc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_fmtdesc*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_fmtdesc* %2, %struct.v4l2_fmtdesc** %7, align 8
  %9 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %10 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %8, align 4
  %12 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %13 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @NUM_FORMATS, align 4
  %16 = icmp sge i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %29

20:                                               ; preds = %3
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @formats, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %28 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %20, %17
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
