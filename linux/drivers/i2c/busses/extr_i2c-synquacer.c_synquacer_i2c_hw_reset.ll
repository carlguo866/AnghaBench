; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-synquacer.c_synquacer_i2c_hw_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-synquacer.c_synquacer_i2c_hw_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.synquacer_i2c = type { i32, i64 }

@SYNQUACER_I2C_REG_CCR = common dso_local global i64 0, align 8
@SYNQUACER_I2C_REG_CSR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.synquacer_i2c*)* @synquacer_i2c_hw_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @synquacer_i2c_hw_reset(%struct.synquacer_i2c* %0) #0 {
  %2 = alloca %struct.synquacer_i2c*, align 8
  store %struct.synquacer_i2c* %0, %struct.synquacer_i2c** %2, align 8
  %3 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %2, align 8
  %4 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @SYNQUACER_I2C_REG_CCR, align 8
  %7 = add nsw i64 %5, %6
  %8 = call i32 @writeb(i32 0, i64 %7)
  %9 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %2, align 8
  %10 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @SYNQUACER_I2C_REG_CSR, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @writeb(i32 0, i64 %13)
  %15 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %2, align 8
  %16 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @WAIT_PCLK(i32 100, i32 %17)
  ret void
}

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @WAIT_PCLK(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
