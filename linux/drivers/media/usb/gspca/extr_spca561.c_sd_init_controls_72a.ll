; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_spca561.c_sd_init_controls_72a.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_spca561.c_sd_init_controls_72a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { %struct.TYPE_2__, %struct.v4l2_ctrl_handler }
%struct.TYPE_2__ = type { %struct.v4l2_ctrl_handler* }
%struct.v4l2_ctrl_handler = type { i32 }
%struct.sd = type { i8*, i8*, i8* }

@sd_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_CONTRAST = common dso_local global i32 0, align 4
@V4L2_CID_HUE = common dso_local global i32 0, align 4
@V4L2_CID_BRIGHTNESS = common dso_local global i32 0, align 4
@V4L2_CID_AUTOGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Could not initialize controls\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @sd_init_controls_72a to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_init_controls_72a(%struct.gspca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca %struct.sd*, align 8
  %5 = alloca %struct.v4l2_ctrl_handler*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  %6 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %7 = bitcast %struct.gspca_dev* %6 to %struct.sd*
  store %struct.sd* %7, %struct.sd** %4, align 8
  %8 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %9 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %8, i32 0, i32 1
  store %struct.v4l2_ctrl_handler* %9, %struct.v4l2_ctrl_handler** %5, align 8
  %10 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %11 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %12 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.v4l2_ctrl_handler* %10, %struct.v4l2_ctrl_handler** %13, align 8
  %14 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %15 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %14, i32 4)
  %16 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %17 = load i32, i32* @V4L2_CID_CONTRAST, align 4
  %18 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %16, i32* @sd_ctrl_ops, i32 %17, i32 0, i32 63, i32 1, i32 32)
  %19 = load %struct.sd*, %struct.sd** %4, align 8
  %20 = getelementptr inbounds %struct.sd, %struct.sd* %19, i32 0, i32 0
  store i8* %18, i8** %20, align 8
  %21 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %22 = load i32, i32* @V4L2_CID_HUE, align 4
  %23 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %21, i32* @sd_ctrl_ops, i32 %22, i32 1, i32 127, i32 1, i32 64)
  %24 = load %struct.sd*, %struct.sd** %4, align 8
  %25 = getelementptr inbounds %struct.sd, %struct.sd* %24, i32 0, i32 2
  store i8* %23, i8** %25, align 8
  %26 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %27 = load i32, i32* @V4L2_CID_BRIGHTNESS, align 4
  %28 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %26, i32* @sd_ctrl_ops, i32 %27, i32 0, i32 63, i32 1, i32 32)
  %29 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %30 = load i32, i32* @V4L2_CID_AUTOGAIN, align 4
  %31 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %29, i32* @sd_ctrl_ops, i32 %30, i32 0, i32 1, i32 1, i32 1)
  %32 = load %struct.sd*, %struct.sd** %4, align 8
  %33 = getelementptr inbounds %struct.sd, %struct.sd* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  %34 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %35 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %1
  %39 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %41 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %2, align 4
  br label %47

43:                                               ; preds = %1
  %44 = load %struct.sd*, %struct.sd** %4, align 8
  %45 = getelementptr inbounds %struct.sd, %struct.sd* %44, i32 0, i32 0
  %46 = call i32 @v4l2_ctrl_cluster(i32 2, i8** %45)
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %43, %38
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler*, i32) #1

declare dso_local i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @v4l2_ctrl_cluster(i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
