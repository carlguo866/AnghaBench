; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma7455_core.c_mma7455_write_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma7455_core.c_mma7455_write_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.mma7455_data = type { i32 }

@MMA7455_CTL1_DFBW_125HZ = common dso_local global i32 0, align 4
@MMA7455_CTL1_DFBW_62_5HZ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MMA7455_REG_CTL1 = common dso_local global i32 0, align 4
@MMA7455_CTL1_DFBW_MASK = common dso_local global i32 0, align 4
@MMA7455_10BIT_SCALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i64)* @mma7455_write_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mma7455_write_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.mma7455_data*, align 8
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.mma7455_data* @iio_priv(%struct.iio_dev* %14)
  store %struct.mma7455_data* %15, %struct.mma7455_data** %12, align 8
  %16 = load i64, i64* %11, align 8
  switch i64 %16, label %54 [
    i64 129, label %17
    i64 128, label %45
  ]

17:                                               ; preds = %5
  %18 = load i32, i32* %9, align 4
  %19 = icmp eq i32 %18, 250
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load i32, i32* %10, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i32, i32* @MMA7455_CTL1_DFBW_125HZ, align 4
  store i32 %24, i32* %13, align 4
  br label %37

25:                                               ; preds = %20, %17
  %26 = load i32, i32* %9, align 4
  %27 = icmp eq i32 %26, 125
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load i32, i32* %10, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32, i32* @MMA7455_CTL1_DFBW_62_5HZ, align 4
  store i32 %32, i32* %13, align 4
  br label %36

33:                                               ; preds = %28, %25
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %6, align 4
  br label %57

36:                                               ; preds = %31
  br label %37

37:                                               ; preds = %36, %23
  %38 = load %struct.mma7455_data*, %struct.mma7455_data** %12, align 8
  %39 = getelementptr inbounds %struct.mma7455_data, %struct.mma7455_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @MMA7455_REG_CTL1, align 4
  %42 = load i32, i32* @MMA7455_CTL1_DFBW_MASK, align 4
  %43 = load i32, i32* %13, align 4
  %44 = call i32 @regmap_update_bits(i32 %40, i32 %41, i32 %42, i32 %43)
  store i32 %44, i32* %6, align 4
  br label %57

45:                                               ; preds = %5
  %46 = load i32, i32* %9, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @MMA7455_10BIT_SCALE, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i32 0, i32* %6, align 4
  br label %57

53:                                               ; preds = %48, %45
  br label %54

54:                                               ; preds = %5, %53
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %54, %52, %37, %33
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local %struct.mma7455_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
