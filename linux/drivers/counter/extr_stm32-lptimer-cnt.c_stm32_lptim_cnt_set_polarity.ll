; ModuleID = '/home/carl/AnghaBench/linux/drivers/counter/extr_stm32-lptimer-cnt.c_stm32_lptim_cnt_set_polarity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/counter/extr_stm32-lptimer-cnt.c_stm32_lptim_cnt_set_polarity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.stm32_lptim_cnt = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32)* @stm32_lptim_cnt_set_polarity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_lptim_cnt_set_polarity(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.iio_chan_spec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.stm32_lptim_cnt*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %5, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %10 = call %struct.stm32_lptim_cnt* @iio_priv(%struct.iio_dev* %9)
  store %struct.stm32_lptim_cnt* %10, %struct.stm32_lptim_cnt** %8, align 8
  %11 = load %struct.stm32_lptim_cnt*, %struct.stm32_lptim_cnt** %8, align 8
  %12 = call i64 @stm32_lptim_is_enabled(%struct.stm32_lptim_cnt* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @EBUSY, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %21

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.stm32_lptim_cnt*, %struct.stm32_lptim_cnt** %8, align 8
  %20 = getelementptr inbounds %struct.stm32_lptim_cnt, %struct.stm32_lptim_cnt* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %17, %14
  %22 = load i32, i32* %4, align 4
  ret i32 %22
}

declare dso_local %struct.stm32_lptim_cnt* @iio_priv(%struct.iio_dev*) #1

declare dso_local i64 @stm32_lptim_is_enabled(%struct.stm32_lptim_cnt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
