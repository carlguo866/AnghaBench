; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/intel/extr_intel_pch_thermal.c_pch_get_trip_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/intel/extr_intel_pch_thermal.c_pch_get_trip_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_zone_device = type { %struct.pch_thermal_device* }
%struct.pch_thermal_device = type { i32, i32, i32 }

@THERMAL_TRIP_CRITICAL = common dso_local global i32 0, align 4
@THERMAL_TRIP_HOT = common dso_local global i32 0, align 4
@THERMAL_TRIP_PASSIVE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thermal_zone_device*, i32, i32*)* @pch_get_trip_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pch_get_trip_type(%struct.thermal_zone_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.thermal_zone_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.pch_thermal_device*, align 8
  store %struct.thermal_zone_device* %0, %struct.thermal_zone_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %5, align 8
  %10 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %9, i32 0, i32 0
  %11 = load %struct.pch_thermal_device*, %struct.pch_thermal_device** %10, align 8
  store %struct.pch_thermal_device* %11, %struct.pch_thermal_device** %8, align 8
  %12 = load %struct.pch_thermal_device*, %struct.pch_thermal_device** %8, align 8
  %13 = getelementptr inbounds %struct.pch_thermal_device, %struct.pch_thermal_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @THERMAL_TRIP_CRITICAL, align 4
  %19 = load i32*, i32** %7, align 8
  store i32 %18, i32* %19, align 4
  br label %43

20:                                               ; preds = %3
  %21 = load %struct.pch_thermal_device*, %struct.pch_thermal_device** %8, align 8
  %22 = getelementptr inbounds %struct.pch_thermal_device, %struct.pch_thermal_device* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i32, i32* @THERMAL_TRIP_HOT, align 4
  %28 = load i32*, i32** %7, align 8
  store i32 %27, i32* %28, align 4
  br label %42

29:                                               ; preds = %20
  %30 = load %struct.pch_thermal_device*, %struct.pch_thermal_device** %8, align 8
  %31 = getelementptr inbounds %struct.pch_thermal_device, %struct.pch_thermal_device* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32, i32* @THERMAL_TRIP_PASSIVE, align 4
  %37 = load i32*, i32** %7, align 8
  store i32 %36, i32* %37, align 4
  br label %41

38:                                               ; preds = %29
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %44

41:                                               ; preds = %35
  br label %42

42:                                               ; preds = %41, %26
  br label %43

43:                                               ; preds = %42, %17
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %43, %38
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
