; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_axp20x_adc.c_axp20x_adc_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_axp20x_adc.c_axp20x_adc_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32, i32 }

@IIO_VAL_INT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*)* @axp20x_adc_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axp20x_adc_offset(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.iio_chan_spec*, align 8
  %7 = alloca i32*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %5, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %9 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %21 [
    i32 128, label %11
    i32 129, label %18
  ]

11:                                               ; preds = %3
  %12 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %13 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %14 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32*, i32** %7, align 8
  %17 = call i32 @axp20x_adc_offset_voltage(%struct.iio_dev* %12, i32 %15, i32* %16)
  store i32 %17, i32* %4, align 4
  br label %24

18:                                               ; preds = %3
  %19 = load i32*, i32** %7, align 8
  store i32 -1447, i32* %19, align 4
  %20 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %20, i32* %4, align 4
  br label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %21, %18, %11
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

declare dso_local i32 @axp20x_adc_offset_voltage(%struct.iio_dev*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
