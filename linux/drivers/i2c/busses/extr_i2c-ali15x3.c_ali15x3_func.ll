; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-ali15x3.c_ali15x3_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-ali15x3.c_ali15x3_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }

@I2C_FUNC_SMBUS_QUICK = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_BYTE = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_WORD_DATA = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_BLOCK_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*)* @ali15x3_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ali15x3_func(%struct.i2c_adapter* %0) #0 {
  %2 = alloca %struct.i2c_adapter*, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %2, align 8
  %3 = load i32, i32* @I2C_FUNC_SMBUS_QUICK, align 4
  %4 = load i32, i32* @I2C_FUNC_SMBUS_BYTE, align 4
  %5 = or i32 %3, %4
  %6 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @I2C_FUNC_SMBUS_WORD_DATA, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @I2C_FUNC_SMBUS_BLOCK_DATA, align 4
  %11 = or i32 %9, %10
  ret i32 %11
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
