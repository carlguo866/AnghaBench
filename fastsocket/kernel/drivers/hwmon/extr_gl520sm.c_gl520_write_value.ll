; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_gl520sm.c_gl520_write_value.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_gl520sm.c_gl520_write_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, i32)* @gl520_write_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gl520_write_value(%struct.i2c_client* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp sge i32 %8, 7
  br i1 %9, label %10, label %19

10:                                               ; preds = %3
  %11 = load i32, i32* %6, align 4
  %12 = icmp sle i32 %11, 12
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @swab16(i32 %16)
  %18 = call i32 @i2c_smbus_write_word_data(%struct.i2c_client* %14, i32 %15, i32 %17)
  store i32 %18, i32* %4, align 4
  br label %24

19:                                               ; preds = %10, %3
  %20 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %20, i32 %21, i32 %22)
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %19, %13
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

declare dso_local i32 @i2c_smbus_write_word_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @swab16(i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
