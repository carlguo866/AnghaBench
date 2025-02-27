; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_av7110_v4l.c_vidioc_g_sliced_vbi_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_av7110_v4l.c_vidioc_g_sliced_vbi_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_sliced_vbi_cap = type { i64, i8***, i8* }
%struct.saa7146_dev = type { i64 }
%struct.av7110 = type { i32 }
%struct.saa7146_fh = type { %struct.saa7146_dev* }

@.str = private unnamed_addr constant [25 x i8] c"VIDIOC_G_SLICED_VBI_CAP\0A\00", align 1
@V4L2_BUF_TYPE_SLICED_VBI_OUTPUT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@V4L2_SLICED_WSS_625 = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_sliced_vbi_cap*)* @vidioc_g_sliced_vbi_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_g_sliced_vbi_cap(%struct.file* %0, i8* %1, %struct.v4l2_sliced_vbi_cap* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_sliced_vbi_cap*, align 8
  %8 = alloca %struct.saa7146_dev*, align 8
  %9 = alloca %struct.av7110*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_sliced_vbi_cap* %2, %struct.v4l2_sliced_vbi_cap** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.saa7146_fh*
  %12 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %11, i32 0, i32 0
  %13 = load %struct.saa7146_dev*, %struct.saa7146_dev** %12, align 8
  store %struct.saa7146_dev* %13, %struct.saa7146_dev** %8, align 8
  %14 = load %struct.saa7146_dev*, %struct.saa7146_dev** %8, align 8
  %15 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.av7110*
  store %struct.av7110* %17, %struct.av7110** %9, align 8
  %18 = call i32 @dprintk(i32 2, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.v4l2_sliced_vbi_cap*, %struct.v4l2_sliced_vbi_cap** %7, align 8
  %20 = getelementptr inbounds %struct.v4l2_sliced_vbi_cap, %struct.v4l2_sliced_vbi_cap* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @V4L2_BUF_TYPE_SLICED_VBI_OUTPUT, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %45

27:                                               ; preds = %3
  %28 = load %struct.av7110*, %struct.av7110** %9, align 8
  %29 = getelementptr inbounds %struct.av7110, %struct.av7110* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @FW_VERSION(i32 %30)
  %32 = icmp sge i32 %31, 9763
  br i1 %32, label %33, label %44

33:                                               ; preds = %27
  %34 = load i8*, i8** @V4L2_SLICED_WSS_625, align 8
  %35 = load %struct.v4l2_sliced_vbi_cap*, %struct.v4l2_sliced_vbi_cap** %7, align 8
  %36 = getelementptr inbounds %struct.v4l2_sliced_vbi_cap, %struct.v4l2_sliced_vbi_cap* %35, i32 0, i32 2
  store i8* %34, i8** %36, align 8
  %37 = load i8*, i8** @V4L2_SLICED_WSS_625, align 8
  %38 = load %struct.v4l2_sliced_vbi_cap*, %struct.v4l2_sliced_vbi_cap** %7, align 8
  %39 = getelementptr inbounds %struct.v4l2_sliced_vbi_cap, %struct.v4l2_sliced_vbi_cap* %38, i32 0, i32 1
  %40 = load i8***, i8**** %39, align 8
  %41 = getelementptr inbounds i8**, i8*** %40, i64 0
  %42 = load i8**, i8*** %41, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 23
  store i8* %37, i8** %43, align 8
  br label %44

44:                                               ; preds = %33, %27
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %44, %24
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @dprintk(i32, i8*) #1

declare dso_local i32 @FW_VERSION(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
