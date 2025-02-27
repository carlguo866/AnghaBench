; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_dsbr100.c_usb_dsbr100_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_dsbr100.c_usb_dsbr100_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.dsbr100_device = type { i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"dsbr100_stop failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"going into suspend..\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, i32)* @usb_dsbr100_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_dsbr100_suspend(%struct.usb_interface* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_interface*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dsbr100_device*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %7 = call %struct.dsbr100_device* @usb_get_intfdata(%struct.usb_interface* %6)
  store %struct.dsbr100_device* %7, %struct.dsbr100_device** %5, align 8
  %8 = load %struct.dsbr100_device*, %struct.dsbr100_device** %5, align 8
  %9 = getelementptr inbounds %struct.dsbr100_device, %struct.dsbr100_device* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.dsbr100_device*, %struct.dsbr100_device** %5, align 8
  %12 = getelementptr inbounds %struct.dsbr100_device, %struct.dsbr100_device* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %2
  %16 = load %struct.dsbr100_device*, %struct.dsbr100_device** %5, align 8
  %17 = call i64 @dsbr100_stop(%struct.dsbr100_device* %16)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %21 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %20, i32 0, i32 0
  %22 = call i32 @dev_warn(i32* %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %19, %15, %2
  %24 = load %struct.dsbr100_device*, %struct.dsbr100_device** %5, align 8
  %25 = getelementptr inbounds %struct.dsbr100_device, %struct.dsbr100_device* %24, i32 0, i32 0
  %26 = call i32 @mutex_unlock(i32* %25)
  %27 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %28 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %27, i32 0, i32 0
  %29 = call i32 @dev_info(i32* %28, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

declare dso_local %struct.dsbr100_device* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @dsbr100_stop(%struct.dsbr100_device*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
