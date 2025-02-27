; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_hmc5843_core.c_hmc5843_wait_measurement.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_hmc5843_core.c_hmc5843_wait_measurement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hmc5843_data = type { i32, i32 }

@HMC5843_STATUS_REG = common dso_local global i32 0, align 4
@HMC5843_DATA_READY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"data not ready\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hmc5843_data*)* @hmc5843_wait_measurement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hmc5843_wait_measurement(%struct.hmc5843_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hmc5843_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hmc5843_data* %0, %struct.hmc5843_data** %3, align 8
  store i32 150, i32* %4, align 4
  br label %7

7:                                                ; preds = %27, %1
  %8 = load i32, i32* %4, align 4
  %9 = add nsw i32 %8, -1
  store i32 %9, i32* %4, align 4
  %10 = icmp sgt i32 %8, 0
  br i1 %10, label %11, label %29

11:                                               ; preds = %7
  %12 = load %struct.hmc5843_data*, %struct.hmc5843_data** %3, align 8
  %13 = getelementptr inbounds %struct.hmc5843_data, %struct.hmc5843_data* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @HMC5843_STATUS_REG, align 4
  %16 = call i32 @regmap_read(i32 %14, i32 %15, i32* %5)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %11
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %2, align 4
  br label %40

21:                                               ; preds = %11
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @HMC5843_DATA_READY, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %29

27:                                               ; preds = %21
  %28 = call i32 @msleep(i32 20)
  br label %7

29:                                               ; preds = %26, %7
  %30 = load i32, i32* %4, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = load %struct.hmc5843_data*, %struct.hmc5843_data** %3, align 8
  %34 = getelementptr inbounds %struct.hmc5843_data, %struct.hmc5843_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dev_err(i32 %35, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @EIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %40

39:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %32, %19
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
