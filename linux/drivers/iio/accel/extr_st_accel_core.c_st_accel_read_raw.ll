; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_st_accel_core.c_st_accel_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_st_accel_core.c_st_accel_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.st_sensor_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IIO_VAL_INT = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @st_accel_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_accel_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.st_sensor_data*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.st_sensor_data* @iio_priv(%struct.iio_dev* %14)
  store %struct.st_sensor_data* %15, %struct.st_sensor_data** %13, align 8
  %16 = load i64, i64* %11, align 8
  switch i64 %16, label %49 [
    i64 130, label %17
    i64 128, label %27
    i64 129, label %43
  ]

17:                                               ; preds = %5
  %18 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %19 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = call i32 @st_sensors_read_info_raw(%struct.iio_dev* %18, %struct.iio_chan_spec* %19, i32* %20)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %52

25:                                               ; preds = %17
  %26 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %26, i32* %6, align 4
  br label %54

27:                                               ; preds = %5
  %28 = load %struct.st_sensor_data*, %struct.st_sensor_data** %13, align 8
  %29 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sdiv i32 %32, 1000000
  %34 = load i32*, i32** %9, align 8
  store i32 %33, i32* %34, align 4
  %35 = load %struct.st_sensor_data*, %struct.st_sensor_data** %13, align 8
  %36 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = srem i32 %39, 1000000
  %41 = load i32*, i32** %10, align 8
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %42, i32* %6, align 4
  br label %54

43:                                               ; preds = %5
  %44 = load %struct.st_sensor_data*, %struct.st_sensor_data** %13, align 8
  %45 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32*, i32** %9, align 8
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %48, i32* %6, align 4
  br label %54

49:                                               ; preds = %5
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %6, align 4
  br label %54

52:                                               ; preds = %24
  %53 = load i32, i32* %12, align 4
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %52, %49, %43, %27, %25
  %55 = load i32, i32* %6, align 4
  ret i32 %55
}

declare dso_local %struct.st_sensor_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @st_sensors_read_info_raw(%struct.iio_dev*, %struct.iio_chan_spec*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
