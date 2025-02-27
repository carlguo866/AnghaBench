; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_cytherm.c_temp_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_cytherm.c_temp_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.usb_interface = type { i32 }
%struct.usb_cytherm = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@READ_RAM = common dso_local global i32 0, align 4
@TEMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"retval = %d\0A\00", align 1
@SIGN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"%c%i.%i\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @temp_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @temp_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.usb_interface*, align 8
  %9 = alloca %struct.usb_cytherm*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = call %struct.usb_interface* @to_usb_interface(%struct.device* %14)
  store %struct.usb_interface* %15, %struct.usb_interface** %8, align 8
  %16 = load %struct.usb_interface*, %struct.usb_interface** %8, align 8
  %17 = call %struct.usb_cytherm* @usb_get_intfdata(%struct.usb_interface* %16)
  store %struct.usb_cytherm* %17, %struct.usb_cytherm** %9, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i8* @kmalloc(i32 8, i32 %18)
  store i8* %19, i8** %11, align 8
  %20 = load i8*, i8** %11, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %83

23:                                               ; preds = %3
  %24 = load %struct.usb_cytherm*, %struct.usb_cytherm** %9, align 8
  %25 = getelementptr inbounds %struct.usb_cytherm, %struct.usb_cytherm* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* @READ_RAM, align 4
  %28 = load i32, i32* @TEMP, align 4
  %29 = load i8*, i8** %11, align 8
  %30 = call i32 @vendor_command(%struct.TYPE_2__* %26, i32 %27, i32 %28, i32 0, i8* %29, i32 8)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %23
  %34 = load %struct.usb_cytherm*, %struct.usb_cytherm** %9, align 8
  %35 = getelementptr inbounds %struct.usb_cytherm, %struct.usb_cytherm* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @dev_dbg(i32* %37, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %33, %23
  %41 = load i8*, i8** %11, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  store i32 %44, i32* %12, align 4
  %45 = load %struct.usb_cytherm*, %struct.usb_cytherm** %9, align 8
  %46 = getelementptr inbounds %struct.usb_cytherm, %struct.usb_cytherm* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i32, i32* @READ_RAM, align 4
  %49 = load i32, i32* @SIGN, align 4
  %50 = load i8*, i8** %11, align 8
  %51 = call i32 @vendor_command(%struct.TYPE_2__* %47, i32 %48, i32 %49, i32 0, i8* %50, i32 8)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %40
  %55 = load %struct.usb_cytherm*, %struct.usb_cytherm** %9, align 8
  %56 = getelementptr inbounds %struct.usb_cytherm, %struct.usb_cytherm* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @dev_dbg(i32* %58, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %54, %40
  %62 = load i8*, i8** %11, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  store i32 %65, i32* %13, align 4
  %66 = load i8*, i8** %11, align 8
  %67 = call i32 @kfree(i8* %66)
  %68 = load i8*, i8** %7, align 8
  %69 = load i32, i32* %13, align 4
  %70 = icmp ne i32 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i32 45, i32 43
  %73 = trunc i32 %72 to i8
  %74 = load i32, i32* %12, align 4
  %75 = ashr i32 %74, 1
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  %78 = ashr i32 %77, 1
  %79 = shl i32 %78, 1
  %80 = sub nsw i32 %76, %79
  %81 = mul nsw i32 5, %80
  %82 = call i32 @sprintf(i8* %68, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8 signext %73, i32 %75, i32 %81)
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %61, %22
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local %struct.usb_interface* @to_usb_interface(%struct.device*) #1

declare dso_local %struct.usb_cytherm* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @vendor_command(%struct.TYPE_2__*, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8 signext, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
