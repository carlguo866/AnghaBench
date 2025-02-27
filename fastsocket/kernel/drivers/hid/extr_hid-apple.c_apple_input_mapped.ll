; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-apple.c_apple_input_mapped.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-apple.c_apple_input_mapped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_input = type { i32 }
%struct.hid_field = type { i32 }
%struct.hid_usage = type { i64, i64 }
%struct.apple_sc = type { i32 }

@APPLE_MIGHTYMOUSE = common dso_local global i32 0, align 4
@HID_GD_Z = common dso_local global i64 0, align 8
@EV_REL = common dso_local global i32 0, align 4
@REL_HWHEEL = common dso_local global i64 0, align 8
@BTN_1 = common dso_local global i64 0, align 8
@EV_KEY = common dso_local global i32 0, align 4
@BTN_2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_input*, %struct.hid_field*, %struct.hid_usage*, i64**, i32*)* @apple_input_mapped to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apple_input_mapped(%struct.hid_device* %0, %struct.hid_input* %1, %struct.hid_field* %2, %struct.hid_usage* %3, i64** %4, i32* %5) #0 {
  %7 = alloca %struct.hid_device*, align 8
  %8 = alloca %struct.hid_input*, align 8
  %9 = alloca %struct.hid_field*, align 8
  %10 = alloca %struct.hid_usage*, align 8
  %11 = alloca i64**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.apple_sc*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %7, align 8
  store %struct.hid_input* %1, %struct.hid_input** %8, align 8
  store %struct.hid_field* %2, %struct.hid_field** %9, align 8
  store %struct.hid_usage* %3, %struct.hid_usage** %10, align 8
  store i64** %4, i64*** %11, align 8
  store i32* %5, i32** %12, align 8
  %14 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %15 = call %struct.apple_sc* @hid_get_drvdata(%struct.hid_device* %14)
  store %struct.apple_sc* %15, %struct.apple_sc** %13, align 8
  %16 = load %struct.apple_sc*, %struct.apple_sc** %13, align 8
  %17 = getelementptr inbounds %struct.apple_sc, %struct.apple_sc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @APPLE_MIGHTYMOUSE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %67

22:                                               ; preds = %6
  %23 = load %struct.hid_usage*, %struct.hid_usage** %10, align 8
  %24 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @HID_GD_Z, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %22
  %29 = load %struct.hid_input*, %struct.hid_input** %8, align 8
  %30 = load %struct.hid_usage*, %struct.hid_usage** %10, align 8
  %31 = load i64**, i64*** %11, align 8
  %32 = load i32*, i32** %12, align 8
  %33 = load i32, i32* @EV_REL, align 4
  %34 = load i64, i64* @REL_HWHEEL, align 8
  %35 = call i32 @hid_map_usage(%struct.hid_input* %29, %struct.hid_usage* %30, i64** %31, i32* %32, i32 %33, i64 %34)
  br label %66

36:                                               ; preds = %22
  %37 = load %struct.hid_usage*, %struct.hid_usage** %10, align 8
  %38 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @BTN_1, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %36
  %43 = load %struct.hid_input*, %struct.hid_input** %8, align 8
  %44 = load %struct.hid_usage*, %struct.hid_usage** %10, align 8
  %45 = load i64**, i64*** %11, align 8
  %46 = load i32*, i32** %12, align 8
  %47 = load i32, i32* @EV_KEY, align 4
  %48 = load i64, i64* @BTN_2, align 8
  %49 = call i32 @hid_map_usage(%struct.hid_input* %43, %struct.hid_usage* %44, i64** %45, i32* %46, i32 %47, i64 %48)
  br label %65

50:                                               ; preds = %36
  %51 = load %struct.hid_usage*, %struct.hid_usage** %10, align 8
  %52 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @BTN_2, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %50
  %57 = load %struct.hid_input*, %struct.hid_input** %8, align 8
  %58 = load %struct.hid_usage*, %struct.hid_usage** %10, align 8
  %59 = load i64**, i64*** %11, align 8
  %60 = load i32*, i32** %12, align 8
  %61 = load i32, i32* @EV_KEY, align 4
  %62 = load i64, i64* @BTN_1, align 8
  %63 = call i32 @hid_map_usage(%struct.hid_input* %57, %struct.hid_usage* %58, i64** %59, i32* %60, i32 %61, i64 %62)
  br label %64

64:                                               ; preds = %56, %50
  br label %65

65:                                               ; preds = %64, %42
  br label %66

66:                                               ; preds = %65, %28
  br label %67

67:                                               ; preds = %66, %6
  ret i32 0
}

declare dso_local %struct.apple_sc* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @hid_map_usage(%struct.hid_input*, %struct.hid_usage*, i64**, i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
