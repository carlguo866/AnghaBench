; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/st_lsm6dsx/extr_st_lsm6dsx_core.c_st_lsm6dsx_of_get_drdy_pin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/st_lsm6dsx/extr_st_lsm6dsx_core.c_st_lsm6dsx_of_get_drdy_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_lsm6dsx_hw = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"st,drdy-int-pin\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st_lsm6dsx_hw*, i32*)* @st_lsm6dsx_of_get_drdy_pin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_lsm6dsx_of_get_drdy_pin(%struct.st_lsm6dsx_hw* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.st_lsm6dsx_hw*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.device_node*, align 8
  store %struct.st_lsm6dsx_hw* %0, %struct.st_lsm6dsx_hw** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %4, align 8
  %8 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %6, align 8
  %12 = load %struct.device_node*, %struct.device_node** %6, align 8
  %13 = icmp ne %struct.device_node* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %21

17:                                               ; preds = %2
  %18 = load %struct.device_node*, %struct.device_node** %6, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @of_property_read_u32(%struct.device_node* %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* %19)
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %17, %14
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
