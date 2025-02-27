; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7606_spi.c_ad7616_write_os_sw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7606_spi.c_ad7616_write_os_sw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.ad7606_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.ad7606_state*, i32, i32, i32)* }

@AD7616_CONFIGURATION_REGISTER = common dso_local global i32 0, align 4
@AD7616_OS_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i32)* @ad7616_write_os_sw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7616_write_os_sw(%struct.iio_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ad7606_state*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %7 = call %struct.ad7606_state* @iio_priv(%struct.iio_dev* %6)
  store %struct.ad7606_state* %7, %struct.ad7606_state** %5, align 8
  %8 = load %struct.ad7606_state*, %struct.ad7606_state** %5, align 8
  %9 = getelementptr inbounds %struct.ad7606_state, %struct.ad7606_state* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32 (%struct.ad7606_state*, i32, i32, i32)*, i32 (%struct.ad7606_state*, i32, i32, i32)** %11, align 8
  %13 = load %struct.ad7606_state*, %struct.ad7606_state** %5, align 8
  %14 = load i32, i32* @AD7616_CONFIGURATION_REGISTER, align 4
  %15 = load i32, i32* @AD7616_OS_MASK, align 4
  %16 = load i32, i32* %4, align 4
  %17 = shl i32 %16, 2
  %18 = call i32 %12(%struct.ad7606_state* %13, i32 %14, i32 %15, i32 %17)
  ret i32 %18
}

declare dso_local %struct.ad7606_state* @iio_priv(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
