; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-twl6030-usb.c_vbus_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-twl6030-usb.c_vbus_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.twl6030_usb = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"vbus\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"id\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"none\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"UNKNOWN\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @vbus_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vbus_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.twl6030_usb*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.twl6030_usb* @dev_get_drvdata(%struct.device* %10)
  store %struct.twl6030_usb* %11, %struct.twl6030_usb** %7, align 8
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %9, align 4
  %14 = load %struct.twl6030_usb*, %struct.twl6030_usb** %7, align 8
  %15 = getelementptr inbounds %struct.twl6030_usb, %struct.twl6030_usb* %14, i32 0, i32 1
  %16 = load i64, i64* %8, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.twl6030_usb*, %struct.twl6030_usb** %7, align 8
  %19 = getelementptr inbounds %struct.twl6030_usb, %struct.twl6030_usb* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %33 [
    i32 128, label %21
    i32 130, label %25
    i32 129, label %29
  ]

21:                                               ; preds = %3
  %22 = load i8*, i8** %6, align 8
  %23 = load i32, i32* @PAGE_SIZE, align 4
  %24 = call i32 @snprintf(i8* %22, i32 %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %24, i32* %9, align 4
  br label %37

25:                                               ; preds = %3
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* @PAGE_SIZE, align 4
  %28 = call i32 @snprintf(i8* %26, i32 %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i32 %28, i32* %9, align 4
  br label %37

29:                                               ; preds = %3
  %30 = load i8*, i8** %6, align 8
  %31 = load i32, i32* @PAGE_SIZE, align 4
  %32 = call i32 @snprintf(i8* %30, i32 %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i32 %32, i32* %9, align 4
  br label %37

33:                                               ; preds = %3
  %34 = load i8*, i8** %6, align 8
  %35 = load i32, i32* @PAGE_SIZE, align 4
  %36 = call i32 @snprintf(i8* %34, i32 %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %33, %29, %25, %21
  %38 = load %struct.twl6030_usb*, %struct.twl6030_usb** %7, align 8
  %39 = getelementptr inbounds %struct.twl6030_usb, %struct.twl6030_usb* %38, i32 0, i32 1
  %40 = load i64, i64* %8, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  %42 = load i32, i32* %9, align 4
  ret i32 %42
}

declare dso_local %struct.twl6030_usb* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snprintf(i8*, i32, i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
