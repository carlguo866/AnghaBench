; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-davinci.c_terminate_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-davinci.c_terminate_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.davinci_i2c_dev = type { i32, i32 }

@DAVINCI_I2C_MDR_REG = common dso_local global i32 0, align 4
@DAVINCI_I2C_MDR_RM = common dso_local global i32 0, align 4
@DAVINCI_I2C_MDR_STP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"TDR IRQ while no data to send\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.davinci_i2c_dev*)* @terminate_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @terminate_write(%struct.davinci_i2c_dev* %0) #0 {
  %2 = alloca %struct.davinci_i2c_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.davinci_i2c_dev* %0, %struct.davinci_i2c_dev** %2, align 8
  %4 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %2, align 8
  %5 = load i32, i32* @DAVINCI_I2C_MDR_REG, align 4
  %6 = call i32 @davinci_i2c_read_reg(%struct.davinci_i2c_dev* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @DAVINCI_I2C_MDR_RM, align 4
  %8 = load i32, i32* @DAVINCI_I2C_MDR_STP, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* %3, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* %3, align 4
  %12 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %2, align 8
  %13 = load i32, i32* @DAVINCI_I2C_MDR_REG, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @davinci_i2c_write_reg(%struct.davinci_i2c_dev* %12, i32 %13, i32 %14)
  %16 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %2, align 8
  %17 = getelementptr inbounds %struct.davinci_i2c_dev, %struct.davinci_i2c_dev* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %1
  %21 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %2, align 8
  %22 = getelementptr inbounds %struct.davinci_i2c_dev, %struct.davinci_i2c_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dev_dbg(i32 %23, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %20, %1
  ret void
}

declare dso_local i32 @davinci_i2c_read_reg(%struct.davinci_i2c_dev*, i32) #1

declare dso_local i32 @davinci_i2c_write_reg(%struct.davinci_i2c_dev*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
