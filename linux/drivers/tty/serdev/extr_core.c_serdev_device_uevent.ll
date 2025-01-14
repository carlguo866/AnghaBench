; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serdev/extr_core.c_serdev_device_uevent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serdev/extr_core.c_serdev_device_uevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.kobj_uevent_env = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.kobj_uevent_env*)* @serdev_device_uevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serdev_device_uevent(%struct.device* %0, %struct.kobj_uevent_env* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.kobj_uevent_env*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.kobj_uevent_env* %1, %struct.kobj_uevent_env** %5, align 8
  %7 = load %struct.device*, %struct.device** %4, align 8
  %8 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %9 = call i32 @acpi_device_uevent_modalias(%struct.device* %7, %struct.kobj_uevent_env* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @ENODEV, align 4
  %12 = sub nsw i32 0, %11
  %13 = icmp ne i32 %10, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %20

16:                                               ; preds = %2
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %19 = call i32 @of_device_uevent_modalias(%struct.device* %17, %struct.kobj_uevent_env* %18)
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %16, %14
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local i32 @acpi_device_uevent_modalias(%struct.device*, %struct.kobj_uevent_env*) #1

declare dso_local i32 @of_device_uevent_modalias(%struct.device*, %struct.kobj_uevent_env*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
