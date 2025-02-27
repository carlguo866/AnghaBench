; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_lp855x_bl.c_lp855x_get_bl_ctl_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_lp855x_bl.c_lp855x_get_bl_ctl_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.lp855x = type { i64 }

@PWM_BASED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"pwm based\00", align 1
@REGISTER_BASED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"register based\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @lp855x_get_bl_ctl_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp855x_get_bl_ctl_mode(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.lp855x*, align 8
  %8 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.lp855x* @dev_get_drvdata(%struct.device* %9)
  store %struct.lp855x* %10, %struct.lp855x** %7, align 8
  store i8* null, i8** %8, align 8
  %11 = load %struct.lp855x*, %struct.lp855x** %7, align 8
  %12 = getelementptr inbounds %struct.lp855x, %struct.lp855x* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @PWM_BASED, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %25

17:                                               ; preds = %3
  %18 = load %struct.lp855x*, %struct.lp855x** %7, align 8
  %19 = getelementptr inbounds %struct.lp855x, %struct.lp855x* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @REGISTER_BASED, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  br label %24

24:                                               ; preds = %23, %17
  br label %25

25:                                               ; preds = %24, %16
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* @PAGE_SIZE, align 4
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @scnprintf(i8* %26, i32 %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %28)
  ret i32 %29
}

declare dso_local %struct.lp855x* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @scnprintf(i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
