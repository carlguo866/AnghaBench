; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_bmc150-accel-core.c_bmc150_accel_write_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_bmc150-accel-core.c_bmc150_accel_write_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.bmc150_accel_data = type { i32, i32, i64 }

@EBUSY = common dso_local global i32 0, align 4
@BMC150_ACCEL_SLOPE_THRES_MASK = common dso_local global i32 0, align 4
@BMC150_ACCEL_SLOPE_DUR_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i32, i32, i32)* @bmc150_accel_write_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bmc150_accel_write_event(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.iio_dev*, align 8
  %10 = alloca %struct.iio_chan_spec*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.bmc150_accel_data*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %9, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %17 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %18 = call %struct.bmc150_accel_data* @iio_priv(%struct.iio_dev* %17)
  store %struct.bmc150_accel_data* %18, %struct.bmc150_accel_data** %16, align 8
  %19 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %16, align 8
  %20 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %7
  %24 = load i32, i32* @EBUSY, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %8, align 4
  br label %44

26:                                               ; preds = %7
  %27 = load i32, i32* %13, align 4
  switch i32 %27, label %40 [
    i32 128, label %28
    i32 129, label %34
  ]

28:                                               ; preds = %26
  %29 = load i32, i32* %14, align 4
  %30 = load i32, i32* @BMC150_ACCEL_SLOPE_THRES_MASK, align 4
  %31 = and i32 %29, %30
  %32 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %16, align 8
  %33 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  br label %43

34:                                               ; preds = %26
  %35 = load i32, i32* %14, align 4
  %36 = load i32, i32* @BMC150_ACCEL_SLOPE_DUR_MASK, align 4
  %37 = and i32 %35, %36
  %38 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %16, align 8
  %39 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  br label %43

40:                                               ; preds = %26
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %8, align 4
  br label %44

43:                                               ; preds = %34, %28
  store i32 0, i32* %8, align 4
  br label %44

44:                                               ; preds = %43, %40, %23
  %45 = load i32, i32* %8, align 4
  ret i32 %45
}

declare dso_local %struct.bmc150_accel_data* @iio_priv(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
