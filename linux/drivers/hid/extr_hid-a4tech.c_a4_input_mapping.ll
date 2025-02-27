; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-a4tech.c_a4_input_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-a4tech.c_a4_input_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_input = type { i32 }
%struct.hid_field = type { i32 }
%struct.hid_usage = type { i64 }
%struct.a4tech_sc = type { i32 }

@A4_2WHEEL_MOUSE_HACK_B8 = common dso_local global i32 0, align 4
@A4_WHEEL_ORIENTATION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_input*, %struct.hid_field*, %struct.hid_usage*, i64**, i32*)* @a4_input_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a4_input_mapping(%struct.hid_device* %0, %struct.hid_input* %1, %struct.hid_field* %2, %struct.hid_usage* %3, i64** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.hid_device*, align 8
  %9 = alloca %struct.hid_input*, align 8
  %10 = alloca %struct.hid_field*, align 8
  %11 = alloca %struct.hid_usage*, align 8
  %12 = alloca i64**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.a4tech_sc*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %8, align 8
  store %struct.hid_input* %1, %struct.hid_input** %9, align 8
  store %struct.hid_field* %2, %struct.hid_field** %10, align 8
  store %struct.hid_usage* %3, %struct.hid_usage** %11, align 8
  store i64** %4, i64*** %12, align 8
  store i32* %5, i32** %13, align 8
  %15 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %16 = call %struct.a4tech_sc* @hid_get_drvdata(%struct.hid_device* %15)
  store %struct.a4tech_sc* %16, %struct.a4tech_sc** %14, align 8
  %17 = load %struct.a4tech_sc*, %struct.a4tech_sc** %14, align 8
  %18 = getelementptr inbounds %struct.a4tech_sc, %struct.a4tech_sc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @A4_2WHEEL_MOUSE_HACK_B8, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %6
  %24 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %25 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @A4_WHEEL_ORIENTATION, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 -1, i32* %7, align 4
  br label %31

30:                                               ; preds = %23, %6
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %30, %29
  %32 = load i32, i32* %7, align 4
  ret i32 %32
}

declare dso_local %struct.a4tech_sc* @hid_get_drvdata(%struct.hid_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
