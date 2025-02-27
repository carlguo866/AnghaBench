; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_da9055-i2c.c_da9055_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_da9055-i2c.c_da9055_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.da9055 = type { i32, i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@da9055_regmap_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to allocate register map: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @da9055_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9055_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.da9055*, align 8
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 1
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.da9055* @devm_kzalloc(i32* %9, i32 24, i32 %10)
  store %struct.da9055* %11, %struct.da9055** %6, align 8
  %12 = load %struct.da9055*, %struct.da9055** %6, align 8
  %13 = icmp ne %struct.da9055* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %52

17:                                               ; preds = %2
  %18 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %19 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %18, i32* @da9055_regmap_config)
  %20 = load %struct.da9055*, %struct.da9055** %6, align 8
  %21 = getelementptr inbounds %struct.da9055, %struct.da9055* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 8
  %22 = load %struct.da9055*, %struct.da9055** %6, align 8
  %23 = getelementptr inbounds %struct.da9055, %struct.da9055* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @IS_ERR(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %17
  %28 = load %struct.da9055*, %struct.da9055** %6, align 8
  %29 = getelementptr inbounds %struct.da9055, %struct.da9055* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @PTR_ERR(i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %33 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %32, i32 0, i32 1
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @dev_err(i32* %33, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %3, align 4
  br label %52

37:                                               ; preds = %17
  %38 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %39 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %38, i32 0, i32 1
  %40 = load %struct.da9055*, %struct.da9055** %6, align 8
  %41 = getelementptr inbounds %struct.da9055, %struct.da9055* %40, i32 0, i32 1
  store i32* %39, i32** %41, align 8
  %42 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %43 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.da9055*, %struct.da9055** %6, align 8
  %46 = getelementptr inbounds %struct.da9055, %struct.da9055* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %48 = load %struct.da9055*, %struct.da9055** %6, align 8
  %49 = call i32 @i2c_set_clientdata(%struct.i2c_client* %47, %struct.da9055* %48)
  %50 = load %struct.da9055*, %struct.da9055** %6, align 8
  %51 = call i32 @da9055_device_init(%struct.da9055* %50)
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %37, %27, %14
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.da9055* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.da9055*) #1

declare dso_local i32 @da9055_device_init(%struct.da9055*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
