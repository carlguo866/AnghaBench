; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5758.c_ad5758_write_powerdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5758.c_ad5758_write_powerdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.ad5758_state = type { i32, i32 }

@AD5758_DAC_CONFIG_OUT_EN_MSK = common dso_local global i64 0, align 8
@AD5758_DAC_CONFIG_INT_EN_MSK = common dso_local global i64 0, align 8
@AD5758_DAC_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i64, %struct.iio_chan_spec*, i8*, i64)* @ad5758_write_powerdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5758_write_powerdown(%struct.iio_dev* %0, i64 %1, %struct.iio_chan_spec* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.iio_chan_spec*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ad5758_state*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.iio_chan_spec* %2, %struct.iio_chan_spec** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %18 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %19 = call %struct.ad5758_state* @iio_priv(%struct.iio_dev* %18)
  store %struct.ad5758_state* %19, %struct.ad5758_state** %12, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = call i32 @kstrtobool(i8* %20, i32* %13)
  store i32 %21, i32* %17, align 4
  %22 = load i32, i32* %17, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %5
  %25 = load i32, i32* %17, align 4
  store i32 %25, i32* %6, align 4
  br label %69

26:                                               ; preds = %5
  %27 = load %struct.ad5758_state*, %struct.ad5758_state** %12, align 8
  %28 = getelementptr inbounds %struct.ad5758_state, %struct.ad5758_state* %27, i32 0, i32 1
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load i32, i32* %13, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 0, i32* %15, align 4
  br label %34

33:                                               ; preds = %26
  store i32 1, i32* %15, align 4
  br label %34

34:                                               ; preds = %33, %32
  %35 = load i32, i32* %15, align 4
  %36 = call i32 @AD5758_DAC_CONFIG_OUT_EN_MODE(i32 %35)
  %37 = load i32, i32* %15, align 4
  %38 = call i32 @AD5758_DAC_CONFIG_INT_EN_MODE(i32 %37)
  %39 = or i32 %36, %38
  store i32 %39, i32* %14, align 4
  %40 = load i64, i64* @AD5758_DAC_CONFIG_OUT_EN_MSK, align 8
  %41 = load i64, i64* @AD5758_DAC_CONFIG_INT_EN_MSK, align 8
  %42 = or i64 %40, %41
  store i64 %42, i64* %16, align 8
  %43 = load %struct.ad5758_state*, %struct.ad5758_state** %12, align 8
  %44 = load i32, i32* @AD5758_DAC_CONFIG, align 4
  %45 = load i64, i64* %16, align 8
  %46 = load i32, i32* %14, align 4
  %47 = call i32 @ad5758_spi_write_mask(%struct.ad5758_state* %43, i32 %44, i64 %45, i32 %46)
  store i32 %47, i32* %17, align 4
  %48 = load i32, i32* %17, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %34
  br label %55

51:                                               ; preds = %34
  %52 = load i32, i32* %13, align 4
  %53 = load %struct.ad5758_state*, %struct.ad5758_state** %12, align 8
  %54 = getelementptr inbounds %struct.ad5758_state, %struct.ad5758_state* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %51, %50
  %56 = load %struct.ad5758_state*, %struct.ad5758_state** %12, align 8
  %57 = getelementptr inbounds %struct.ad5758_state, %struct.ad5758_state* %56, i32 0, i32 1
  %58 = call i32 @mutex_unlock(i32* %57)
  %59 = load i32, i32* %17, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load i32, i32* %17, align 4
  %63 = sext i32 %62 to i64
  br label %66

64:                                               ; preds = %55
  %65 = load i64, i64* %11, align 8
  br label %66

66:                                               ; preds = %64, %61
  %67 = phi i64 [ %63, %61 ], [ %65, %64 ]
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %66, %24
  %70 = load i32, i32* %6, align 4
  ret i32 %70
}

declare dso_local %struct.ad5758_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @kstrtobool(i8*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @AD5758_DAC_CONFIG_OUT_EN_MODE(i32) #1

declare dso_local i32 @AD5758_DAC_CONFIG_INT_EN_MODE(i32) #1

declare dso_local i32 @ad5758_spi_write_mask(%struct.ad5758_state*, i32, i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
