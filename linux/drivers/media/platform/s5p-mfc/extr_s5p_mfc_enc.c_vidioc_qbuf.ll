; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_enc.c_vidioc_qbuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_enc.c_vidioc_qbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_buffer = type { i64 }
%struct.s5p_mfc_ctx = type { i64, i32, i32 }

@MFCINST_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"Call on QBUF after unrecoverable error\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE = common dso_local global i64 0, align 8
@MFCINST_FINISHING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"Call on QBUF after EOS command\0A\00", align 1
@V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_buffer*)* @vidioc_qbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_qbuf(%struct.file* %0, i8* %1, %struct.v4l2_buffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_buffer*, align 8
  %8 = alloca %struct.s5p_mfc_ctx*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_buffer* %2, %struct.v4l2_buffer** %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = call %struct.s5p_mfc_ctx* @fh_to_ctx(i8* %9)
  store %struct.s5p_mfc_ctx* %10, %struct.s5p_mfc_ctx** %8, align 8
  %11 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %8, align 8
  %12 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @MFCINST_ERROR, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = call i32 @mfc_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %56

20:                                               ; preds = %3
  %21 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %22 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %41

26:                                               ; preds = %20
  %27 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %8, align 8
  %28 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @MFCINST_FINISHING, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = call i32 @mfc_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @EIO, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %56

36:                                               ; preds = %26
  %37 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %8, align 8
  %38 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %37, i32 0, i32 2
  %39 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %40 = call i32 @vb2_qbuf(i32* %38, i32* null, %struct.v4l2_buffer* %39)
  store i32 %40, i32* %4, align 4
  br label %56

41:                                               ; preds = %20
  %42 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %43 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %41
  %48 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %8, align 8
  %49 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %48, i32 0, i32 1
  %50 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %51 = call i32 @vb2_qbuf(i32* %49, i32* null, %struct.v4l2_buffer* %50)
  store i32 %51, i32* %4, align 4
  br label %56

52:                                               ; preds = %41
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %53, %47, %36, %32, %16
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local %struct.s5p_mfc_ctx* @fh_to_ctx(i8*) #1

declare dso_local i32 @mfc_err(i8*) #1

declare dso_local i32 @vb2_qbuf(i32*, i32*, %struct.v4l2_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
