; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/extr_mtk_vcodec_enc.c_vidioc_venc_s_selection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/extr_mtk_vcodec_enc.c_vidioc_venc_s_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_selection = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8*, i8*, i32, i32 }
%struct.mtk_vcodec_ctx = type { i32 }
%struct.mtk_q_data = type { i8*, i8*, i32, i32 }

@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_selection*)* @vidioc_venc_s_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_venc_s_selection(%struct.file* %0, i8* %1, %struct.v4l2_selection* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_selection*, align 8
  %8 = alloca %struct.mtk_vcodec_ctx*, align 8
  %9 = alloca %struct.mtk_q_data*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_selection* %2, %struct.v4l2_selection** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call %struct.mtk_vcodec_ctx* @fh_to_ctx(i8* %10)
  store %struct.mtk_vcodec_ctx* %11, %struct.mtk_vcodec_ctx** %8, align 8
  %12 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %13 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %80

20:                                               ; preds = %3
  %21 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %8, align 8
  %22 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %23 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.mtk_q_data* @mtk_venc_get_q_data(%struct.mtk_vcodec_ctx* %21, i32 %24)
  store %struct.mtk_q_data* %25, %struct.mtk_q_data** %9, align 8
  %26 = load %struct.mtk_q_data*, %struct.mtk_q_data** %9, align 8
  %27 = icmp ne %struct.mtk_q_data* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %20
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %80

31:                                               ; preds = %20
  %32 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %33 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  switch i32 %34, label %76 [
    i32 128, label %35
  ]

35:                                               ; preds = %31
  %36 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %37 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 3
  store i32 0, i32* %38, align 4
  %39 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %40 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  store i32 0, i32* %41, align 8
  %42 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %43 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = load %struct.mtk_q_data*, %struct.mtk_q_data** %9, align 8
  %47 = getelementptr inbounds %struct.mtk_q_data, %struct.mtk_q_data* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @min(i8* %45, i32 %48)
  %50 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %51 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  store i8* %49, i8** %52, align 8
  %53 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %54 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = load %struct.mtk_q_data*, %struct.mtk_q_data** %9, align 8
  %58 = getelementptr inbounds %struct.mtk_q_data, %struct.mtk_q_data* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i8* @min(i8* %56, i32 %59)
  %61 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %62 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i8* %60, i8** %63, align 8
  %64 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %65 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  %68 = load %struct.mtk_q_data*, %struct.mtk_q_data** %9, align 8
  %69 = getelementptr inbounds %struct.mtk_q_data, %struct.mtk_q_data* %68, i32 0, i32 1
  store i8* %67, i8** %69, align 8
  %70 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %71 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = load %struct.mtk_q_data*, %struct.mtk_q_data** %9, align 8
  %75 = getelementptr inbounds %struct.mtk_q_data, %struct.mtk_q_data* %74, i32 0, i32 0
  store i8* %73, i8** %75, align 8
  br label %79

76:                                               ; preds = %31
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %4, align 4
  br label %80

79:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %79, %76, %28, %17
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local %struct.mtk_vcodec_ctx* @fh_to_ctx(i8*) #1

declare dso_local %struct.mtk_q_data* @mtk_venc_get_q_data(%struct.mtk_vcodec_ctx*, i32) #1

declare dso_local i8* @min(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
