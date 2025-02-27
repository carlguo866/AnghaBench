; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mt9m111.c_mt9m111_g_crop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mt9m111.c_mt9m111_g_crop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_crop = type { i32, i32 }
%struct.i2c_client = type { i32 }
%struct.mt9m111 = type { i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_crop*)* @mt9m111_g_crop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9m111_g_crop(%struct.v4l2_subdev* %0, %struct.v4l2_crop* %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.v4l2_crop*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca %struct.mt9m111*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store %struct.v4l2_crop* %1, %struct.v4l2_crop** %4, align 8
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %8 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %7)
  store %struct.i2c_client* %8, %struct.i2c_client** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %10 = call %struct.mt9m111* @to_mt9m111(%struct.i2c_client* %9)
  store %struct.mt9m111* %10, %struct.mt9m111** %6, align 8
  %11 = load %struct.mt9m111*, %struct.mt9m111** %6, align 8
  %12 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.v4l2_crop*, %struct.v4l2_crop** %4, align 8
  %15 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %17 = load %struct.v4l2_crop*, %struct.v4l2_crop** %4, align 8
  %18 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  ret i32 0
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.mt9m111* @to_mt9m111(%struct.i2c_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
