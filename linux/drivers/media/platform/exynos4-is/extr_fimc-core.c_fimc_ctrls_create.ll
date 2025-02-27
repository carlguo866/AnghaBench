; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-core.c_fimc_ctrls_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-core.c_fimc_ctrls_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_ctx = type { %struct.TYPE_8__, %struct.TYPE_7__*, %struct.fimc_ctrls, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.fimc_ctrls = type { i32, i32, i8*, i32*, i8*, i8*, i8*, %struct.v4l2_ctrl_handler }
%struct.v4l2_ctrl_handler = type { i32 }
%struct.TYPE_5__ = type { i32 }

@fimc_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_ROTATE = common dso_local global i32 0, align 4
@V4L2_CID_HFLIP = common dso_local global i32 0, align 4
@V4L2_CID_VFLIP = common dso_local global i32 0, align 4
@V4L2_CID_ALPHA_COMPONENT = common dso_local global i32 0, align 4
@V4L2_CID_COLORFX = common dso_local global i32 0, align 4
@V4L2_COLORFX_SET_CBCR = common dso_local global i32 0, align 4
@V4L2_COLORFX_NONE = common dso_local global i32 0, align 4
@V4L2_CID_COLORFX_CBCR = common dso_local global i32 0, align 4
@FIMC_REG_CIIMGEFF_FIN_BYPASS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fimc_ctrls_create(%struct.fimc_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fimc_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fimc_ctrls*, align 8
  %6 = alloca %struct.v4l2_ctrl_handler*, align 8
  store %struct.fimc_ctx* %0, %struct.fimc_ctx** %3, align 8
  %7 = load %struct.fimc_ctx*, %struct.fimc_ctx** %3, align 8
  %8 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @fimc_get_alpha_mask(i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load %struct.fimc_ctx*, %struct.fimc_ctx** %3, align 8
  %13 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %12, i32 0, i32 2
  store %struct.fimc_ctrls* %13, %struct.fimc_ctrls** %5, align 8
  %14 = load %struct.fimc_ctrls*, %struct.fimc_ctrls** %5, align 8
  %15 = getelementptr inbounds %struct.fimc_ctrls, %struct.fimc_ctrls* %14, i32 0, i32 7
  store %struct.v4l2_ctrl_handler* %15, %struct.v4l2_ctrl_handler** %6, align 8
  %16 = load %struct.fimc_ctx*, %struct.fimc_ctx** %3, align 8
  %17 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.fimc_ctrls, %struct.fimc_ctrls* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %90

22:                                               ; preds = %1
  %23 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %24 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %23, i32 6)
  %25 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %26 = load i32, i32* @V4L2_CID_ROTATE, align 4
  %27 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %25, i32* @fimc_ctrl_ops, i32 %26, i32 0, i32 270, i32 90, i32 0)
  %28 = load %struct.fimc_ctrls*, %struct.fimc_ctrls** %5, align 8
  %29 = getelementptr inbounds %struct.fimc_ctrls, %struct.fimc_ctrls* %28, i32 0, i32 6
  store i8* %27, i8** %29, align 8
  %30 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %31 = load i32, i32* @V4L2_CID_HFLIP, align 4
  %32 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %30, i32* @fimc_ctrl_ops, i32 %31, i32 0, i32 1, i32 1, i32 0)
  %33 = load %struct.fimc_ctrls*, %struct.fimc_ctrls** %5, align 8
  %34 = getelementptr inbounds %struct.fimc_ctrls, %struct.fimc_ctrls* %33, i32 0, i32 5
  store i8* %32, i8** %34, align 8
  %35 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %36 = load i32, i32* @V4L2_CID_VFLIP, align 4
  %37 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %35, i32* @fimc_ctrl_ops, i32 %36, i32 0, i32 1, i32 1, i32 0)
  %38 = load %struct.fimc_ctrls*, %struct.fimc_ctrls** %5, align 8
  %39 = getelementptr inbounds %struct.fimc_ctrls, %struct.fimc_ctrls* %38, i32 0, i32 4
  store i8* %37, i8** %39, align 8
  %40 = load %struct.fimc_ctx*, %struct.fimc_ctx** %3, align 8
  %41 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %40, i32 0, i32 1
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %22
  %49 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %50 = load i32, i32* @V4L2_CID_ALPHA_COMPONENT, align 4
  %51 = load i32, i32* %4, align 4
  %52 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %49, i32* @fimc_ctrl_ops, i32 %50, i32 0, i32 %51, i32 1, i32 0)
  %53 = bitcast i8* %52 to i32*
  %54 = load %struct.fimc_ctrls*, %struct.fimc_ctrls** %5, align 8
  %55 = getelementptr inbounds %struct.fimc_ctrls, %struct.fimc_ctrls* %54, i32 0, i32 3
  store i32* %53, i32** %55, align 8
  br label %59

56:                                               ; preds = %22
  %57 = load %struct.fimc_ctrls*, %struct.fimc_ctrls** %5, align 8
  %58 = getelementptr inbounds %struct.fimc_ctrls, %struct.fimc_ctrls* %57, i32 0, i32 3
  store i32* null, i32** %58, align 8
  br label %59

59:                                               ; preds = %56, %48
  %60 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %61 = load i32, i32* @V4L2_CID_COLORFX, align 4
  %62 = load i32, i32* @V4L2_COLORFX_SET_CBCR, align 4
  %63 = load i32, i32* @V4L2_COLORFX_NONE, align 4
  %64 = call i32 @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler* %60, i32* @fimc_ctrl_ops, i32 %61, i32 %62, i32 -38976, i32 %63)
  %65 = load %struct.fimc_ctrls*, %struct.fimc_ctrls** %5, align 8
  %66 = getelementptr inbounds %struct.fimc_ctrls, %struct.fimc_ctrls* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %68 = load i32, i32* @V4L2_CID_COLORFX_CBCR, align 4
  %69 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %67, i32* @fimc_ctrl_ops, i32 %68, i32 0, i32 65535, i32 1, i32 0)
  %70 = load %struct.fimc_ctrls*, %struct.fimc_ctrls** %5, align 8
  %71 = getelementptr inbounds %struct.fimc_ctrls, %struct.fimc_ctrls* %70, i32 0, i32 2
  store i8* %69, i8** %71, align 8
  %72 = load i32, i32* @FIMC_REG_CIIMGEFF_FIN_BYPASS, align 4
  %73 = load %struct.fimc_ctx*, %struct.fimc_ctx** %3, align 8
  %74 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  store i32 %72, i32* %75, align 8
  %76 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %77 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %86, label %80

80:                                               ; preds = %59
  %81 = load %struct.fimc_ctrls*, %struct.fimc_ctrls** %5, align 8
  %82 = getelementptr inbounds %struct.fimc_ctrls, %struct.fimc_ctrls* %81, i32 0, i32 1
  %83 = call i32 @v4l2_ctrl_cluster(i32 2, i32* %82)
  %84 = load %struct.fimc_ctrls*, %struct.fimc_ctrls** %5, align 8
  %85 = getelementptr inbounds %struct.fimc_ctrls, %struct.fimc_ctrls* %84, i32 0, i32 0
  store i32 1, i32* %85, align 8
  br label %86

86:                                               ; preds = %80, %59
  %87 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %88 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %2, align 4
  br label %90

90:                                               ; preds = %86, %21
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i32 @fimc_get_alpha_mask(i32) #1

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler*, i32) #1

declare dso_local i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_cluster(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
