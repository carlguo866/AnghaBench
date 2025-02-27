; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm93.c_lm93_read_word.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm93.c_lm93_read_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@MAX_RETRIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"lm93: read word data failed, address 0x%02x.\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"lm93: All read word retries failed!!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32)* @lm93_read_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm93_read_word(%struct.i2c_client* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 1, i32* %7, align 4
  br label %8

8:                                                ; preds = %29, %2
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @MAX_RETRIES, align 4
  %11 = icmp sle i32 %9, %10
  br i1 %11, label %12, label %32

12:                                               ; preds = %8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %3, align 4
  br label %36

20:                                               ; preds = %12
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %21, i32 0, i32 0
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @dev_warn(i32* %22, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %25, 3
  %27 = call i32 @mdelay(i32 %26)
  br label %28

28:                                               ; preds = %20
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %7, align 4
  br label %8

32:                                               ; preds = %8
  %33 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %34 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %33, i32 0, i32 0
  %35 = call i32 @dev_err(i32* %34, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %32, %18
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @i2c_smbus_read_word_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
