; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_cytherm.c_set_port0.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_cytherm.c_set_port0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.usb_interface = type { i32 }
%struct.usb_cytherm = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@WRITE_PORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"retval = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_port0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_port0(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.usb_interface*, align 8
  %11 = alloca %struct.usb_cytherm*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.usb_interface* @to_usb_interface(%struct.device* %15)
  store %struct.usb_interface* %16, %struct.usb_interface** %10, align 8
  %17 = load %struct.usb_interface*, %struct.usb_interface** %10, align 8
  %18 = call %struct.usb_cytherm* @usb_get_intfdata(%struct.usb_interface* %17)
  store %struct.usb_cytherm* %18, %struct.usb_cytherm** %11, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i8* @kmalloc(i32 8, i32 %19)
  store i8* %20, i8** %12, align 8
  %21 = load i8*, i8** %12, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %4
  %24 = load %struct.usb_cytherm*, %struct.usb_cytherm** %11, align 8
  %25 = getelementptr inbounds %struct.usb_cytherm, %struct.usb_cytherm* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 @dev_err(i32* %27, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %5, align 8
  br label %61

29:                                               ; preds = %4
  %30 = load i8*, i8** %8, align 8
  %31 = call i32 @simple_strtoul(i8* %30, i32* null, i32 10)
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %14, align 4
  %33 = icmp sgt i32 %32, 255
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 255, i32* %14, align 4
  br label %40

35:                                               ; preds = %29
  %36 = load i32, i32* %14, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 0, i32* %14, align 4
  br label %39

39:                                               ; preds = %38, %35
  br label %40

40:                                               ; preds = %39, %34
  %41 = load %struct.usb_cytherm*, %struct.usb_cytherm** %11, align 8
  %42 = getelementptr inbounds %struct.usb_cytherm, %struct.usb_cytherm* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i32, i32* @WRITE_PORT, align 4
  %45 = load i32, i32* %14, align 4
  %46 = load i8*, i8** %12, align 8
  %47 = call i32 @vendor_command(%struct.TYPE_2__* %43, i32 %44, i32 0, i32 %45, i8* %46, i32 8)
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %40
  %51 = load %struct.usb_cytherm*, %struct.usb_cytherm** %11, align 8
  %52 = getelementptr inbounds %struct.usb_cytherm, %struct.usb_cytherm* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %13, align 4
  %56 = call i32 @dev_dbg(i32* %54, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %50, %40
  %58 = load i8*, i8** %12, align 8
  %59 = call i32 @kfree(i8* %58)
  %60 = load i64, i64* %9, align 8
  store i64 %60, i64* %5, align 8
  br label %61

61:                                               ; preds = %57, %23
  %62 = load i64, i64* %5, align 8
  ret i64 %62
}

declare dso_local %struct.usb_interface* @to_usb_interface(%struct.device*) #1

declare dso_local %struct.usb_cytherm* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @vendor_command(%struct.TYPE_2__*, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
