; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1343.c_ds1343_store_glitchfilter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1343.c_ds1343_store_glitchfilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.ds1343_priv = type { i32 }

@DS1343_CONTROL_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@DS1343_EGFIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @ds1343_store_glitchfilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ds1343_store_glitchfilter(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ds1343_priv*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = call %struct.ds1343_priv* @dev_get_drvdata(%struct.device* %12)
  store %struct.ds1343_priv* %13, %struct.ds1343_priv** %10, align 8
  %14 = load %struct.ds1343_priv*, %struct.ds1343_priv** %10, align 8
  %15 = getelementptr inbounds %struct.ds1343_priv, %struct.ds1343_priv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @DS1343_CONTROL_REG, align 4
  %18 = call i32 @regmap_read(i32 %16, i32 %17, i32* %11)
  %19 = load i8*, i8** %8, align 8
  %20 = call i64 @strncmp(i8* %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 7)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %4
  %23 = load i32, i32* @DS1343_EGFIL, align 4
  %24 = load i32, i32* %11, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %11, align 4
  br label %39

26:                                               ; preds = %4
  %27 = load i8*, i8** %8, align 8
  %28 = call i64 @strncmp(i8* %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 8)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load i32, i32* @DS1343_EGFIL, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %11, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %11, align 4
  br label %38

35:                                               ; preds = %26
  %36 = load i64, i64* @EINVAL, align 8
  %37 = sub i64 0, %36
  store i64 %37, i64* %5, align 8
  br label %47

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %38, %22
  %40 = load %struct.ds1343_priv*, %struct.ds1343_priv** %10, align 8
  %41 = getelementptr inbounds %struct.ds1343_priv, %struct.ds1343_priv* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @DS1343_CONTROL_REG, align 4
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @regmap_write(i32 %42, i32 %43, i32 %44)
  %46 = load i64, i64* %9, align 8
  store i64 %46, i64* %5, align 8
  br label %47

47:                                               ; preds = %39, %35
  %48 = load i64, i64* %5, align 8
  ret i64 %48
}

declare dso_local %struct.ds1343_priv* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
