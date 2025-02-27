; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/st_lsm6dsx/extr_st_lsm6dsx_shub.c_st_lsm6dsx_shub_wait_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/st_lsm6dsx/extr_st_lsm6dsx_shub.c_st_lsm6dsx_shub_wait_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_lsm6dsx_hw = type { i32, i32* }
%struct.st_lsm6dsx_sensor = type { i32 }

@ST_LSM6DSX_ID_ACC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st_lsm6dsx_hw*)* @st_lsm6dsx_shub_wait_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @st_lsm6dsx_shub_wait_complete(%struct.st_lsm6dsx_hw* %0) #0 {
  %2 = alloca %struct.st_lsm6dsx_hw*, align 8
  %3 = alloca %struct.st_lsm6dsx_sensor*, align 8
  %4 = alloca i32, align 4
  store %struct.st_lsm6dsx_hw* %0, %struct.st_lsm6dsx_hw** %2, align 8
  %5 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %2, align 8
  %6 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %5, i32 0, i32 1
  %7 = load i32*, i32** %6, align 8
  %8 = load i64, i64* @ST_LSM6DSX_ID_ACC, align 8
  %9 = getelementptr inbounds i32, i32* %7, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.st_lsm6dsx_sensor* @iio_priv(i32 %10)
  store %struct.st_lsm6dsx_sensor* %11, %struct.st_lsm6dsx_sensor** %3, align 8
  %12 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %2, align 8
  %13 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i64, i64* @ST_LSM6DSX_ID_ACC, align 8
  %16 = call i32 @BIT(i64 %15)
  %17 = and i32 %14, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load %struct.st_lsm6dsx_sensor*, %struct.st_lsm6dsx_sensor** %3, align 8
  %21 = getelementptr inbounds %struct.st_lsm6dsx_sensor, %struct.st_lsm6dsx_sensor* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  br label %24

23:                                               ; preds = %1
  br label %24

24:                                               ; preds = %23, %19
  %25 = phi i32 [ %22, %19 ], [ 13, %23 ]
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = udiv i32 2000, %26
  %28 = add i32 %27, 1
  %29 = call i32 @msleep(i32 %28)
  ret void
}

declare dso_local %struct.st_lsm6dsx_sensor* @iio_priv(i32) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
