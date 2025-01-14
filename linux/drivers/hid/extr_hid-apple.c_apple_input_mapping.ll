; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-apple.c_apple_input_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-apple.c_apple_input_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_input = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.hid_field = type { i32 }
%struct.hid_usage = type { i32 }

@HID_UP_CUSTOM = common dso_local global i32 0, align 4
@HID_UP_MSVENDOR = common dso_local global i32 0, align 4
@EV_REP = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@KEY_FN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_input*, %struct.hid_field*, %struct.hid_usage*, i64**, i32*)* @apple_input_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apple_input_mapping(%struct.hid_device* %0, %struct.hid_input* %1, %struct.hid_field* %2, %struct.hid_usage* %3, i64** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.hid_device*, align 8
  %9 = alloca %struct.hid_input*, align 8
  %10 = alloca %struct.hid_field*, align 8
  %11 = alloca %struct.hid_usage*, align 8
  %12 = alloca i64**, align 8
  %13 = alloca i32*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %8, align 8
  store %struct.hid_input* %1, %struct.hid_input** %9, align 8
  store %struct.hid_field* %2, %struct.hid_field** %10, align 8
  store %struct.hid_usage* %3, %struct.hid_usage** %11, align 8
  store i64** %4, i64*** %12, align 8
  store i32* %5, i32** %13, align 8
  %14 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %15 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @HID_UP_CUSTOM, align 4
  %18 = or i32 %17, 3
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %27, label %20

20:                                               ; preds = %6
  %21 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %22 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @HID_UP_MSVENDOR, align 4
  %25 = or i32 %24, 3
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %46

27:                                               ; preds = %20, %6
  %28 = load i32, i32* @EV_REP, align 4
  %29 = load %struct.hid_input*, %struct.hid_input** %9, align 8
  %30 = getelementptr inbounds %struct.hid_input, %struct.hid_input* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @set_bit(i32 %28, i32 %33)
  %35 = load %struct.hid_input*, %struct.hid_input** %9, align 8
  %36 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %37 = load i64**, i64*** %12, align 8
  %38 = load i32*, i32** %13, align 8
  %39 = load i32, i32* @EV_KEY, align 4
  %40 = load i32, i32* @KEY_FN, align 4
  %41 = call i32 @hid_map_usage_clear(%struct.hid_input* %35, %struct.hid_usage* %36, i64** %37, i32* %38, i32 %39, i32 %40)
  %42 = load %struct.hid_input*, %struct.hid_input** %9, align 8
  %43 = getelementptr inbounds %struct.hid_input, %struct.hid_input* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = call i32 @apple_setup_input(%struct.TYPE_2__* %44)
  store i32 1, i32* %7, align 4
  br label %47

46:                                               ; preds = %20
  store i32 0, i32* %7, align 4
  br label %47

47:                                               ; preds = %46, %27
  %48 = load i32, i32* %7, align 4
  ret i32 %48
}

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @hid_map_usage_clear(%struct.hid_input*, %struct.hid_usage*, i64**, i32*, i32, i32) #1

declare dso_local i32 @apple_setup_input(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
