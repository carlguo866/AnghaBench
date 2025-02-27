; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_tef6862.c_tef6862_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_tef6862.c_tef6862_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.tef6862_state = type { %struct.v4l2_subdev, i32 }
%struct.v4l2_subdev = type { i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"chip found @ 0x%02x (%s)\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TEF6862_LO_FREQ = common dso_local global i32 0, align 4
@tef6862_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @tef6862_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tef6862_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.tef6862_state*, align 8
  %7 = alloca %struct.v4l2_subdev*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %12 = call i32 @i2c_check_functionality(%struct.TYPE_2__* %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @EIO, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %45

17:                                               ; preds = %2
  %18 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = shl i32 %21, 1
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @v4l_info(%struct.i2c_client* %18, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %27)
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.tef6862_state* @kzalloc(i32 8, i32 %29)
  store %struct.tef6862_state* %30, %struct.tef6862_state** %6, align 8
  %31 = load %struct.tef6862_state*, %struct.tef6862_state** %6, align 8
  %32 = icmp eq %struct.tef6862_state* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %17
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %45

36:                                               ; preds = %17
  %37 = load i32, i32* @TEF6862_LO_FREQ, align 4
  %38 = load %struct.tef6862_state*, %struct.tef6862_state** %6, align 8
  %39 = getelementptr inbounds %struct.tef6862_state, %struct.tef6862_state* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.tef6862_state*, %struct.tef6862_state** %6, align 8
  %41 = getelementptr inbounds %struct.tef6862_state, %struct.tef6862_state* %40, i32 0, i32 0
  store %struct.v4l2_subdev* %41, %struct.v4l2_subdev** %7, align 8
  %42 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %43 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %44 = call i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev* %42, %struct.i2c_client* %43, i32* @tef6862_ops)
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %36, %33, %14
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @i2c_check_functionality(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @v4l_info(%struct.i2c_client*, i8*, i32, i32) #1

declare dso_local %struct.tef6862_state* @kzalloc(i32, i32) #1

declare dso_local i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev*, %struct.i2c_client*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
