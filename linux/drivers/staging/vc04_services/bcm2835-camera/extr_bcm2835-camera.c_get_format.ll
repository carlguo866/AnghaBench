; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-camera/extr_bcm2835-camera.c_get_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-camera/extr_bcm2835-camera.c_get_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmal_fmt = type { i64 }
%struct.v4l2_format = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@formats = common dso_local global %struct.mmal_fmt* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mmal_fmt* (%struct.v4l2_format*)* @get_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mmal_fmt* @get_format(%struct.v4l2_format* %0) #0 {
  %2 = alloca %struct.mmal_fmt*, align 8
  %3 = alloca %struct.v4l2_format*, align 8
  %4 = alloca %struct.mmal_fmt*, align 8
  %5 = alloca i32, align 4
  store %struct.v4l2_format* %0, %struct.v4l2_format** %3, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %28, %1
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.mmal_fmt*, %struct.mmal_fmt** @formats, align 8
  %9 = call i32 @ARRAY_SIZE(%struct.mmal_fmt* %8)
  %10 = icmp ult i32 %7, %9
  br i1 %10, label %11, label %31

11:                                               ; preds = %6
  %12 = load %struct.mmal_fmt*, %struct.mmal_fmt** @formats, align 8
  %13 = load i32, i32* %5, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.mmal_fmt, %struct.mmal_fmt* %12, i64 %14
  store %struct.mmal_fmt* %15, %struct.mmal_fmt** %4, align 8
  %16 = load %struct.mmal_fmt*, %struct.mmal_fmt** %4, align 8
  %17 = getelementptr inbounds %struct.mmal_fmt, %struct.mmal_fmt* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.v4l2_format*, %struct.v4l2_format** %3, align 8
  %20 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %18, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %11
  %26 = load %struct.mmal_fmt*, %struct.mmal_fmt** %4, align 8
  store %struct.mmal_fmt* %26, %struct.mmal_fmt** %2, align 8
  br label %32

27:                                               ; preds = %11
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %5, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %6

31:                                               ; preds = %6
  store %struct.mmal_fmt* null, %struct.mmal_fmt** %2, align 8
  br label %32

32:                                               ; preds = %31, %25
  %33 = load %struct.mmal_fmt*, %struct.mmal_fmt** %2, align 8
  ret %struct.mmal_fmt* %33
}

declare dso_local i32 @ARRAY_SIZE(%struct.mmal_fmt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
