; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_raydium_i2c_ts.c_raydium_i2c_enter_bl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_raydium_i2c_ts.c_raydium_i2c_enter_bl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@raydium_i2c_enter_bl.cal_cmd = internal constant [3 x i32] [i32 0, i32 1, i32 82], align 4
@RAYDIUM_ACK_NULL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"enter bl command failed: %d\0A\00", align 1
@RM_BOOT_DELAY_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @raydium_i2c_enter_bl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raydium_i2c_enter_bl(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %5 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %6 = load i32, i32* @RAYDIUM_ACK_NULL, align 4
  %7 = call i32 @raydium_i2c_write_object(%struct.i2c_client* %5, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @raydium_i2c_enter_bl.cal_cmd, i64 0, i64 0), i32 12, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 0
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @dev_err(i32* %12, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %2, align 4
  br label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @RM_BOOT_DELAY_MS, align 4
  %18 = call i32 @msleep(i32 %17)
  store i32 0, i32* %2, align 4
  br label %19

19:                                               ; preds = %16, %10
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local i32 @raydium_i2c_write_object(%struct.i2c_client*, i32*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
