; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_ds2780_battery.c_ds2780_set_rsgain_setting.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_ds2780_battery.c_ds2780_set_rsgain_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.power_supply = type { i32 }
%struct.ds2780_device_info = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"Invalid rsgain setting (0 - 1999)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @ds2780_set_rsgain_setting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds2780_set_rsgain_setting(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.power_supply*, align 8
  %13 = alloca %struct.ds2780_device_info*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.power_supply* @to_power_supply(%struct.device* %14)
  store %struct.power_supply* %15, %struct.power_supply** %12, align 8
  %16 = load %struct.power_supply*, %struct.power_supply** %12, align 8
  %17 = call %struct.ds2780_device_info* @to_ds2780_device_info(%struct.power_supply* %16)
  store %struct.ds2780_device_info* %17, %struct.ds2780_device_info** %13, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = call i32 @kstrtou16(i8* %18, i32 0, i32* %11)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %5, align 4
  br label %45

24:                                               ; preds = %4
  %25 = load i32, i32* %11, align 4
  %26 = icmp sgt i32 %25, 1999
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load %struct.ds2780_device_info*, %struct.ds2780_device_info** %13, align 8
  %29 = getelementptr inbounds %struct.ds2780_device_info, %struct.ds2780_device_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %45

34:                                               ; preds = %24
  %35 = load %struct.ds2780_device_info*, %struct.ds2780_device_info** %13, align 8
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @ds2780_set_rsgain_register(%struct.ds2780_device_info* %35, i32 %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %5, align 4
  br label %45

42:                                               ; preds = %34
  %43 = load i64, i64* %9, align 8
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %42, %40, %27, %22
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local %struct.power_supply* @to_power_supply(%struct.device*) #1

declare dso_local %struct.ds2780_device_info* @to_ds2780_device_info(%struct.power_supply*) #1

declare dso_local i32 @kstrtou16(i8*, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @ds2780_set_rsgain_register(%struct.ds2780_device_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
