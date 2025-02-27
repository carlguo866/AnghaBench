; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5791.c_ad5791_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5791.c_ad5791_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ad5791_state = type { i32, i32 }

@AD5791_DAC_MASK = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@IIO_VAL_FRACTIONAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @ad5791_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5791_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ad5791_state*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %16 = call %struct.ad5791_state* @iio_priv(%struct.iio_dev* %15)
  store %struct.ad5791_state* %16, %struct.ad5791_state** %12, align 8
  %17 = load i64, i64* %11, align 8
  switch i64 %17, label %73 [
    i64 129, label %18
    i64 128, label %42
    i64 130, label %55
  ]

18:                                               ; preds = %5
  %19 = load %struct.ad5791_state*, %struct.ad5791_state** %12, align 8
  %20 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %21 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %9, align 8
  %24 = call i32 @ad5791_spi_read(%struct.ad5791_state* %19, i32 %22, i32* %23)
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %14, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = load i32, i32* %14, align 4
  store i32 %28, i32* %6, align 4
  br label %76

29:                                               ; preds = %18
  %30 = load i32, i32* @AD5791_DAC_MASK, align 4
  %31 = load i32*, i32** %9, align 8
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, %30
  store i32 %33, i32* %31, align 4
  %34 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %35 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %9, align 8
  %39 = load i32, i32* %38, align 4
  %40 = ashr i32 %39, %37
  store i32 %40, i32* %38, align 4
  %41 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %41, i32* %6, align 4
  br label %76

42:                                               ; preds = %5
  %43 = load %struct.ad5791_state*, %struct.ad5791_state** %12, align 8
  %44 = getelementptr inbounds %struct.ad5791_state, %struct.ad5791_state* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %9, align 8
  store i32 %45, i32* %46, align 4
  %47 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %48 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = shl i32 1, %50
  %52 = sub nsw i32 %51, 1
  %53 = load i32*, i32** %10, align 8
  store i32 %52, i32* %53, align 4
  %54 = load i32, i32* @IIO_VAL_FRACTIONAL, align 4
  store i32 %54, i32* %6, align 4
  br label %76

55:                                               ; preds = %5
  %56 = load %struct.ad5791_state*, %struct.ad5791_state** %12, align 8
  %57 = getelementptr inbounds %struct.ad5791_state, %struct.ad5791_state* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %60 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = shl i32 %58, %62
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %13, align 4
  %65 = load %struct.ad5791_state*, %struct.ad5791_state** %12, align 8
  %66 = getelementptr inbounds %struct.ad5791_state, %struct.ad5791_state* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @do_div(i32 %64, i32 %67)
  %69 = load i32, i32* %13, align 4
  %70 = sub nsw i32 0, %69
  %71 = load i32*, i32** %9, align 8
  store i32 %70, i32* %71, align 4
  %72 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %72, i32* %6, align 4
  br label %76

73:                                               ; preds = %5
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %73, %55, %42, %29, %27
  %77 = load i32, i32* %6, align 4
  ret i32 %77
}

declare dso_local %struct.ad5791_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @ad5791_spi_read(%struct.ad5791_state*, i32, i32*) #1

declare dso_local i32 @do_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
