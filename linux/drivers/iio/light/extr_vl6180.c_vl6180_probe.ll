; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_vl6180.c_vl6180_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_vl6180.c_vl6180_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.vl6180_data = type { i32, %struct.i2c_client* }
%struct.iio_dev = type { i32, i32, i32, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@vl6180_info = common dso_local global i32 0, align 4
@vl6180_channels = common dso_local global i32 0, align 4
@VL6180_DRV_NAME = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @vl6180_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vl6180_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.vl6180_data*, align 8
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  %11 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %10, i32 16)
  store %struct.iio_dev* %11, %struct.iio_dev** %7, align 8
  %12 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %13 = icmp ne %struct.iio_dev* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %60

17:                                               ; preds = %2
  %18 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %19 = call %struct.vl6180_data* @iio_priv(%struct.iio_dev* %18)
  store %struct.vl6180_data* %19, %struct.vl6180_data** %6, align 8
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %22 = call i32 @i2c_set_clientdata(%struct.i2c_client* %20, %struct.iio_dev* %21)
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = load %struct.vl6180_data*, %struct.vl6180_data** %6, align 8
  %25 = getelementptr inbounds %struct.vl6180_data, %struct.vl6180_data* %24, i32 0, i32 1
  store %struct.i2c_client* %23, %struct.i2c_client** %25, align 8
  %26 = load %struct.vl6180_data*, %struct.vl6180_data** %6, align 8
  %27 = getelementptr inbounds %struct.vl6180_data, %struct.vl6180_data* %26, i32 0, i32 0
  %28 = call i32 @mutex_init(i32* %27)
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %29, i32 0, i32 0
  %31 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %32 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %31, i32 0, i32 5
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32* %30, i32** %33, align 8
  %34 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %35 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %34, i32 0, i32 4
  store i32* @vl6180_info, i32** %35, align 8
  %36 = load i32, i32* @vl6180_channels, align 4
  %37 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %38 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @vl6180_channels, align 4
  %40 = call i32 @ARRAY_SIZE(i32 %39)
  %41 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %42 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* @VL6180_DRV_NAME, align 4
  %44 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %45 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %47 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %48 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.vl6180_data*, %struct.vl6180_data** %6, align 8
  %50 = call i32 @vl6180_init(%struct.vl6180_data* %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %17
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %3, align 4
  br label %60

55:                                               ; preds = %17
  %56 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %57 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %56, i32 0, i32 0
  %58 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %59 = call i32 @devm_iio_device_register(i32* %57, %struct.iio_dev* %58)
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %55, %53, %14
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.vl6180_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @vl6180_init(%struct.vl6180_data*) #1

declare dso_local i32 @devm_iio_device_register(i32*, %struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
