; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/addac/extr_adt7316.c_adt7316_show_enable_smbus_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/addac/extr_adt7316.c_adt7316_show_enable_smbus_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.iio_dev = type { i32 }
%struct.adt7316_chip_info = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@ADT7316_EN_SMBUS_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @adt7316_show_enable_smbus_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adt7316_show_enable_smbus_timeout(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.adt7316_chip_info*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.iio_dev* @dev_to_iio_dev(%struct.device* %9)
  store %struct.iio_dev* %10, %struct.iio_dev** %7, align 8
  %11 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %12 = call %struct.adt7316_chip_info* @iio_priv(%struct.iio_dev* %11)
  store %struct.adt7316_chip_info* %12, %struct.adt7316_chip_info** %8, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %8, align 8
  %15 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @ADT7316_EN_SMBUS_TIMEOUT, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @sprintf(i8* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %22)
  ret i32 %23
}

declare dso_local %struct.iio_dev* @dev_to_iio_dev(%struct.device*) #1

declare dso_local %struct.adt7316_chip_info* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
