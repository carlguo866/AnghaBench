; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/bmi160/extr_bmi160_core.c_bmi160_write_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/bmi160/extr_bmi160_core.c_bmi160_write_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.bmi160_data = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i64)* @bmi160_write_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bmi160_write_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.bmi160_data*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %14 = call %struct.bmi160_data* @iio_priv(%struct.iio_dev* %13)
  store %struct.bmi160_data* %14, %struct.bmi160_data** %12, align 8
  %15 = load i64, i64* %11, align 8
  switch i64 %15, label %33 [
    i64 128, label %16
    i64 129, label %24
  ]

16:                                               ; preds = %5
  %17 = load %struct.bmi160_data*, %struct.bmi160_data** %12, align 8
  %18 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %19 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @bmi160_to_sensor(i32 %20)
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @bmi160_set_scale(%struct.bmi160_data* %17, i32 %21, i32 %22)
  store i32 %23, i32* %6, align 4
  br label %36

24:                                               ; preds = %5
  %25 = load %struct.bmi160_data*, %struct.bmi160_data** %12, align 8
  %26 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %27 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @bmi160_to_sensor(i32 %28)
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @bmi160_set_odr(%struct.bmi160_data* %25, i32 %29, i32 %30, i32 %31)
  store i32 %32, i32* %6, align 4
  br label %36

33:                                               ; preds = %5
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %33, %24, %16
  %37 = load i32, i32* %6, align 4
  ret i32 %37
}

declare dso_local %struct.bmi160_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @bmi160_set_scale(%struct.bmi160_data*, i32, i32) #1

declare dso_local i32 @bmi160_to_sensor(i32) #1

declare dso_local i32 @bmi160_set_odr(%struct.bmi160_data*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
