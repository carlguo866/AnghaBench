; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_saa7110.c_saa7110_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_saa7110.c_saa7110_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl = type { i32, i32 }
%struct.v4l2_subdev = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ctrl*)* @saa7110_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa7110_s_ctrl(%struct.v4l2_ctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_ctrl*, align 8
  %4 = alloca %struct.v4l2_subdev*, align 8
  store %struct.v4l2_ctrl* %0, %struct.v4l2_ctrl** %3, align 8
  %5 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %6 = call %struct.v4l2_subdev* @to_sd(%struct.v4l2_ctrl* %5)
  store %struct.v4l2_subdev* %6, %struct.v4l2_subdev** %4, align 8
  %7 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %8 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %34 [
    i32 131, label %10
    i32 130, label %16
    i32 128, label %22
    i32 129, label %28
  ]

10:                                               ; preds = %1
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %12 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %13 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @saa7110_write(%struct.v4l2_subdev* %11, i32 25, i32 %14)
  br label %37

16:                                               ; preds = %1
  %17 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %18 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %19 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @saa7110_write(%struct.v4l2_subdev* %17, i32 19, i32 %20)
  br label %37

22:                                               ; preds = %1
  %23 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %24 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %25 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @saa7110_write(%struct.v4l2_subdev* %23, i32 18, i32 %26)
  br label %37

28:                                               ; preds = %1
  %29 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %30 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %31 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @saa7110_write(%struct.v4l2_subdev* %29, i32 7, i32 %32)
  br label %37

34:                                               ; preds = %1
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %38

37:                                               ; preds = %28, %22, %16, %10
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %34
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local %struct.v4l2_subdev* @to_sd(%struct.v4l2_ctrl*) #1

declare dso_local i32 @saa7110_write(%struct.v4l2_subdev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
