; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/asus_oled/extr_asus_oled.c_get_enabled.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/asus_oled/extr_asus_oled.c_get_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.usb_interface = type { i32 }
%struct.asus_oled_dev = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @get_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_enabled(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.usb_interface*, align 8
  %8 = alloca %struct.asus_oled_dev*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.usb_interface* @to_usb_interface(%struct.device* %9)
  store %struct.usb_interface* %10, %struct.usb_interface** %7, align 8
  %11 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %12 = call %struct.asus_oled_dev* @usb_get_intfdata(%struct.usb_interface* %11)
  store %struct.asus_oled_dev* %12, %struct.asus_oled_dev** %8, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load %struct.asus_oled_dev*, %struct.asus_oled_dev** %8, align 8
  %15 = getelementptr inbounds %struct.asus_oled_dev, %struct.asus_oled_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @sprintf(i8* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %16)
  ret i32 %17
}

declare dso_local %struct.usb_interface* @to_usb_interface(%struct.device*) #1

declare dso_local %struct.asus_oled_dev* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
