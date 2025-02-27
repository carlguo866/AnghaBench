; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/common/st_sensors/extr_st_sensors_core.c_st_sensors_read_info_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/common/st_sensors/extr_st_sensors_core.c_st_sensors_read_info_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i64, i32 }
%struct.iio_chan_spec = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.st_sensor_data = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@INDIO_BUFFER_TRIGGERED = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @st_sensors_read_info_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2) #0 {
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca %struct.iio_chan_spec*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.st_sensor_data*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %4, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %10 = call %struct.st_sensor_data* @iio_priv(%struct.iio_dev* %9)
  store %struct.st_sensor_data* %10, %struct.st_sensor_data** %8, align 8
  %11 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %12 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %11, i32 0, i32 1
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %15 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @INDIO_BUFFER_TRIGGERED, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EBUSY, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %7, align 4
  br label %59

22:                                               ; preds = %3
  %23 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %24 = call i32 @st_sensors_set_enable(%struct.iio_dev* %23, i32 1)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %59

28:                                               ; preds = %22
  %29 = load %struct.st_sensor_data*, %struct.st_sensor_data** %8, align 8
  %30 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = mul nsw i32 %33, 1000
  %35 = load %struct.st_sensor_data*, %struct.st_sensor_data** %8, align 8
  %36 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sdiv i32 %34, %37
  %39 = call i32 @msleep(i32 %38)
  %40 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %41 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @st_sensors_read_axis_data(%struct.iio_dev* %40, %struct.iio_chan_spec* %41, i32* %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %28
  br label %59

47:                                               ; preds = %28
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %51 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = ashr i32 %49, %53
  %55 = load i32*, i32** %6, align 8
  store i32 %54, i32* %55, align 4
  %56 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %57 = call i32 @st_sensors_set_enable(%struct.iio_dev* %56, i32 0)
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %47
  br label %59

59:                                               ; preds = %58, %46, %27, %19
  %60 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %61 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %60, i32 0, i32 1
  %62 = call i32 @mutex_unlock(i32* %61)
  %63 = load i32, i32* %7, align 4
  ret i32 %63
}

declare dso_local %struct.st_sensor_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @st_sensors_set_enable(%struct.iio_dev*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @st_sensors_read_axis_data(%struct.iio_dev*, %struct.iio_chan_spec*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
