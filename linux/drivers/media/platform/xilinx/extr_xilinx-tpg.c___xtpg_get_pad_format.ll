; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/xilinx/extr_xilinx-tpg.c___xtpg_get_pad_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/xilinx/extr_xilinx-tpg.c___xtpg_get_pad_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_mbus_framefmt = type { i32 }
%struct.xtpg_device = type { %struct.v4l2_mbus_framefmt*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.v4l2_mbus_framefmt* (%struct.xtpg_device*, %struct.v4l2_subdev_pad_config*, i32, i32)* @__xtpg_get_pad_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.v4l2_mbus_framefmt* @__xtpg_get_pad_format(%struct.xtpg_device* %0, %struct.v4l2_subdev_pad_config* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %6 = alloca %struct.xtpg_device*, align 8
  %7 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.xtpg_device* %0, %struct.xtpg_device** %6, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %25 [
    i32 128, label %11
    i32 129, label %18
  ]

11:                                               ; preds = %4
  %12 = load %struct.xtpg_device*, %struct.xtpg_device** %6, align 8
  %13 = getelementptr inbounds %struct.xtpg_device, %struct.xtpg_device* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call %struct.v4l2_mbus_framefmt* @v4l2_subdev_get_try_format(i32* %14, %struct.v4l2_subdev_pad_config* %15, i32 %16)
  store %struct.v4l2_mbus_framefmt* %17, %struct.v4l2_mbus_framefmt** %5, align 8
  br label %26

18:                                               ; preds = %4
  %19 = load %struct.xtpg_device*, %struct.xtpg_device** %6, align 8
  %20 = getelementptr inbounds %struct.xtpg_device, %struct.xtpg_device* %19, i32 0, i32 0
  %21 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %20, align 8
  %22 = load i32, i32* %8, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %21, i64 %23
  store %struct.v4l2_mbus_framefmt* %24, %struct.v4l2_mbus_framefmt** %5, align 8
  br label %26

25:                                               ; preds = %4
  store %struct.v4l2_mbus_framefmt* null, %struct.v4l2_mbus_framefmt** %5, align 8
  br label %26

26:                                               ; preds = %25, %18, %11
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
