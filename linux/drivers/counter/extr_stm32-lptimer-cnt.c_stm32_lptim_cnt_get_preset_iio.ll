; ModuleID = '/home/carl/AnghaBench/linux/drivers/counter/extr_stm32-lptimer-cnt.c_stm32_lptim_cnt_get_preset_iio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/counter/extr_stm32-lptimer-cnt.c_stm32_lptim_cnt_get_preset_iio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.stm32_lptim_cnt = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i64, %struct.iio_chan_spec*, i8*)* @stm32_lptim_cnt_get_preset_iio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_lptim_cnt_get_preset_iio(%struct.iio_dev* %0, i64 %1, %struct.iio_chan_spec* %2, i8* %3) #0 {
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.iio_chan_spec*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.stm32_lptim_cnt*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.iio_chan_spec* %2, %struct.iio_chan_spec** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %11 = call %struct.stm32_lptim_cnt* @iio_priv(%struct.iio_dev* %10)
  store %struct.stm32_lptim_cnt* %11, %struct.stm32_lptim_cnt** %9, align 8
  %12 = load %struct.stm32_lptim_cnt*, %struct.stm32_lptim_cnt** %9, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = call i32 @stm32_lptim_cnt_get_ceiling(%struct.stm32_lptim_cnt* %12, i8* %13)
  ret i32 %14
}

declare dso_local %struct.stm32_lptim_cnt* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @stm32_lptim_cnt_get_ceiling(%struct.stm32_lptim_cnt*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
