; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_tc3589x.c_tc3589x_block_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_tc3589x.c_tc3589x_block_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tc3589x = type { i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"failed to write regs %#x: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tc3589x_block_write(%struct.tc3589x* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.tc3589x*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.tc3589x* %0, %struct.tc3589x** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %10 = load %struct.tc3589x*, %struct.tc3589x** %5, align 8
  %11 = getelementptr inbounds %struct.tc3589x, %struct.tc3589x* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32*, i32** %8, align 8
  %16 = call i32 @i2c_smbus_write_i2c_block_data(i32 %12, i32 %13, i32 %14, i32* %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %4
  %20 = load %struct.tc3589x*, %struct.tc3589x** %5, align 8
  %21 = getelementptr inbounds %struct.tc3589x, %struct.tc3589x* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @dev_err(i32 %22, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %19, %4
  %27 = load i32, i32* %9, align 4
  ret i32 %27
}

declare dso_local i32 @i2c_smbus_write_i2c_block_data(i32, i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
