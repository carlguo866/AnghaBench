; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7291.c_ad7291_read_event_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7291.c_ad7291_read_event_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64 }
%struct.ad7291_chip_info = type { i32 }

@IIO_EV_INFO_HYSTERESIS = common dso_local global i32 0, align 4
@IIO_VOLTAGE = common dso_local global i64 0, align 8
@AD7291_VALUE_MASK = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i32, i32*, i32*)* @ad7291_read_event_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7291_read_event_value(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.iio_dev*, align 8
  %10 = alloca %struct.iio_chan_spec*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.ad7291_chip_info*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %9, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %19 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %20 = call %struct.ad7291_chip_info* @iio_priv(%struct.iio_dev* %19)
  store %struct.ad7291_chip_info* %20, %struct.ad7291_chip_info** %16, align 8
  %21 = load %struct.ad7291_chip_info*, %struct.ad7291_chip_info** %16, align 8
  %22 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %10, align 8
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* %13, align 4
  %25 = call i32 @ad7291_threshold_reg(%struct.iio_chan_spec* %22, i32 %23, i32 %24)
  %26 = call i32 @ad7291_i2c_read(%struct.ad7291_chip_info* %21, i32 %25, i32* %18)
  store i32 %26, i32* %17, align 4
  %27 = load i32, i32* %17, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %7
  %30 = load i32, i32* %17, align 4
  store i32 %30, i32* %8, align 4
  br label %52

31:                                               ; preds = %7
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* @IIO_EV_INFO_HYSTERESIS, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %31
  %36 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %10, align 8
  %37 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @IIO_VOLTAGE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %35, %31
  %42 = load i32, i32* %18, align 4
  %43 = load i32, i32* @AD7291_VALUE_MASK, align 4
  %44 = and i32 %42, %43
  %45 = load i32*, i32** %14, align 8
  store i32 %44, i32* %45, align 4
  br label %50

46:                                               ; preds = %35
  %47 = load i32, i32* %18, align 4
  %48 = call i32 @sign_extend32(i32 %47, i32 11)
  %49 = load i32*, i32** %14, align 8
  store i32 %48, i32* %49, align 4
  br label %50

50:                                               ; preds = %46, %41
  %51 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %50, %29
  %53 = load i32, i32* %8, align 4
  ret i32 %53
}

declare dso_local %struct.ad7291_chip_info* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @ad7291_i2c_read(%struct.ad7291_chip_info*, i32, i32*) #1

declare dso_local i32 @ad7291_threshold_reg(%struct.iio_chan_spec*, i32, i32) #1

declare dso_local i32 @sign_extend32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
