; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccp2.c___ccp2_get_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccp2.c___ccp2_get_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_mbus_framefmt = type { i32 }
%struct.isp_ccp2_device = type { %struct.v4l2_mbus_framefmt*, i32 }
%struct.v4l2_subdev_pad_config = type { i32 }

@V4L2_SUBDEV_FORMAT_TRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.v4l2_mbus_framefmt* (%struct.isp_ccp2_device*, %struct.v4l2_subdev_pad_config*, i32, i32)* @__ccp2_get_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.v4l2_mbus_framefmt* @__ccp2_get_format(%struct.isp_ccp2_device* %0, %struct.v4l2_subdev_pad_config* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %6 = alloca %struct.isp_ccp2_device*, align 8
  %7 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.isp_ccp2_device* %0, %struct.isp_ccp2_device** %6, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @V4L2_SUBDEV_FORMAT_TRY, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %4
  %14 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %6, align 8
  %15 = getelementptr inbounds %struct.isp_ccp2_device, %struct.isp_ccp2_device* %14, i32 0, i32 1
  %16 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call %struct.v4l2_mbus_framefmt* @v4l2_subdev_get_try_format(i32* %15, %struct.v4l2_subdev_pad_config* %16, i32 %17)
  store %struct.v4l2_mbus_framefmt* %18, %struct.v4l2_mbus_framefmt** %5, align 8
  br label %26

19:                                               ; preds = %4
  %20 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %6, align 8
  %21 = getelementptr inbounds %struct.isp_ccp2_device, %struct.isp_ccp2_device* %20, i32 0, i32 0
  %22 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %22, i64 %24
  store %struct.v4l2_mbus_framefmt* %25, %struct.v4l2_mbus_framefmt** %5, align 8
  br label %26

26:                                               ; preds = %19, %13
  %27 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  ret %struct.v4l2_mbus_framefmt* %27
}

declare dso_local %struct.v4l2_mbus_framefmt* @v4l2_subdev_get_try_format(i32*, %struct.v4l2_subdev_pad_config*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
