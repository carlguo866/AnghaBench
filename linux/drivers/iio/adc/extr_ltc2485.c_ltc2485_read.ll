; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ltc2485.c_ltc2485_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ltc2485.c_ltc2485_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ltc2485_data = type { i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"i2c_master_recv failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ltc2485_data*, i32*)* @ltc2485_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltc2485_read(%struct.ltc2485_data* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ltc2485_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.ltc2485_data* %0, %struct.ltc2485_data** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.ltc2485_data*, %struct.ltc2485_data** %4, align 8
  %10 = getelementptr inbounds %struct.ltc2485_data, %struct.ltc2485_data* %9, i32 0, i32 1
  %11 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  store %struct.i2c_client* %11, %struct.i2c_client** %6, align 8
  store i64 0, i64* %7, align 8
  %12 = load %struct.ltc2485_data*, %struct.ltc2485_data** %4, align 8
  %13 = call i32 @ltc2485_wait_conv(%struct.ltc2485_data* %12)
  %14 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %15 = bitcast i64* %7 to i8*
  %16 = call i32 @i2c_master_recv(%struct.i2c_client* %14, i8* %15, i32 4)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 0
  %22 = call i32 @dev_err(i32* %21, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %3, align 4
  br label %34

24:                                               ; preds = %2
  %25 = call i32 (...) @ktime_get()
  %26 = load %struct.ltc2485_data*, %struct.ltc2485_data** %4, align 8
  %27 = getelementptr inbounds %struct.ltc2485_data, %struct.ltc2485_data* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @be32_to_cpu(i64 %28)
  %30 = ashr i32 %29, 6
  %31 = call i32 @sign_extend32(i32 %30, i32 24)
  %32 = load i32*, i32** %5, align 8
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %24, %19
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @ltc2485_wait_conv(%struct.ltc2485_data*) #1

declare dso_local i32 @i2c_master_recv(%struct.i2c_client*, i8*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @sign_extend32(i32, i32) #1

declare dso_local i32 @be32_to_cpu(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
