; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_us5182d.c_us5182d_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_us5182d.c_us5182d_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.us5182d_data = type { i32 }

@IIO_VAL_INT = common dso_local global i32 0, align 4
@US5182D_REG_CFG1 = common dso_local global i32 0, align 4
@us5182d_scales = common dso_local global i32* null, align 8
@US5182D_AGAIN_MASK = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @us5182d_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @us5182d_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.us5182d_data*, align 8
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.us5182d_data* @iio_priv(%struct.iio_dev* %14)
  store %struct.us5182d_data* %15, %struct.us5182d_data** %12, align 8
  %16 = load i64, i64* %11, align 8
  switch i64 %16, label %50 [
    i64 129, label %17
    i64 128, label %29
  ]

17:                                               ; preds = %5
  %18 = load %struct.us5182d_data*, %struct.us5182d_data** %12, align 8
  %19 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %20 = call i32 @us5182d_read_value(%struct.us5182d_data* %18, %struct.iio_chan_spec* %19)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* %13, align 4
  store i32 %24, i32* %6, align 4
  br label %53

25:                                               ; preds = %17
  %26 = load i32, i32* %13, align 4
  %27 = load i32*, i32** %9, align 8
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %28, i32* %6, align 4
  br label %53

29:                                               ; preds = %5
  %30 = load %struct.us5182d_data*, %struct.us5182d_data** %12, align 8
  %31 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @US5182D_REG_CFG1, align 4
  %34 = call i32 @i2c_smbus_read_byte_data(i32 %32, i32 %33)
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load i32, i32* %13, align 4
  store i32 %38, i32* %6, align 4
  br label %53

39:                                               ; preds = %29
  %40 = load i32*, i32** %9, align 8
  store i32 0, i32* %40, align 4
  %41 = load i32*, i32** @us5182d_scales, align 8
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* @US5182D_AGAIN_MASK, align 4
  %44 = and i32 %42, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %41, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %10, align 8
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %49, i32* %6, align 4
  br label %53

50:                                               ; preds = %5
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %50, %39, %37, %25, %23
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

declare dso_local %struct.us5182d_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @us5182d_read_value(%struct.us5182d_data*, %struct.iio_chan_spec*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
