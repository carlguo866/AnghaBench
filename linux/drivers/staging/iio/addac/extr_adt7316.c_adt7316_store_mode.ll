; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/addac/extr_adt7316.c_adt7316_store_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/addac/extr_adt7316.c_adt7316_store_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.iio_dev = type { i32 }
%struct.adt7316_chip_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (i32, i32, i32)*, i32 }

@ADT7316_AD_SINGLE_CH_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"single_channel\00", align 1
@ADT7316_CONFIG2 = common dso_local global i32 0, align 4
@EIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @adt7316_store_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @adt7316_store_mode(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.iio_dev*, align 8
  %11 = alloca %struct.adt7316_chip_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.iio_dev* @dev_to_iio_dev(%struct.device* %14)
  store %struct.iio_dev* %15, %struct.iio_dev** %10, align 8
  %16 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %17 = call %struct.adt7316_chip_info* @iio_priv(%struct.iio_dev* %16)
  store %struct.adt7316_chip_info* %17, %struct.adt7316_chip_info** %11, align 8
  %18 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %11, align 8
  %19 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @ADT7316_AD_SINGLE_CH_MODE, align 4
  %22 = xor i32 %21, -1
  %23 = and i32 %20, %22
  store i32 %23, i32* %12, align 4
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 @memcmp(i8* %24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 14)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %4
  %28 = load i32, i32* @ADT7316_AD_SINGLE_CH_MODE, align 4
  %29 = load i32, i32* %12, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %12, align 4
  br label %31

31:                                               ; preds = %27, %4
  %32 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %11, align 8
  %33 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %34, align 8
  %36 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %11, align 8
  %37 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @ADT7316_CONFIG2, align 4
  %41 = load i32, i32* %12, align 4
  %42 = call i32 %35(i32 %39, i32 %40, i32 %41)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %31
  %46 = load i64, i64* @EIO, align 8
  %47 = sub i64 0, %46
  store i64 %47, i64* %5, align 8
  br label %53

48:                                               ; preds = %31
  %49 = load i32, i32* %12, align 4
  %50 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %11, align 8
  %51 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load i64, i64* %9, align 8
  store i64 %52, i64* %5, align 8
  br label %53

53:                                               ; preds = %48, %45
  %54 = load i64, i64* %5, align 8
  ret i64 %54
}

declare dso_local %struct.iio_dev* @dev_to_iio_dev(%struct.device*) #1

declare dso_local %struct.adt7316_chip_info* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
