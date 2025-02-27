; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma9553.c_mma9553_read_activity_stepcnt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma9553.c_mma9553_read_activity_stepcnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mma9553_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MMA9551_APPID_PEDOMETER = common dso_local global i32 0, align 4
@MMA9553_REG_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"error reading status and stepcnt\0A\00", align 1
@MMA9553_MASK_STATUS_ACTIVITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mma9553_data*, i32*, i32*)* @mma9553_read_activity_stepcnt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mma9553_read_activity_stepcnt(%struct.mma9553_data* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mma9553_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [2 x i32], align 4
  %9 = alloca i32, align 4
  store %struct.mma9553_data* %0, %struct.mma9553_data** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.mma9553_data*, %struct.mma9553_data** %5, align 8
  %11 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = load i32, i32* @MMA9551_APPID_PEDOMETER, align 4
  %14 = load i32, i32* @MMA9553_REG_STATUS, align 4
  %15 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %16 = call i32 @ARRAY_SIZE(i32* %15)
  %17 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %18 = call i32 @mma9551_read_status_words(%struct.TYPE_2__* %12, i32 %13, i32 %14, i32 %16, i32* %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %3
  %22 = load %struct.mma9553_data*, %struct.mma9553_data** %5, align 8
  %23 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 @dev_err(i32* %25, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %4, align 4
  br label %37

28:                                               ; preds = %3
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @MMA9553_MASK_STATUS_ACTIVITY, align 4
  %32 = call i32 @mma9553_get_bits(i32 %30, i32 %31)
  %33 = load i32*, i32** %6, align 8
  store i32 %32, i32* %33, align 4
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %7, align 8
  store i32 %35, i32* %36, align 4
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %28, %21
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @mma9551_read_status_words(%struct.TYPE_2__*, i32, i32, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @mma9553_get_bits(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
