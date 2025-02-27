; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_v4l2_buffers.c_v4l2_get_color_space.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_v4l2_buffers.c_v4l2_get_color_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__*, %struct.TYPE_10__ }
%struct.TYPE_13__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_9__, %struct.TYPE_11__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }

@AVCOL_SPC_RGB = common dso_local global i32 0, align 4
@AVCOL_SPC_BT709 = common dso_local global i32 0, align 4
@AVCOL_SPC_FCC = common dso_local global i32 0, align 4
@AVCOL_SPC_BT470BG = common dso_local global i32 0, align 4
@AVCOL_SPC_SMPTE170M = common dso_local global i32 0, align 4
@AVCOL_SPC_SMPTE240M = common dso_local global i32 0, align 4
@V4L2_YCBCR_ENC_BT2020_CONST_LUM = common dso_local global i32 0, align 4
@AVCOL_SPC_BT2020_CL = common dso_local global i32 0, align 4
@AVCOL_SPC_BT2020_NCL = common dso_local global i32 0, align 4
@AVCOL_SPC_UNSPECIFIED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*)* @v4l2_get_color_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v4l2_get_color_space(%struct.TYPE_15__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  %6 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i64 @V4L2_TYPE_IS_MULTIPLANAR(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %1
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  br label %30

21:                                               ; preds = %1
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  br label %30

30:                                               ; preds = %21, %12
  %31 = phi i32 [ %20, %12 ], [ %29, %21 ]
  store i32 %31, i32* %5, align 4
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @V4L2_TYPE_IS_MULTIPLANAR(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %30
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  br label %56

47:                                               ; preds = %30
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  br label %56

56:                                               ; preds = %47, %38
  %57 = phi i32 [ %46, %38 ], [ %55, %47 ]
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %5, align 4
  switch i32 %58, label %79 [
    i32 128, label %59
    i32 131, label %61
    i32 133, label %63
    i32 134, label %65
    i32 130, label %67
    i32 129, label %69
    i32 132, label %71
  ]

59:                                               ; preds = %56
  %60 = load i32, i32* @AVCOL_SPC_RGB, align 4
  store i32 %60, i32* %2, align 4
  br label %82

61:                                               ; preds = %56
  %62 = load i32, i32* @AVCOL_SPC_BT709, align 4
  store i32 %62, i32* %2, align 4
  br label %82

63:                                               ; preds = %56
  %64 = load i32, i32* @AVCOL_SPC_FCC, align 4
  store i32 %64, i32* %2, align 4
  br label %82

65:                                               ; preds = %56
  %66 = load i32, i32* @AVCOL_SPC_BT470BG, align 4
  store i32 %66, i32* %2, align 4
  br label %82

67:                                               ; preds = %56
  %68 = load i32, i32* @AVCOL_SPC_SMPTE170M, align 4
  store i32 %68, i32* %2, align 4
  br label %82

69:                                               ; preds = %56
  %70 = load i32, i32* @AVCOL_SPC_SMPTE240M, align 4
  store i32 %70, i32* %2, align 4
  br label %82

71:                                               ; preds = %56
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @V4L2_YCBCR_ENC_BT2020_CONST_LUM, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = load i32, i32* @AVCOL_SPC_BT2020_CL, align 4
  store i32 %76, i32* %2, align 4
  br label %82

77:                                               ; preds = %71
  %78 = load i32, i32* @AVCOL_SPC_BT2020_NCL, align 4
  store i32 %78, i32* %2, align 4
  br label %82

79:                                               ; preds = %56
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* @AVCOL_SPC_UNSPECIFIED, align 4
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %80, %77, %75, %69, %67, %65, %63, %61, %59
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i64 @V4L2_TYPE_IS_MULTIPLANAR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
