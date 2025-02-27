; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/impedance-analyzer/extr_ad5933.c_ad5933_i2c_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/impedance-analyzer/extr_ad5933.c_ad5933_i2c_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"I2C write error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, i32, i32*)* @ad5933_i2c_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5933_i2c_write(%struct.i2c_client* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  br label %11

11:                                               ; preds = %30, %4
  %12 = load i32, i32* %8, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %8, align 4
  %14 = icmp ne i32 %12, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %11
  %16 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %7, align 4
  %19 = load i32*, i32** %9, align 8
  %20 = getelementptr inbounds i32, i32* %19, i32 1
  store i32* %20, i32** %9, align 8
  %21 = load i32, i32* %19, align 4
  %22 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %16, i32 %17, i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %15
  %26 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %27 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %26, i32 0, i32 0
  %28 = call i32 @dev_err(i32* %27, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %5, align 4
  br label %32

30:                                               ; preds = %15
  br label %11

31:                                               ; preds = %11
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %31, %25
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
