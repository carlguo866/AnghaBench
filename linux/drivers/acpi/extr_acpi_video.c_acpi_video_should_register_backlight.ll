; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_video.c_acpi_video_should_register_backlight.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_video.c_acpi_video_should_register_backlight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_video_device = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"not in _DOD list, ignore\0A\00", align 1
@only_lcd = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_video_device*)* @acpi_video_should_register_backlight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_video_should_register_backlight(%struct.acpi_video_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_video_device*, align 8
  store %struct.acpi_video_device* %0, %struct.acpi_video_device** %3, align 8
  %4 = load %struct.acpi_video_device*, %struct.acpi_video_device** %3, align 8
  %5 = call i32 @acpi_video_device_in_dod(%struct.acpi_video_device* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = load %struct.acpi_video_device*, %struct.acpi_video_device** %3, align 8
  %9 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = call i32 @dev_dbg(i32* %11, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %22

13:                                               ; preds = %1
  %14 = load i64, i64* @only_lcd, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load %struct.acpi_video_device*, %struct.acpi_video_device** %3, align 8
  %18 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %2, align 4
  br label %22

21:                                               ; preds = %13
  store i32 1, i32* %2, align 4
  br label %22

22:                                               ; preds = %21, %16, %7
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @acpi_video_device_in_dod(%struct.acpi_video_device*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
