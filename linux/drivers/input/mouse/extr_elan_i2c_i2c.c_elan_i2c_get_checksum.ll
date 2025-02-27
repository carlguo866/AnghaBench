; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elan_i2c_i2c.c_elan_i2c_get_checksum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elan_i2c_i2c.c_elan_i2c_get_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@ETP_I2C_IAP_CHECKSUM_CMD = common dso_local global i32 0, align 4
@ETP_I2C_FW_CHECKSUM_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"failed to get %s checksum: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"IAP\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"FW\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, i32*)* @elan_i2c_get_checksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elan_i2c_get_checksum(%struct.i2c_client* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [3 x i32], align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @ETP_I2C_IAP_CHECKSUM_CMD, align 4
  br label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @ETP_I2C_FW_CHECKSUM_CMD, align 4
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %14, %13 ], [ %16, %15 ]
  %19 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %20 = call i32 @elan_i2c_read_cmd(%struct.i2c_client* %10, i32 %18, i32* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %17
  %24 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %25 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %24, i32 0, i32 0
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @dev_err(i32* %25, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %29, i32 %30)
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %4, align 4
  br label %37

33:                                               ; preds = %17
  %34 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %35 = call i32 @le16_to_cpup(i32* %34)
  %36 = load i32*, i32** %7, align 8
  store i32 %35, i32* %36, align 4
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %33, %23
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @elan_i2c_read_cmd(%struct.i2c_client*, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i8*, i32) #1

declare dso_local i32 @le16_to_cpup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
