; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7476.c_ad7476_trigger_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7476.c_ad7476_trigger_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_poll_func = type { %struct.iio_dev* }
%struct.iio_dev = type { i32 }
%struct.ad7476_state = type { i32, i32, i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ad7476_trigger_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7476_trigger_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.iio_poll_func*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.ad7476_state*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.iio_poll_func*
  store %struct.iio_poll_func* %10, %struct.iio_poll_func** %5, align 8
  %11 = load %struct.iio_poll_func*, %struct.iio_poll_func** %5, align 8
  %12 = getelementptr inbounds %struct.iio_poll_func, %struct.iio_poll_func* %11, i32 0, i32 0
  %13 = load %struct.iio_dev*, %struct.iio_dev** %12, align 8
  store %struct.iio_dev* %13, %struct.iio_dev** %6, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %15 = call %struct.ad7476_state* @iio_priv(%struct.iio_dev* %14)
  store %struct.ad7476_state* %15, %struct.ad7476_state** %7, align 8
  %16 = load %struct.ad7476_state*, %struct.ad7476_state** %7, align 8
  %17 = getelementptr inbounds %struct.ad7476_state, %struct.ad7476_state* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ad7476_state*, %struct.ad7476_state** %7, align 8
  %20 = getelementptr inbounds %struct.ad7476_state, %struct.ad7476_state* %19, i32 0, i32 1
  %21 = call i32 @spi_sync(i32 %18, i32* %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %33

25:                                               ; preds = %2
  %26 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %27 = load %struct.ad7476_state*, %struct.ad7476_state** %7, align 8
  %28 = getelementptr inbounds %struct.ad7476_state, %struct.ad7476_state* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %31 = call i32 @iio_get_time_ns(%struct.iio_dev* %30)
  %32 = call i32 @iio_push_to_buffers_with_timestamp(%struct.iio_dev* %26, i32 %29, i32 %31)
  br label %33

33:                                               ; preds = %25, %24
  %34 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %35 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @iio_trigger_notify_done(i32 %36)
  %38 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %38
}

declare dso_local %struct.ad7476_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @spi_sync(i32, i32*) #1

declare dso_local i32 @iio_push_to_buffers_with_timestamp(%struct.iio_dev*, i32, i32) #1

declare dso_local i32 @iio_get_time_ns(%struct.iio_dev*) #1

declare dso_local i32 @iio_trigger_notify_done(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
