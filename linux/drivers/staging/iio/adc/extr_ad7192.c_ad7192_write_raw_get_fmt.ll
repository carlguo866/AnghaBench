; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/adc/extr_ad7192.c_ad7192_write_raw_get_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/adc/extr_ad7192.c_ad7192_write_raw_get_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }

@IIO_VAL_INT_PLUS_NANO = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i64)* @ad7192_write_raw_get_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7192_write_raw_get_fmt(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.iio_chan_spec*, align 8
  %7 = alloca i64, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %5, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %7, align 8
  switch i64 %8, label %15 [
    i64 128, label %9
    i64 129, label %11
    i64 130, label %13
  ]

9:                                                ; preds = %3
  %10 = load i32, i32* @IIO_VAL_INT_PLUS_NANO, align 4
  store i32 %10, i32* %4, align 4
  br label %18

11:                                               ; preds = %3
  %12 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %12, i32* %4, align 4
  br label %18

13:                                               ; preds = %3
  %14 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %14, i32* %4, align 4
  br label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %18

18:                                               ; preds = %15, %13, %11, %9
  %19 = load i32, i32* %4, align 4
  ret i32 %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
