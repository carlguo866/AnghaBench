; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma9551_core.c_mma9551_write_config_words.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma9551_core.c_mma9551_write_config_words.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@MMA9551_MAX_MAILBOX_DATA_REGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Invalid buffer size %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MMA9551_CMD_WRITE_CONFIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mma9551_write_config_words(%struct.i2c_client* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %16 = load i32, i32* @MMA9551_MAX_MAILBOX_DATA_REGS, align 4
  %17 = sub nsw i32 %16, 1
  %18 = sdiv i32 %17, 2
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %13, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %14, align 8
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @ARRAY_SIZE(i32* %21)
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %5
  %26 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %27 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %26, i32 0, i32 0
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @dev_err(i32* %27, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %60

32:                                               ; preds = %5
  store i32 0, i32* %12, align 4
  br label %33

33:                                               ; preds = %47, %32
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %33
  %38 = load i32*, i32** %11, align 8
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @cpu_to_be16(i32 %42)
  %44 = load i32, i32* %12, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %21, i64 %45
  store i32 %43, i32* %46, align 4
  br label %47

47:                                               ; preds = %37
  %48 = load i32, i32* %12, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %12, align 4
  br label %33

50:                                               ; preds = %33
  %51 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @MMA9551_CMD_WRITE_CONFIG, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = mul i64 %56, 4
  %58 = trunc i64 %57 to i32
  %59 = call i32 @mma9551_transfer(%struct.i2c_client* %51, i32 %52, i32 %53, i32 %54, i32* %21, i32 %58, i32* null, i32 0)
  store i32 %59, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %60

60:                                               ; preds = %50, %25
  %61 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %61)
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @dev_err(i32*, i8*, i32) #2

declare dso_local i32 @cpu_to_be16(i32) #2

declare dso_local i32 @mma9551_transfer(%struct.i2c_client*, i32, i32, i32, i32*, i32, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
