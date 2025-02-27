; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_tsl2563.c_tsl2563_write_thresh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_tsl2563.c_tsl2563_write_thresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.tsl2563_chip = type { i32, i32, i32, i32 }

@IIO_EV_DIR_RISING = common dso_local global i32 0, align 4
@TSL2563_REG_HIGHLOW = common dso_local global i32 0, align 4
@TSL2563_REG_LOWLOW = common dso_local global i32 0, align 4
@TSL2563_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i32, i32, i32)* @tsl2563_write_thresh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsl2563_write_thresh(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.iio_dev*, align 8
  %9 = alloca %struct.iio_chan_spec*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.tsl2563_chip*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %8, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %18 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %19 = call %struct.tsl2563_chip* @iio_priv(%struct.iio_dev* %18)
  store %struct.tsl2563_chip* %19, %struct.tsl2563_chip** %15, align 8
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* @IIO_EV_DIR_RISING, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %7
  %24 = load i32, i32* @TSL2563_REG_HIGHLOW, align 4
  store i32 %24, i32* %17, align 4
  br label %27

25:                                               ; preds = %7
  %26 = load i32, i32* @TSL2563_REG_LOWLOW, align 4
  store i32 %26, i32* %17, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %15, align 8
  %29 = getelementptr inbounds %struct.tsl2563_chip, %struct.tsl2563_chip* %28, i32 0, i32 2
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %15, align 8
  %32 = getelementptr inbounds %struct.tsl2563_chip, %struct.tsl2563_chip* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @TSL2563_CMD, align 4
  %35 = load i32, i32* %17, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* %13, align 4
  %38 = and i32 %37, 255
  %39 = call i32 @i2c_smbus_write_byte_data(i32 %33, i32 %36, i32 %38)
  store i32 %39, i32* %16, align 4
  %40 = load i32, i32* %16, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %27
  br label %67

43:                                               ; preds = %27
  %44 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %15, align 8
  %45 = getelementptr inbounds %struct.tsl2563_chip, %struct.tsl2563_chip* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @TSL2563_CMD, align 4
  %48 = load i32, i32* %17, align 4
  %49 = add nsw i32 %48, 1
  %50 = or i32 %47, %49
  %51 = load i32, i32* %13, align 4
  %52 = ashr i32 %51, 8
  %53 = and i32 %52, 255
  %54 = call i32 @i2c_smbus_write_byte_data(i32 %46, i32 %50, i32 %53)
  store i32 %54, i32* %16, align 4
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* @IIO_EV_DIR_RISING, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %43
  %59 = load i32, i32* %13, align 4
  %60 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %15, align 8
  %61 = getelementptr inbounds %struct.tsl2563_chip, %struct.tsl2563_chip* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  br label %66

62:                                               ; preds = %43
  %63 = load i32, i32* %13, align 4
  %64 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %15, align 8
  %65 = getelementptr inbounds %struct.tsl2563_chip, %struct.tsl2563_chip* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  br label %66

66:                                               ; preds = %62, %58
  br label %67

67:                                               ; preds = %66, %42
  %68 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %15, align 8
  %69 = getelementptr inbounds %struct.tsl2563_chip, %struct.tsl2563_chip* %68, i32 0, i32 2
  %70 = call i32 @mutex_unlock(i32* %69)
  %71 = load i32, i32* %16, align 4
  ret i32 %71
}

declare dso_local %struct.tsl2563_chip* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
