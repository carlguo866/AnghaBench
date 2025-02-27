; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_sysfs.c_bConfigurationValue_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_sysfs.c_bConfigurationValue_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.usb_device = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @bConfigurationValue_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bConfigurationValue_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.usb_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.usb_device* @to_usb_device(%struct.device* %14)
  store %struct.usb_device* %15, %struct.usb_device** %10, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = call i32 @sscanf(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %11)
  %18 = icmp ne i32 %17, 1
  br i1 %18, label %25, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* %11, align 4
  %21 = icmp slt i32 %20, -1
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %11, align 4
  %24 = icmp sgt i32 %23, 255
  br i1 %24, label %25, label %28

25:                                               ; preds = %22, %19, %4
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %52

28:                                               ; preds = %22
  %29 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %30 = call i32 @usb_lock_device_interruptible(%struct.usb_device* %29)
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* @EINTR, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %52

36:                                               ; preds = %28
  %37 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @usb_set_configuration(%struct.usb_device* %37, i32 %38)
  store i32 %39, i32* %12, align 4
  %40 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %41 = call i32 @usb_unlock_device(%struct.usb_device* %40)
  %42 = load i32, i32* %12, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  br label %49

47:                                               ; preds = %36
  %48 = load i64, i64* %9, align 8
  br label %49

49:                                               ; preds = %47, %44
  %50 = phi i64 [ %46, %44 ], [ %48, %47 ]
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %49, %33, %25
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local %struct.usb_device* @to_usb_device(%struct.device*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @usb_lock_device_interruptible(%struct.usb_device*) #1

declare dso_local i32 @usb_set_configuration(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_unlock_device(%struct.usb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
