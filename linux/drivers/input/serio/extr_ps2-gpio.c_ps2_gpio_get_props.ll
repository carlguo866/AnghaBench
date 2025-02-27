; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_ps2-gpio.c_ps2_gpio_get_props.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_ps2-gpio.c_ps2_gpio_get_props.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ps2_gpio_data = type { i32, i8*, i8* }

@.str = private unnamed_addr constant [5 x i8] c"data\00", align 1
@GPIOD_IN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to request data gpio: %ld\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"clk\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"failed to request clock gpio: %ld\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"write-enable\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.ps2_gpio_data*)* @ps2_gpio_get_props to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ps2_gpio_get_props(%struct.device* %0, %struct.ps2_gpio_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.ps2_gpio_data*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.ps2_gpio_data* %1, %struct.ps2_gpio_data** %5, align 8
  %6 = load %struct.device*, %struct.device** %4, align 8
  %7 = load i32, i32* @GPIOD_IN, align 4
  %8 = call i8* @devm_gpiod_get(%struct.device* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load %struct.ps2_gpio_data*, %struct.ps2_gpio_data** %5, align 8
  %10 = getelementptr inbounds %struct.ps2_gpio_data, %struct.ps2_gpio_data* %9, i32 0, i32 2
  store i8* %8, i8** %10, align 8
  %11 = load %struct.ps2_gpio_data*, %struct.ps2_gpio_data** %5, align 8
  %12 = getelementptr inbounds %struct.ps2_gpio_data, %struct.ps2_gpio_data* %11, i32 0, i32 2
  %13 = load i8*, i8** %12, align 8
  %14 = call i64 @IS_ERR(i8* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %2
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = load %struct.ps2_gpio_data*, %struct.ps2_gpio_data** %5, align 8
  %19 = getelementptr inbounds %struct.ps2_gpio_data, %struct.ps2_gpio_data* %18, i32 0, i32 2
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @PTR_ERR(i8* %20)
  %22 = call i32 @dev_err(%struct.device* %17, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load %struct.ps2_gpio_data*, %struct.ps2_gpio_data** %5, align 8
  %24 = getelementptr inbounds %struct.ps2_gpio_data, %struct.ps2_gpio_data* %23, i32 0, i32 2
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @PTR_ERR(i8* %25)
  store i32 %26, i32* %3, align 4
  br label %54

27:                                               ; preds = %2
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = load i32, i32* @GPIOD_IN, align 4
  %30 = call i8* @devm_gpiod_get(%struct.device* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  %31 = load %struct.ps2_gpio_data*, %struct.ps2_gpio_data** %5, align 8
  %32 = getelementptr inbounds %struct.ps2_gpio_data, %struct.ps2_gpio_data* %31, i32 0, i32 1
  store i8* %30, i8** %32, align 8
  %33 = load %struct.ps2_gpio_data*, %struct.ps2_gpio_data** %5, align 8
  %34 = getelementptr inbounds %struct.ps2_gpio_data, %struct.ps2_gpio_data* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = call i64 @IS_ERR(i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %27
  %39 = load %struct.device*, %struct.device** %4, align 8
  %40 = load %struct.ps2_gpio_data*, %struct.ps2_gpio_data** %5, align 8
  %41 = getelementptr inbounds %struct.ps2_gpio_data, %struct.ps2_gpio_data* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @PTR_ERR(i8* %42)
  %44 = call i32 @dev_err(%struct.device* %39, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %43)
  %45 = load %struct.ps2_gpio_data*, %struct.ps2_gpio_data** %5, align 8
  %46 = getelementptr inbounds %struct.ps2_gpio_data, %struct.ps2_gpio_data* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @PTR_ERR(i8* %47)
  store i32 %48, i32* %3, align 4
  br label %54

49:                                               ; preds = %27
  %50 = load %struct.device*, %struct.device** %4, align 8
  %51 = call i32 @device_property_read_bool(%struct.device* %50, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %52 = load %struct.ps2_gpio_data*, %struct.ps2_gpio_data** %5, align 8
  %53 = getelementptr inbounds %struct.ps2_gpio_data, %struct.ps2_gpio_data* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %49, %38, %16
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i8* @devm_gpiod_get(%struct.device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @device_property_read_bool(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
