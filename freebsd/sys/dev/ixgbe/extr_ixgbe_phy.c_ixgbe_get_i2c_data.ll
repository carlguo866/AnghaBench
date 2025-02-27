; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_phy.c_ixgbe_get_i2c_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_phy.c_ixgbe_get_i2c_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"ixgbe_get_i2c_data\00", align 1
@IXGBE_I2C_T_FALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_hw*, i32*)* @ixgbe_get_i2c_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_get_i2c_data(%struct.ixgbe_hw* %0, i32* %1) #0 {
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %8 = call i32 @IXGBE_I2C_DATA_OE_N_EN_BY_MAC(%struct.ixgbe_hw* %7)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %10 = call i32 @UNREFERENCED_1PARAMETER(%struct.ixgbe_hw* %9)
  %11 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %15
  store i32 %18, i32* %16, align 4
  %19 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %20 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %21 = call i32 @IXGBE_I2CCTL_BY_MAC(%struct.ixgbe_hw* %20)
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %19, i32 %21, i32 %23)
  %25 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %26 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %25)
  %27 = load i32, i32* @IXGBE_I2C_T_FALL, align 4
  %28 = call i32 @usec_delay(i32 %27)
  br label %29

29:                                               ; preds = %14, %2
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %33 = call i32 @IXGBE_I2C_DATA_IN_BY_MAC(%struct.ixgbe_hw* %32)
  %34 = and i32 %31, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  store i32 1, i32* %6, align 4
  br label %38

37:                                               ; preds = %29
  store i32 0, i32* %6, align 4
  br label %38

38:                                               ; preds = %37, %36
  %39 = load i32, i32* %6, align 4
  ret i32 %39
}

declare dso_local i32 @IXGBE_I2C_DATA_OE_N_EN_BY_MAC(%struct.ixgbe_hw*) #1

declare dso_local i32 @UNREFERENCED_1PARAMETER(%struct.ixgbe_hw*) #1

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_I2CCTL_BY_MAC(%struct.ixgbe_hw*) #1

declare dso_local i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw*) #1

declare dso_local i32 @usec_delay(i32) #1

declare dso_local i32 @IXGBE_I2C_DATA_IN_BY_MAC(%struct.ixgbe_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
