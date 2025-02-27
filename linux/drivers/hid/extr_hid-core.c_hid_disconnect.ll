; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-core.c_hid_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-core.c_hid_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32, i32 (%struct.hid_device*)*, i32 }

@dev_attr_country = common dso_local global i32 0, align 4
@HID_CLAIMED_INPUT = common dso_local global i32 0, align 4
@HID_CLAIMED_HIDDEV = common dso_local global i32 0, align 4
@HID_CLAIMED_HIDRAW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hid_disconnect(%struct.hid_device* %0) #0 {
  %2 = alloca %struct.hid_device*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %2, align 8
  %3 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %4 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %3, i32 0, i32 2
  %5 = call i32 @device_remove_file(i32* %4, i32* @dev_attr_country)
  %6 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %7 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @HID_CLAIMED_INPUT, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %14 = call i32 @hidinput_disconnect(%struct.hid_device* %13)
  br label %15

15:                                               ; preds = %12, %1
  %16 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %17 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @HID_CLAIMED_HIDDEV, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %15
  %23 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %24 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %23, i32 0, i32 1
  %25 = load i32 (%struct.hid_device*)*, i32 (%struct.hid_device*)** %24, align 8
  %26 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %27 = call i32 %25(%struct.hid_device* %26)
  br label %28

28:                                               ; preds = %22, %15
  %29 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %30 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @HID_CLAIMED_HIDRAW, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %37 = call i32 @hidraw_disconnect(%struct.hid_device* %36)
  br label %38

38:                                               ; preds = %35, %28
  %39 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %40 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %39, i32 0, i32 0
  store i32 0, i32* %40, align 8
  ret void
}

declare dso_local i32 @device_remove_file(i32*, i32*) #1

declare dso_local i32 @hidinput_disconnect(%struct.hid_device*) #1

declare dso_local i32 @hidraw_disconnect(%struct.hid_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
