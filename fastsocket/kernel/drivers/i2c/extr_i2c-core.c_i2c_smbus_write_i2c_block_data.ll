; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/extr_i2c-core.c_i2c_smbus_write_i2c_block_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/extr_i2c-core.c_i2c_smbus_write_i2c_block_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, i32 }
%union.i2c_smbus_data = type { i32* }

@I2C_SMBUS_BLOCK_MAX = common dso_local global i32 0, align 4
@I2C_SMBUS_WRITE = common dso_local global i32 0, align 4
@I2C_SMBUS_I2C_BLOCK_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i2c_smbus_write_i2c_block_data(%struct.i2c_client* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %union.i2c_smbus_data, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @I2C_SMBUS_BLOCK_MAX, align 4
  %12 = icmp sgt i32 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %4
  %14 = load i32, i32* @I2C_SMBUS_BLOCK_MAX, align 4
  store i32 %14, i32* %7, align 4
  br label %15

15:                                               ; preds = %13, %4
  %16 = load i32, i32* %7, align 4
  %17 = bitcast %union.i2c_smbus_data* %9 to i32**
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  store i32 %16, i32* %19, align 4
  %20 = bitcast %union.i2c_smbus_data* %9 to i32**
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @memcpy(i32* %22, i32* %23, i32 %24)
  %26 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %27 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %30 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %33 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @I2C_SMBUS_WRITE, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @I2C_SMBUS_I2C_BLOCK_DATA, align 4
  %38 = call i32 @i2c_smbus_xfer(i32 %28, i32 %31, i32 %34, i32 %35, i32 %36, i32 %37, %union.i2c_smbus_data* %9)
  ret i32 %38
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @i2c_smbus_xfer(i32, i32, i32, i32, i32, i32, %union.i2c_smbus_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
