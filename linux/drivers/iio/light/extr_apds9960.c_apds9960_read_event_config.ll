; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_apds9960.c_apds9960_read_event_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_apds9960.c_apds9960_read_event_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.apds9960_data = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32)* @apds9960_read_event_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apds9960_read_event_config(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.iio_chan_spec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.apds9960_data*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %6, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %12 = call %struct.apds9960_data* @iio_priv(%struct.iio_dev* %11)
  store %struct.apds9960_data* %12, %struct.apds9960_data** %10, align 8
  %13 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %14 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %24 [
    i32 128, label %16
    i32 129, label %20
  ]

16:                                               ; preds = %4
  %17 = load %struct.apds9960_data*, %struct.apds9960_data** %10, align 8
  %18 = getelementptr inbounds %struct.apds9960_data, %struct.apds9960_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %5, align 4
  br label %27

20:                                               ; preds = %4
  %21 = load %struct.apds9960_data*, %struct.apds9960_data** %10, align 8
  %22 = getelementptr inbounds %struct.apds9960_data, %struct.apds9960_data* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %5, align 4
  br label %27

24:                                               ; preds = %4
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %24, %20, %16
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

declare dso_local %struct.apds9960_data* @iio_priv(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
