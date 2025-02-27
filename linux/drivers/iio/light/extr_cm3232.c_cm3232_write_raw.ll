; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_cm3232.c_cm3232_write_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_cm3232.c_cm3232_write_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.cm3232_chip = type { %struct.cm3232_als_info* }
%struct.cm3232_als_info = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i64)* @cm3232_write_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cm3232_write_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.cm3232_chip*, align 8
  %13 = alloca %struct.cm3232_als_info*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.cm3232_chip* @iio_priv(%struct.iio_dev* %14)
  store %struct.cm3232_chip* %15, %struct.cm3232_chip** %12, align 8
  %16 = load %struct.cm3232_chip*, %struct.cm3232_chip** %12, align 8
  %17 = getelementptr inbounds %struct.cm3232_chip, %struct.cm3232_chip* %16, i32 0, i32 0
  %18 = load %struct.cm3232_als_info*, %struct.cm3232_als_info** %17, align 8
  store %struct.cm3232_als_info* %18, %struct.cm3232_als_info** %13, align 8
  %19 = load i64, i64* %11, align 8
  switch i64 %19, label %29 [
    i64 129, label %20
    i64 128, label %24
  ]

20:                                               ; preds = %5
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.cm3232_als_info*, %struct.cm3232_als_info** %13, align 8
  %23 = getelementptr inbounds %struct.cm3232_als_info, %struct.cm3232_als_info* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  store i32 0, i32* %6, align 4
  br label %32

24:                                               ; preds = %5
  %25 = load %struct.cm3232_chip*, %struct.cm3232_chip** %12, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @cm3232_write_als_it(%struct.cm3232_chip* %25, i32 %26, i32 %27)
  store i32 %28, i32* %6, align 4
  br label %32

29:                                               ; preds = %5
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %29, %24, %20
  %33 = load i32, i32* %6, align 4
  ret i32 %33
}

declare dso_local %struct.cm3232_chip* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @cm3232_write_als_it(%struct.cm3232_chip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
