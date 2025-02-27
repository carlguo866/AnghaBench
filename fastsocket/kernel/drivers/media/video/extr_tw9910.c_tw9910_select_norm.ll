; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tw9910.c_tw9910_select_norm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tw9910.c_tw9910_select_norm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tw9910_scale_ctrl = type { i64, i64 }
%struct.soc_camera_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@V4L2_STD_NTSC = common dso_local global i32 0, align 4
@tw9910_ntsc_scales = common dso_local global %struct.tw9910_scale_ctrl* null, align 8
@V4L2_STD_PAL = common dso_local global i32 0, align 4
@tw9910_pal_scales = common dso_local global %struct.tw9910_scale_ctrl* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tw9910_scale_ctrl* (%struct.soc_camera_device*, i64, i64)* @tw9910_select_norm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tw9910_scale_ctrl* @tw9910_select_norm(%struct.soc_camera_device* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.tw9910_scale_ctrl*, align 8
  %5 = alloca %struct.soc_camera_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.tw9910_scale_ctrl*, align 8
  %9 = alloca %struct.tw9910_scale_ctrl*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.soc_camera_device* %0, %struct.soc_camera_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.tw9910_scale_ctrl* null, %struct.tw9910_scale_ctrl** %9, align 8
  %15 = load %struct.soc_camera_device*, %struct.soc_camera_device** %5, align 8
  %16 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %10, align 4
  store i64 4294967295, i64* %11, align 8
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @V4L2_STD_NTSC, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = load %struct.tw9910_scale_ctrl*, %struct.tw9910_scale_ctrl** @tw9910_ntsc_scales, align 8
  store %struct.tw9910_scale_ctrl* %25, %struct.tw9910_scale_ctrl** %8, align 8
  %26 = load %struct.tw9910_scale_ctrl*, %struct.tw9910_scale_ctrl** @tw9910_ntsc_scales, align 8
  %27 = call i32 @ARRAY_SIZE(%struct.tw9910_scale_ctrl* %26)
  store i32 %27, i32* %13, align 4
  br label %39

28:                                               ; preds = %3
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @V4L2_STD_PAL, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load %struct.tw9910_scale_ctrl*, %struct.tw9910_scale_ctrl** @tw9910_pal_scales, align 8
  store %struct.tw9910_scale_ctrl* %34, %struct.tw9910_scale_ctrl** %8, align 8
  %35 = load %struct.tw9910_scale_ctrl*, %struct.tw9910_scale_ctrl** @tw9910_pal_scales, align 8
  %36 = call i32 @ARRAY_SIZE(%struct.tw9910_scale_ctrl* %35)
  store i32 %36, i32* %13, align 4
  br label %38

37:                                               ; preds = %28
  store %struct.tw9910_scale_ctrl* null, %struct.tw9910_scale_ctrl** %4, align 8
  br label %79

38:                                               ; preds = %33
  br label %39

39:                                               ; preds = %38, %24
  store i32 0, i32* %14, align 4
  br label %40

40:                                               ; preds = %74, %39
  %41 = load i32, i32* %14, align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %77

44:                                               ; preds = %40
  %45 = load i64, i64* %6, align 8
  %46 = load %struct.tw9910_scale_ctrl*, %struct.tw9910_scale_ctrl** %8, align 8
  %47 = load i32, i32* %14, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.tw9910_scale_ctrl, %struct.tw9910_scale_ctrl* %46, i64 %48
  %50 = getelementptr inbounds %struct.tw9910_scale_ctrl, %struct.tw9910_scale_ctrl* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %45, %51
  %53 = call i64 @abs(i64 %52)
  %54 = load i64, i64* %7, align 8
  %55 = load %struct.tw9910_scale_ctrl*, %struct.tw9910_scale_ctrl** %8, align 8
  %56 = load i32, i32* %14, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.tw9910_scale_ctrl, %struct.tw9910_scale_ctrl* %55, i64 %57
  %59 = getelementptr inbounds %struct.tw9910_scale_ctrl, %struct.tw9910_scale_ctrl* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = sub nsw i64 %54, %60
  %62 = call i64 @abs(i64 %61)
  %63 = add nsw i64 %53, %62
  store i64 %63, i64* %12, align 8
  %64 = load i64, i64* %12, align 8
  %65 = load i64, i64* %11, align 8
  %66 = icmp slt i64 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %44
  %68 = load i64, i64* %12, align 8
  store i64 %68, i64* %11, align 8
  %69 = load %struct.tw9910_scale_ctrl*, %struct.tw9910_scale_ctrl** %8, align 8
  %70 = load i32, i32* %14, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.tw9910_scale_ctrl, %struct.tw9910_scale_ctrl* %69, i64 %71
  store %struct.tw9910_scale_ctrl* %72, %struct.tw9910_scale_ctrl** %9, align 8
  br label %73

73:                                               ; preds = %67, %44
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %14, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %14, align 4
  br label %40

77:                                               ; preds = %40
  %78 = load %struct.tw9910_scale_ctrl*, %struct.tw9910_scale_ctrl** %9, align 8
  store %struct.tw9910_scale_ctrl* %78, %struct.tw9910_scale_ctrl** %4, align 8
  br label %79

79:                                               ; preds = %77, %37
  %80 = load %struct.tw9910_scale_ctrl*, %struct.tw9910_scale_ctrl** %4, align 8
  ret %struct.tw9910_scale_ctrl* %80
}

declare dso_local i32 @ARRAY_SIZE(%struct.tw9910_scale_ctrl*) #1

declare dso_local i64 @abs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
