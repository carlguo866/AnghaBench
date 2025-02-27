; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-ads8688.c_ads8688_prog_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-ads8688.c_ads8688_prog_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.ads8688_state = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32*, i32 }

@ADS8688_PROG_WR_BIT = common dso_local global i32 0, align 4
@ADS8688_PROG_DONT_CARE_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i32, i32)* @ads8688_prog_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ads8688_prog_write(%struct.iio_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ads8688_state*, align 8
  %8 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %10 = call %struct.ads8688_state* @iio_priv(%struct.iio_dev* %9)
  store %struct.ads8688_state* %10, %struct.ads8688_state** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @ADS8688_PROG_REG(i32 %11)
  %13 = load i32, i32* @ADS8688_PROG_WR_BIT, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* %6, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* @ADS8688_PROG_DONT_CARE_BITS, align 4
  %18 = load i32, i32* %8, align 4
  %19 = shl i32 %18, %17
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @cpu_to_be32(i32 %20)
  %22 = load %struct.ads8688_state*, %struct.ads8688_state** %7, align 8
  %23 = getelementptr inbounds %struct.ads8688_state, %struct.ads8688_state* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  store i32 %21, i32* %26, align 8
  %27 = load %struct.ads8688_state*, %struct.ads8688_state** %7, align 8
  %28 = getelementptr inbounds %struct.ads8688_state, %struct.ads8688_state* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.ads8688_state*, %struct.ads8688_state** %7, align 8
  %31 = getelementptr inbounds %struct.ads8688_state, %struct.ads8688_state* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = call i32 @spi_write(i32 %29, i32* %36, i32 3)
  ret i32 %37
}

declare dso_local %struct.ads8688_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @ADS8688_PROG_REG(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @spi_write(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
