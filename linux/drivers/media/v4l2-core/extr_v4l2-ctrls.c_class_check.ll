; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ctrls.c_class_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ctrls.c_class_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl_handler = type { i32 }

@V4L2_CTRL_WHICH_DEF_VAL = common dso_local global i32 0, align 4
@V4L2_CTRL_WHICH_REQUEST_VAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ctrl_handler*, i32)* @class_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @class_check(%struct.v4l2_ctrl_handler* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_ctrl_handler*, align 8
  %5 = alloca i32, align 4
  store %struct.v4l2_ctrl_handler* %0, %struct.v4l2_ctrl_handler** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @V4L2_CTRL_WHICH_DEF_VAL, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @V4L2_CTRL_WHICH_REQUEST_VAL, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %12, %8, %2
  store i32 0, i32* %3, align 4
  br label %29

17:                                               ; preds = %12
  %18 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = or i32 %19, 1
  %21 = call i64 @find_ref_lock(%struct.v4l2_ctrl_handler* %18, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %27

24:                                               ; preds = %17
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  br label %27

27:                                               ; preds = %24, %23
  %28 = phi i32 [ 0, %23 ], [ %26, %24 ]
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %27, %16
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i64 @find_ref_lock(%struct.v4l2_ctrl_handler*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
