; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/power/extr_sysfs.c_pm_qos_latency_tolerance_us_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/power/extr_sysfs.c_pm_qos_latency_tolerance_us_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"auto\0A\00", align 1
@PM_QOS_LATENCY_ANY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"any\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @pm_qos_latency_tolerance_us_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm_qos_latency_tolerance_us_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.device*, %struct.device** %5, align 8
  %10 = call i64 @dev_pm_qos_get_user_latency_tolerance(%struct.device* %9)
  store i64 %10, i64* %8, align 8
  %11 = load i64, i64* %8, align 8
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i8*, i8** %7, align 8
  %15 = call i32 (i8*, i8*, ...) @sprintf(i8* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %15, i32* %4, align 4
  br label %27

16:                                               ; preds = %3
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* @PM_QOS_LATENCY_ANY, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 (i8*, i8*, ...) @sprintf(i8* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 %22, i32* %4, align 4
  br label %27

23:                                               ; preds = %16
  %24 = load i8*, i8** %7, align 8
  %25 = load i64, i64* %8, align 8
  %26 = call i32 (i8*, i8*, ...) @sprintf(i8* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i64 %25)
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %23, %20, %13
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i64 @dev_pm_qos_get_user_latency_tolerance(%struct.device*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
