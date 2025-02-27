; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2100.c_store_scan_age.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2100.c_store_scan_age.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.ipw2100_priv = type { %struct.TYPE_2__*, %struct.net_device* }
%struct.TYPE_2__ = type { i64 }
%struct.net_device = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"%s: user supplied invalid value.\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"set scan_age = %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"exit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_scan_age to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_scan_age(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ipw2100_priv*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call %struct.ipw2100_priv* @dev_get_drvdata(%struct.device* %13)
  store %struct.ipw2100_priv* %14, %struct.ipw2100_priv** %9, align 8
  %15 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %9, align 8
  %16 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %15, i32 0, i32 1
  %17 = load %struct.net_device*, %struct.net_device** %16, align 8
  store %struct.net_device* %17, %struct.net_device** %10, align 8
  %18 = load %struct.net_device*, %struct.net_device** %10, align 8
  %19 = call i32 (i8*, ...) @IPW_DEBUG_INFO(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 @kstrtoul(i8* %20, i32 0, i64* %11)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %4
  %25 = load %struct.net_device*, %struct.net_device** %10, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (i8*, ...) @IPW_DEBUG_INFO(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  br label %41

29:                                               ; preds = %4
  %30 = load i64, i64* %11, align 8
  %31 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %9, align 8
  %32 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i64 %30, i64* %34, align 8
  %35 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %9, align 8
  %36 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 (i8*, ...) @IPW_DEBUG_INFO(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i64 %39)
  br label %41

41:                                               ; preds = %29, %24
  %42 = call i32 (i8*, ...) @IPW_DEBUG_INFO(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %43 = load i8*, i8** %7, align 8
  %44 = load i64, i64* %8, align 8
  %45 = call i32 @strnlen(i8* %43, i64 %44)
  ret i32 %45
}

declare dso_local %struct.ipw2100_priv* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @IPW_DEBUG_INFO(i8*, ...) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @strnlen(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
