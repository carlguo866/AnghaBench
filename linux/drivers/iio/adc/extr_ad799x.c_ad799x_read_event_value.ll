; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad799x.c_ad799x_read_event_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad799x.c_ad799x_read_event_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }
%struct.ad799x_state = type { i32 }

@IIO_VAL_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i32, i32*, i32*)* @ad799x_read_event_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad799x_read_event_value(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.iio_dev*, align 8
  %10 = alloca %struct.iio_chan_spec*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.ad799x_state*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %9, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %18 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %19 = call %struct.ad799x_state* @iio_priv(%struct.iio_dev* %18)
  store %struct.ad799x_state* %19, %struct.ad799x_state** %17, align 8
  %20 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %21 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.ad799x_state*, %struct.ad799x_state** %17, align 8
  %24 = getelementptr inbounds %struct.ad799x_state, %struct.ad799x_state* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %10, align 8
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* %13, align 4
  %29 = call i32 @ad799x_threshold_reg(%struct.iio_chan_spec* %26, i32 %27, i32 %28)
  %30 = call i32 @i2c_smbus_read_word_swapped(i32 %25, i32 %29)
  store i32 %30, i32* %16, align 4
  %31 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %32 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %31, i32 0, i32 0
  %33 = call i32 @mutex_unlock(i32* %32)
  %34 = load i32, i32* %16, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %7
  %37 = load i32, i32* %16, align 4
  store i32 %37, i32* %8, align 4
  br label %54

38:                                               ; preds = %7
  %39 = load i32, i32* %16, align 4
  %40 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %10, align 8
  %41 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = ashr i32 %39, %43
  %45 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %10, align 8
  %46 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = sub nsw i64 %48, 1
  %50 = call i32 @GENMASK(i64 %49, i32 0)
  %51 = and i32 %44, %50
  %52 = load i32*, i32** %14, align 8
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %38, %36
  %55 = load i32, i32* %8, align 4
  ret i32 %55
}

declare dso_local %struct.ad799x_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_read_word_swapped(i32, i32) #1

declare dso_local i32 @ad799x_threshold_reg(%struct.iio_chan_spec*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @GENMASK(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
