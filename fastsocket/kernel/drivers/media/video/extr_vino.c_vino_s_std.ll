; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_s_std.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_s_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.file = type { i32 }
%struct.vino_channel_settings = type { i64 }

@vino_drvdata = common dso_local global %struct.TYPE_4__* null, align 8
@EBUSY = common dso_local global i32 0, align 4
@vino_inputs = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [19 x i8] c"standard accepted\0A\00", align 1
@VINO_INPUT_D1 = common dso_local global i64 0, align 8
@V4L2_STD_PAL = common dso_local global i32 0, align 4
@VINO_DATA_NORM_PAL = common dso_local global i32 0, align 4
@V4L2_STD_NTSC = common dso_local global i32 0, align 4
@VINO_DATA_NORM_NTSC = common dso_local global i32 0, align 4
@V4L2_STD_SECAM = common dso_local global i32 0, align 4
@VINO_DATA_NORM_SECAM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32*)* @vino_s_std to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vino_s_std(%struct.file* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.vino_channel_settings*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.file*, %struct.file** %4, align 8
  %11 = call %struct.vino_channel_settings* @video_drvdata(%struct.file* %10)
  store %struct.vino_channel_settings* %11, %struct.vino_channel_settings** %7, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vino_drvdata, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %8, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %7, align 8
  %17 = call i32 @vino_is_input_owner(%struct.vino_channel_settings* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @EBUSY, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %9, align 4
  br label %88

22:                                               ; preds = %3
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** @vino_inputs, align 8
  %26 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %7, align 8
  %27 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %24, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %84

34:                                               ; preds = %22
  %35 = call i32 @dprintk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %7, align 8
  %37 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @VINO_INPUT_D1, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %88

42:                                               ; preds = %34
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @V4L2_STD_PAL, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %7, align 8
  %50 = load i32, i32* @VINO_DATA_NORM_PAL, align 4
  %51 = call i32 @vino_set_data_norm(%struct.vino_channel_settings* %49, i32 %50, i64* %8)
  store i32 %51, i32* %9, align 4
  br label %77

52:                                               ; preds = %42
  %53 = load i32*, i32** %6, align 8
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @V4L2_STD_NTSC, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %7, align 8
  %60 = load i32, i32* @VINO_DATA_NORM_NTSC, align 4
  %61 = call i32 @vino_set_data_norm(%struct.vino_channel_settings* %59, i32 %60, i64* %8)
  store i32 %61, i32* %9, align 4
  br label %76

62:                                               ; preds = %52
  %63 = load i32*, i32** %6, align 8
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @V4L2_STD_SECAM, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %62
  %69 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %7, align 8
  %70 = load i32, i32* @VINO_DATA_NORM_SECAM, align 4
  %71 = call i32 @vino_set_data_norm(%struct.vino_channel_settings* %69, i32 %70, i64* %8)
  store i32 %71, i32* %9, align 4
  br label %75

72:                                               ; preds = %62
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %9, align 4
  br label %75

75:                                               ; preds = %72, %68
  br label %76

76:                                               ; preds = %75, %58
  br label %77

77:                                               ; preds = %76, %48
  %78 = load i32, i32* %9, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %9, align 4
  br label %83

83:                                               ; preds = %80, %77
  br label %87

84:                                               ; preds = %22
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %9, align 4
  br label %87

87:                                               ; preds = %84, %83
  br label %88

88:                                               ; preds = %87, %41, %19
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vino_drvdata, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i64, i64* %8, align 8
  %92 = call i32 @spin_unlock_irqrestore(i32* %90, i64 %91)
  %93 = load i32, i32* %9, align 4
  ret i32 %93
}

declare dso_local %struct.vino_channel_settings* @video_drvdata(%struct.file*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @vino_is_input_owner(%struct.vino_channel_settings*) #1

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @vino_set_data_norm(%struct.vino_channel_settings*, i32, i64*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
