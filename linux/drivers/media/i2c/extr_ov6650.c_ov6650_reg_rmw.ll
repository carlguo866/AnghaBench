; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov6650.c_ov6650_reg_rmw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov6650.c_ov6650_reg_rmw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [48 x i8] c"[Read]-Modify-Write of register 0x%02x failed!\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Read-Modify-[Write] of register 0x%02x failed!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, i32, i32)* @ov6650_reg_rmw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov6650_reg_rmw(%struct.i2c_client* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @ov6650_reg_read(%struct.i2c_client* %12, i32 %13, i32* %10)
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %4
  %18 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %19 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %18, i32 0, i32 0
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @dev_err(i32* %19, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* %11, align 4
  store i32 %22, i32* %5, align 4
  br label %44

23:                                               ; preds = %4
  %24 = load i32, i32* %9, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %10, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %10, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %10, align 4
  %31 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @ov6650_reg_write(%struct.i2c_client* %31, i32 %32, i32 %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %23
  %38 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %39 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %38, i32 0, i32 0
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @dev_err(i32* %39, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %37, %23
  %43 = load i32, i32* %11, align 4
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %42, %17
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i32 @ov6650_reg_read(%struct.i2c_client*, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @ov6650_reg_write(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
