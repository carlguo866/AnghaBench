; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_hid.c_gb_hid_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_hid.c_gb_hid_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { %struct.gb_hid* }
%struct.gb_hid = type { i32 }

@GB_HID_TYPE_PWR_ON = common dso_local global i32 0, align 4
@GB_HID_TYPE_PWR_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, i32)* @gb_hid_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_hid_power(%struct.hid_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gb_hid*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %8 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %7, i32 0, i32 0
  %9 = load %struct.gb_hid*, %struct.gb_hid** %8, align 8
  store %struct.gb_hid* %9, %struct.gb_hid** %6, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %19 [
    i32 129, label %11
    i32 128, label %15
  ]

11:                                               ; preds = %2
  %12 = load %struct.gb_hid*, %struct.gb_hid** %6, align 8
  %13 = load i32, i32* @GB_HID_TYPE_PWR_ON, align 4
  %14 = call i32 @gb_hid_set_power(%struct.gb_hid* %12, i32 %13)
  store i32 %14, i32* %3, align 4
  br label %20

15:                                               ; preds = %2
  %16 = load %struct.gb_hid*, %struct.gb_hid** %6, align 8
  %17 = load i32, i32* @GB_HID_TYPE_PWR_OFF, align 4
  %18 = call i32 @gb_hid_set_power(%struct.gb_hid* %16, i32 %17)
  store i32 %18, i32* %3, align 4
  br label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %19, %15, %11
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local i32 @gb_hid_set_power(%struct.gb_hid*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
